# coding: utf-8

require 'active_record'

class Lessons < ActiveRecord::Base
  def self.setup_lessons(entries)
    entries.each do |entry|
      self.create!(
        chap_number:  entry['chap_number'], 
        chap:         entry['chap'], 
        topic_number: entry['topic_number'], 
        topic:        entry['topic'], 
        url:          entry['url'], 
        status:       0, 
      )
    end
  end
  
end
