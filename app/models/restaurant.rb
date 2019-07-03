class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: Nationality::Nationality.default_option('filipino').map(&:downcase) }
  has_many :reviews, dependent: :destroy
end
