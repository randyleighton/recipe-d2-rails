class Ingredient < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  has_many :tags
  has_many :recipes, through: :tags

  default_scope { order(name: :asc) }
end
