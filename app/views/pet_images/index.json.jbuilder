json.array!(@pet_images) do |pet_image|
  json.extract! pet_image, :id
  json.url pet_image_url(pet_image, format: :json)
end
