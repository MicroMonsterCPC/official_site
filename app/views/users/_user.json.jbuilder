json.extract! user, :id, :mail, :password, :password_confirmation, :administrator, :created_at, :updated_at
json.url user_url(user, format: :json)
