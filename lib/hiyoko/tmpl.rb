# coding: utf-8

require 'erb'

class Tmpl
  class Project
    attr_accessor :project_name
    
    def instance_binding
      binding
    end
  end
  
  def self.generate(project_name)
    proj = Project.new
    proj.project_name = project_name
    
    erb = ERB.new(@code)
    erb.result(proj.instance_binding)
    
  end
end
