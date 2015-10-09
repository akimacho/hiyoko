# coding: utf-8

require 'open-uri'
require 'nokogiri'
require 'kconv'
require 'pp'

class Scraper
  def initialize(url)
    @url = url
  end
  
  def getUrl()
    @url
  end
  
  def getCodes()
    @codes
  end

  def getEntries()
    @entries
  end
  
  def getTitle()
    @title
  end

  # scrape list
  def scrapeList()
    # retrieve html contents
    url = 'https://sites.google.com/a/gclue.jp/swift-docs/ni-yinki100-ios'
    begin 
      html_entry = open(url)
    rescue 
      puts "error in open-uri ... retry"
      exit
    end
    
    doc = Nokogiri::HTML(html_entry, nil, 'UTF-8')
    
    @entries = []
    tmp_entry = {}
    tmp_chap = ''
    tmp_chap_number = ''
    tmp_title = ''
    tmp_title_number = ''
    
    # scrape items in <li>
    doc.css('ul.has-expander a.sites-navigation-link').each do |node|
      # retrieve chapter
      if /^(\d{2,2})\. (.*)/ =~ node.text then
        if $1 != '00' then
          tmp_chap_number = $1
          tmp_chap = $2
        end
      # retrieve topic
      elsif /^(\d{3,3}) (.*)/ =~ node.text then
        base_url = "https://sites.google.com"
        tmp_url = base_url + node['href']
        tmp_title_number = $1
        tmp_title = $2
      
        tmp_entry = {
          "chap"         => tmp_chap, 
          "chap_number"  => tmp_chap_number, 
          "topic"        => tmp_title, 
          "topic_number" => tmp_title_number, 
          "url"          => tmp_url
        }
        @entries << tmp_entry
      end
    end
  end
  
  def scrapeTitle(url)
    # retrieve html contents
    begin 
      html_entry = open(url)
    rescue 
      puts "error in open-uri ... retry"
      exit
    end
    doc = Nokogiri::HTML(html_entry, nil, "UTF-8")
    
    chap_number = ''
    doc.css('div#title-crumbs > a').each do |node|
      if /(\d{2,2})\..*/ =~ node.text then
        chap_number = $1
      end
    end
    topic_number = ''
    doc.css('span#sites-page-title').each do |node|
      if /(\d{3,3})/ =~ node.text then
        topic_number = $1
      end
    end
    @title = chap_number + '-' + topic_number
    return @title
  end
  
  # scrape code
  def scrapeCode(url)
    # retrieve html contents
    begin 
      html_entry = open(url)
    rescue 
      puts "error in open-uri ... retry"
      exit
    end
    
    doc = Nokogiri::HTML(html_entry, nil, "UTF-8")
    @codes = []
    # scraping some h3 
    filenames = []
    doc.css('h3').each do |header|
      if /.*\.(swift|php)/ =~ header.text then
        filenames << header.text
      end
    end
    
    # scraping contents
    contents = []
    doc.css('div.sites-codeblock').each do |code|
        tmp_code = ''
        code.css('p').each do |line|
          text      = line.text.toutf8 + "\n"
          tmp_code += text.gsub(/ /, ' ') # temporary deal of error by the invisible character ' '
        end
        contents << tmp_code
    end
    
    # generate Hash from twi arrays
    @codes = Hash[*filenames.zip(contents).flatten]
  end
  
  ## write some codes
  def write()
    @codes.each do |filename, contents|
      File.write(filename, contents)
    end
  end
  
  ## display code
  def display()
    @codes.each do |filename, contents|
      puts "filename : " + filename
      puts "code : "
      puts contents
    end
  end
end
