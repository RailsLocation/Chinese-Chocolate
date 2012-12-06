class Project < ActiveRecord::Base
  	attr_accessible :description, :name
  	validates :name,	:presence => true,:length => {:maximum => 20 }
	validates :description, :presence => true

  	has_many :developers
end
