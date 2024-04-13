class Post < ApplicationRecord
    validates_presence_of :tile
    has_rich_text :content
    has_many :comments, dependent: :destroy
end
