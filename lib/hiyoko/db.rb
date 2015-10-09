# coding: utf-8

require 'fileutils'
require 'active_record'

class DB
  @@database_path = File.join(ENV['HOME'], '.hiyoko', 'hiyoko.sqlite3')
  
  # init DB 
  def self.prepare
    connect_database @@database_path
    create_table_if_not_exists @@database_path
  end

  # connect DB handler
  def self.connect_database(path)
    spec = {adapter: 'sqlite3', database: path}
    ActiveRecord::Base.establish_connection spec
  end
  
  # setup table
  def self.create_table_if_not_exists(path)
    create_database_path path
    connection = ActiveRecord::Base.connection
    return if connection.table_exists?(:lessons)

    connection.create_table :lessons do |t|
      t.column :chap,        :text,                 null: false
      t.column :chap_number, :string,               null: false
      t.column :topic,       :text,                 null: false
      t.column :topic_number,:string,               null: false
      t.column :status,      :integer,  default: 0, null: false
      t.column :url,         :text,                 null: false
      t.timestamps                                  null: false
    end
  end

  # path to DB
  def self.create_database_path(path)
    FileUtils.mkdir_p File.dirname(path)
  end
end
