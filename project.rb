require 'dmconfig'

class Project
  include DataMapper::Resource
  property :id,         Serial
  property :title,      String

  #has n,                :tasks

  validates_presence_of :title
end

DataMapper.auto_upgrade!
DataMapper.finalize
