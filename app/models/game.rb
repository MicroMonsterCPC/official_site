class Game < ApplicationRecord
  mount_uploader :banner_url, ImageUploader
  has_many :game_scores
end
