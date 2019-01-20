json.extract! user_input, :id, :input_x, :input_y, :created_at, :updated_at
json.url user_input_url(user_input, format: :json)
