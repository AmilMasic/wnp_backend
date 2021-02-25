# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.destroy_all
NationalPark.destroy_all


country_list = [
  [ 'Algeria', 'Arabian', 'Africa'],
  [ 'India', 'Hindi', 'Asia'],
  [ 'Bosnia', 'Bosnian', 'Europe'],
  [ 'USA', 'English', 'North America'],
  [ 'Argentina', 'Spanish', 'South Africa'],
  [ 'Australia', 'English', 'Oceania']
]

country_list.each do |name, language, continent|
  Country.create( name: name, language: language, continent: continent )
end

national_parks = [
  ['Ahaggar', 1987, 'The Hoggar Mountains are a highland region in the central Sahara, southern Algeria, along the Tropic of Cancer. The mountains cover an area of approximately 550,000 square km (212,000 square miles).', 'Tamanrasset', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Asskrem_Hoggar_2.jpg/1280px-Asskrem_Hoggar_2.jpg', 1],

  ['Djebel Aissa', 2003, 'Djebel Aissa National Park is a national park of the Saharan Atlas located to the west of Algeria, in the wilaya of Naâma. It was created in 2003 and covers 24400 hectares. Djebel Aissa National Park is of particular importance in preserving the ecosystem of the Western Highlands region, which is threatened by desertification and silting.', 'Ain Sefra', 'https://upload.wikimedia.org/wikipedia/commons/3/39/Djebel_Aissa_National_Park.jpg', 1],

  ['Marine NP, Golf of Kutch', 1982, 'Marine National Park in the Gulf of Kutch is situated on the southern shore of the Gulf of Kutch in the Devbhumi Dwarka district of Gujarat state, India. In 1980, an area of 270 km2 from Okha to Jodiya was declared Marine Sanctuary. Later, in 1982, a core area of 110 km2 was declared Marine National Park under the provisions of the Wildlife (protection) Act, 1972 of India. There are 42 islands on the Jamnagar coast in the Marine National Park, most of them surrounded by reefs. The best known island is Pirotan.', 'Jamnagar', 'https://media.cntraveller.in/wp-content/uploads/2020/06/FFYEW2-866x487.jpg', 2]
]

national_parks.each do |name, established, description, nearest_city, image_url, country_id|
  NationalPark.create(name: name, established: established, description: description, nearest_city: nearest_city, image_url: image_url, country_id: country_id)
end
