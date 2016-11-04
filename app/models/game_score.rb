class GameScore < ApplicationRecord
  belongs_to :score
  belongs_to :game
end
