# coding: utf-8

require 'fileutils'
require 'pathname'

require 'hiyoko/tmpl/app-delegate-swift'
require 'hiyoko/tmpl/info-plist'
require 'hiyoko/tmpl/launch-screen-storyboad'
require 'hiyoko/tmpl/main-storyboard'
require 'hiyoko/tmpl/contents-json'
require 'hiyoko/tmpl/project-pbxproj'
require 'hiyoko/tmpl/contents-xcworkspacedata'
require 'hiyoko/tmpl/xcscheme'
require 'hiyoko/tmpl/xcschememanagement-plist'

class ProjGenerator
  def initialize(project_name)
    @project_name = project_name
    project_path = Pathname.new(project_name)
  end

  def create_dir()
    project_path = Pathname.new(@project_name)
    puts "create #{@project_name} directory"
    FileUtils.mkdir_p project_path.join(@project_name)
                                   .join('Assets.xcassets')
                                   .join('AppIcon.appiconset')
    FileUtils.mkdir_p project_path.join(@project_name)
                                   .join('Base.lproj')
                                   .join('AppIcon.appiconset')

    puts "create #{@project_name}.xcodeproj directory"
    xcodeproj_path = project_path.join(@project_name+'.xcodeproj')
    FileUtils.mkdir_p xcodeproj_path.join('project.xcworkspace')
                                    .join('xcuserdata')
    FileUtils.mkdir_p xcodeproj_path.join('xcuserdata')
                                    .join(@project_name+".xcuserdatad")
                                    .join('xcschemes')
  end

  def create_files(entries)
    project_path = Pathname.new(@project_name)
    #
    # in [project_name]
    #
    # AppDelegate.swift
    app_delegate_path = project_path.join(@project_name).join('AppDelegate.swift')
    puts "  generate #{app_delegate_path}"
    File.write(app_delegate_path, AppDelegateSwift.generate(@project_name))
    
    # ViewController.swift and the other
    entries.each do |filename, contents|
      tmp_file_path = project_path.join(@project_name).join(filename)
      puts "  generate #{tmp_file_path}"
      File.write(tmp_file_path, contents)
    end
    
    # Info.plist
    info_plist_path = project_path.join(@project_name).join('Info.plist')
    puts "  generate #{info_plist_path}"
    File.write(info_plist_path, InfoPlist.generate(@project_name))
    
    # LaunchScreen.storyboard
    launch_screen_storyboard_path = project_path.join(@project_name).join('Base.lproj').join('LaunchScreen.storyboard')
    puts "  generate #{launch_screen_storyboard_path}"
    File.write(launch_screen_storyboard_path, LaunchScreen.generate(@project_name))
    
    # Main.storyboard
    main_storyboard_path = project_path.join(@project_name).join('Base.lproj').join('Main.storyboard')
    puts "  generate #{main_storyboard_path}"
    File.write(main_storyboard_path, MainStoryboard.generate(@project_name))

    # Contents.json
    contents_json_path = project_path.join(@project_name).join('Assets.xcassets').join('AppIcon.appiconset').join('Contents.json')
    puts "  generate #{contents_json_path}"
    File.write(contents_json_path, ContetnsJson.generate(@project_name))
    
    #
    # in [project_name]/[project_name].xcodeproj
    #
    # project.pbxproj
    project_pbxproj_path = project_path.join(@project_name+'.xcodeproj').join('project.pbxproj')
    puts "  generate #{project_pbxproj_path}"
    File.write(project_pbxproj_path, ProjectPbxproj.generate(@project_name))
    
    # contents.xcworkspacedata
    contents_xcworkspacedata_path =  project_path.join(@project_name+'.xcodeproj').join('project.xcworkspace').join('contents.xcworkspacedata')
    puts "  generate #{contents_xcworkspacedata_path}"
    File.write(contents_xcworkspacedata_path, ContentsXcworkspace.generate(@project_name))
    
    # [project_name].xcscheme
    xcscheme_path =  project_path.join(@project_name+'.xcodeproj').join('xcuserdata').join(@project_name+'.xcuserdatad').join('xcschemes').join(@project_name+'.xcscheme')
    puts "  generate #{xcscheme_path}"
    File.write(xcscheme_path, Xcscheme.generate(@project_name))
    
    # xcschememanagement.plist
    xcschememanagement_plist_path = project_path.join(@project_name+'.xcodeproj').join('xcuserdata').join(@project_name+'.xcuserdatad').join('xcschemes').join('xcschememanagement.plist')
    puts "  generate #{xcschememanagement_plist_path}"
    File.write(xcschememanagement_plist_path, XcschememanagementPlist.generate(@project_name))
  end
end
