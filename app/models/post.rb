class Post < ApplicationRecord
    has_many :comments, :dependent => :destroy
    has_many :users , through: :comments
    # belongs_to :author , :class_name => "User" , :foreign_key => 'user_id' 
    belongs_to :user
end
