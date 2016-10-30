json.extract! game, :id, :title, :create_team, :bio, :like, :created_at, :updated_at
json.url game_url(game, format: :json)