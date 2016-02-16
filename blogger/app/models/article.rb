class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true

	has_many :taggings
	has_many :tags, through: :taggings

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
