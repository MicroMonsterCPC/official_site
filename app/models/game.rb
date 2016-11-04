class Game < ApplicationRecord
  mount_uploader :banner_url, ImageUploader
  has_many :game_scores

  def join_people
    self.game_scores.count
  end

end
