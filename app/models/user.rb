class User < ActiveRecord::Base
    attr_accessible :name, :email, :password, :password_confirmation, :industry, :about, :location, :status, :id, :network, :facebook, :twitter, :pinterest, :linkedin, :headline, :dob, :phone, :website
    has_secure_password
    has_private_messages
    has_many :bookmarks, foreign_key: "bookmarker_id", dependent: :destroy
    has_many :bookmarked_users, through: :bookmarks, source: :bookmarked
    has_many :microposts, dependent: :destroy
<<<<<<< HEAD
    has_many :schools, dependent: :destroy
    has_many :relationships, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :relationships, source: :followed
    has_many :reverse_relationships, foreign_key: "followed_id",
    class_name: "Relationship",
    dependent: :destroy
    has_many :followers, through: :reverse_relationships, source: :follower
    has_many :reverse_bookmarks, foreign_key: "bookmarked_id",
    class_name:  "Bookmark",
    dependent:   :destroy
    has_many :bookmarkers, through: :reverse_bookmarks, source: :bookmarker
=======
    has_many :bookmarks, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :bookmarks, source: :followed
    has_many :reverse_bookmarks, foreign_key: "followed_id",
    class_name: "Bookmark",
    dependent: :destroy
    has_many :followers, through: :reverse_bookmarks, source: :follower
    
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
    before_save { |user| user.email = user.email.downcase }
    before_save :create_remember_token
    
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
    validates :password, length: { minimum: 6 }, :on => :create
    validates :password_confirmation, presence: true, :on => :create
    


    def following?(other_user)
<<<<<<< HEAD
        relationships.find_by_followed_id(other_user.id)
     end
    
    def bookmarking?(other_user)
        bookmarks.find_by_bookmarked_id(other_user.id)
        
    end
    
    def follow!(other_user)
        relationships.create!(followed_id: other_user.id)
       
=======
        bookmarks.find_by_followed_id(other_user.id)
    end
    
    def follow!(other_user)
        bookmarks.create!(followed_id: other_user.id)
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
    end
    def bookmark!(other_user)
        bookmarks.create!(bookmarked_id: other_user.id)
        
    end

    def unfollow!(other_user)
<<<<<<< HEAD
        relationships.find_by_followed_id(other_user.id).destroy
       
=======
        bookmarks.find_by_followed_id(other_user.id).destroy
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
    end
    def unbookmark!(other_user)
        bookmarks.find_by_bookmarked_id(other_user.id).destroy
        
    end

    
    def feed
        Micropost.from_users_followed_by(self)
    end
    
    def usernet
        Micropost.from_network_joined_by(self)
    end
    
    def connected
        User.from_connected_joined_by(self)
    end
    def self.from_connected_joined_by(user)
    where("network = ?", user.network) 
end

def similar
    User.from_similar_joined_by(self)
end
def self.from_similar_joined_by(user)
where("network = ? AND industry = ? AND id != ?", user.network, user.industry, user.id)
end


    private
    
    def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
    end
end