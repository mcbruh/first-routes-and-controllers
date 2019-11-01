class Comment < ApplicationRecord

    belong_to :author, class_name: 'User', foreign_key: :user_id
    belong_to :artwork

end