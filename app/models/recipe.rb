class Recipe < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_many :tags
  has_many :ingredients, through: :tags

  default_scope { order(name: :asc) }

end

