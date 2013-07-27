class Bookmark < ActiveRecord::Base
    attr_accessible :bookmarked_id, :bookmarker_id
    
    belongs_to :bookmarker, class_name: "User"
    belongs_to :bookmarked, class_name: "User"
    
    validates :bookmarker_id, presence: true
    validates :bookmarked_id, presence: true
end
