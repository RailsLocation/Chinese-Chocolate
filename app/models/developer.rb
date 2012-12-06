class Developer < ActiveRecord::Base
  attr_accessible :address, :name, :post
  	validates :name,	:presence => true,:length => {:maximum => 20 }
	validates :address, :presence => true
	validates :post,	:presence => true

  belongs_to :project
end
