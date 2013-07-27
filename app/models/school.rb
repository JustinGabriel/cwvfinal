class School < ActiveRecord::Base
  attr_accessible :college, :date, :major, :student
    belongs_to :user
    
    validates :user_id, presence: true
    
    default_scope order: 'schools.created_at DESC'
end
