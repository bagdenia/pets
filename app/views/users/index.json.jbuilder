json.array!(@users) do |user|
  json.extract! user, :id, :email, :lat, :lng
  # json.url pet_url(pet, format: :json)
  json.pets user.pets do |pet|
    json.extract! pet, :id
    json.image pet.images.first.image.url
  end
  # json.partial! 'users/balloon.html.slim',
  #                     user: user
  json.balloon raw render partial: 'balloon.html',
                      locals: {user: user}
  # json.html raw "<b>ad</b>".html_safe
end
