class CountrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :language, :continent 
end
