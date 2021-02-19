class NationalParkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :established, :description, :nearest_city, :image_url, :country_id, :country
end
