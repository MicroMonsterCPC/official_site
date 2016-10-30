class Game < ApplicationRecord
  mount_uploader :banner_url, ImageUploader
end
