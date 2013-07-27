class List < ActiveRecord::Base
  attr_accessible :id, :name
    belongs_to :user
    
end
