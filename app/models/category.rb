class Category < ApplicationRecord
  validates :name, presence: true
  validates :slug, uniqueness: true, allow_nil: true

  before_save :generate_slug

  has_many :subcategories, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category", optional: true

  private

  def generate_slug
    self.slug = name.parameterize if name.present? && slug.blank?
  end
end
