json.extract! user, :id, :email_address, :password, :first_name, :second_name, :dob, :profile_picture, :created_at, :updated_at
json.url user_url(user, format: :json)
