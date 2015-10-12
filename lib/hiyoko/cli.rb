# coding: utf-8

require 'thor'
require 'hiyoko/scraper'
require 'hiyoko/db'
require 'hiyoko/lessons'
require 'hiyoko/proj-generator'
require 'hiyoko/viewer'
require 'pp'

module Hiyoko
  class CLI < Thor

    desc "prepare", "setup lessons"
    def prepare()
      if DB.prepare() != nil then
        url = "https://sites.google.com/a/gclue.jp/swift-docs/ni-yinki100-ios"
        scraper = Scraper.new(url)
        scraper.scrapeList()
        entries = scraper.getEntries()

        entries = scraper.getEntries()
        Lessons.setup_lessons(entries)
        
        puts "All set. Let's fly!"
      else 
        lessons = Lessons.all
        if lessons.empty? then
          puts "not yet initilalized!"
          puts "Please execute the following command: "
          puts "hiyoko prepare"
        else 
          puts "Already set. Let's fly!"
        end
      end
    end
    
    option :chap, type: :string, alias: '-c', desc: 'show progress selected by chapter'
    option :chap_num, type: :string, alias: '-n', desc: 'show progress selected by chapter number'
    option :shincyoku, type: :boolean, alias: '-c', desc: 'show progress by percentage'
    desc "progress", "show your progress"
    def progress()
      if DB.prepare() != nil then
        puts "not yet initilalized!"
        puts "please execute the following command: "
        puts "hiyoko prepare"
        exit
      end
      
      lessons = Lessons.all
      if lessons.empty? then
        puts "not yet initilalized!"
        puts "please execute the following command: "
        puts "hiyoko prepare"
      else 
        if options[:chap] then
          lessons = Lessons.where("chap = :chap", chap: options[:chap])
          Viewer.showProgress(lessons)
          
        elsif options[:chap_num] then
          lessons = Lessons.where("chap_number = :chap_num", chap_num: options[:chap_num])
          Viewer.showProgress(lessons)
          
        elsif options[:shincyoku] then
          total = lessons.count
          complete_num = lessons.where('status = :status', status: 1).count
          progress_percentage = complete_num.to_f / total.to_f * 100.0
          
          puts "your progress: " +  progress_percentage.to_d.floor(2).to_s + ' % '
        else
          Viewer.showProgress(lessons)
        end
      end
    end
    
    option :url, type: :string, alias: '-u', desc: 'setup by url'
    option :target, type: :string, alias: '-t', desc: 'setup by [chap number]-[topic number]'
    option :swift2, type: :boolean, alias: '-s', desc: 'replace println with print'
    desc "generate", "setup xcode project"
    def generate()
      if DB.prepare() != nil then
        puts "not yet initilalized!"
        puts "please execute the following command: "
        puts "hiyoko prepare"
        exit
      end
      
      lessons = Lessons.all
      if lessons.empty? then
        puts "not yet initilalized!"
        puts "hiyoko prepare"
      end
      
      if options[:url] then
        url = options[:url]
        scraper = Scraper.new(url)
        
        if options[:swift2] then
          scraper.scrapeCodeForSwift2(url)
        else 
          scraper.scrapeCode(url)
        end
        
        scraper.scrapeTitle(url)
        project_name = scraper.getTitle()
        
        proj_generator = ProjGenerator.new(project_name)
        proj_generator.create_dir()
        proj_generator.create_files(scraper.getCodes())

        lesson = Lessons.where("url = :url", url: url)
        lesson.first.status = 1
        lesson.first.save
        
        puts 'Complete!'
      elsif options[:target] then
        if /(\d{2,2})-(\d{3,3})/ =~ options[:target] then
          chap_number  = $1
          topic_number = $2

          lesson = Lessons.where("chap_number = :chap_number", chap_number: chap_number)
                          .where("topic_number = :topic_number", topic_number: topic_number)
          url = lesson.first.url
          scraper = Scraper.new(url)
          scraper.scrapeCode(url)
          proj_generator = ProjGenerator.new(options[:target])
          proj_generator.create_dir()
          proj_generator.create_files(scraper.getCodes())
          
          lesson.first.status = 1
          lesson.first.save
          
          puts 'Complete!'
        end
      else 
        exit
      end
    end
  end
end

