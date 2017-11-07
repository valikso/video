class Movie < ApplicationRecord
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	has_many :comments, dependent: :destroy
	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
	validates [:title,:description, :author, :country, :year ] presence:   true

	def all_tags
		self.tags.map(&:name).join(', ')
	end

	def all_tags=(names)
		self.tags = names.split(',').map do |name|
			Tag.where(name: name.strip).first_or_create!
	end
end
end
