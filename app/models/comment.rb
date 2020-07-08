class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    # validates_presence_of :user_id
    # validates_length_of :name, :within => 2..20
    # validates_presence_of :comment_body
end
