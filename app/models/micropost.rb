class Micropost < ActiveRecord::Base
<<<<<<< HEAD
   
    attr_accessible :content, :network
=======
  attr_accessible :author, :content
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
    belongs_to :user
    validates :user_id, presence: true
<<<<<<< HEAD
    validates :content, presence: true, length: { maximum: 1000 }
    scope :usernet, -> { where network: feed_item.network }
=======
    validates :content, presence: true
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
    
    default_scope order: 'microposts.created_at DESC'
    
    def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
    WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
    user_id: user.id)
end
<<<<<<< HEAD
def self.from_network_joined_by(user)
followed_user_network = user.network
where("network = ?", user.network)
end

end
=======
end
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
