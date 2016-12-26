class Article < ApplicationRecord
  validates :title, :body, presence: true
  has_attached_file :image, styles: { large: "800x800>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
