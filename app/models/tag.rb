class Tag < ApplicationRecord
  has_many :taggings
  has_many :movies, through: :taggings



  def self.counts
    self.select("name, count(taggings.tag.id) as count").joins(:taggings).group("taggings.tag.id")
  end
end
