class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies

  validates :name, uniqueness: true, presence: true
end
