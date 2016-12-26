class Article < ApplicationRecord
  mount_uploader :image, ArticleImageUploader
  validates :title, :body, presence: true
end
