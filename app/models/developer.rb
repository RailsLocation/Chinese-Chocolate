class Developer < ActiveRecord::Base
  attr_accessible :address, :name, :post
  belongs_to :project
end
