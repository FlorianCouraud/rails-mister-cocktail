require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
document = JSON.parse(URI.parse(url).open.read)
document['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
