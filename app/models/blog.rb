# This class represent a blog
class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  has_rich_text :content
end
