class Category < ApplicationRecord
  validates :name, presence: true
  validates :slug, uniqueness: true, allow_nil: true

  before_save :generate_slug

  private

  def generate_slug
    self.slug = name.parameterize if name.present? && slug.blank?
  end
end
