class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  # validates :movie_id, uniqueness: true
  # validates :list_id, uniqueness: true
  validates_uniqueness_of :movie_id,  scope: :list_id
end
