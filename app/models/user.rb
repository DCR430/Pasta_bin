class User < ApplicationRecord
    has_many :comments
    has_many :posts , through: :comments
    has_many :followings
    has_many :written_posts , :class_name => "Post", :foreign_key => 'user_id'

    validates :password, presence: true
    validates :username, uniqueness: true

    has_secure_password
    # def password=(secret)

    #     hashed_pass = BCrypt::Password.create(secret)
    #     self.password_digest = hashed_pass
        
    # end

    # def password

    # end

end
