class Post < ApplicationRecord
 belongs_to :user

 validates :training_name, :detail, presence: true
end
