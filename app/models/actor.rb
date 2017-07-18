class Actor < ActiveRecord::Base
  
  has_many :crimes

  has_many :roles

end
