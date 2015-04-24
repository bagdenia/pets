json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :kind, :gender
  json.url pet_url(pet, format: :json)
end
