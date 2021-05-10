# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

protein1 = Protein.create(protein_name: "Beef")
protein2 = Protein.create(protein_name: "Chicken")
protein3 = Protein.create(protein_name: "Fish")
protein4 = Protein.create(protein_name: "Pork")
protein5 = Protein.create(protein_name: "Tempeh")


wine1 = Wine.create(wine_name: "Beaujolais", wine_description: "Always a good time")
wine2 = Wine.create(wine_name: "Cabernet Sauvignon", wine_description: "An absolute classic")
wine3 = Wine.create(wine_name: "Chardonnay", wine_description: "Ooooh buttery")
wine4 = Wine.create(wine_name: "Riesling", wine_description: "Sharply delicious")
wine5 = Wine.create(wine_name: "Gewürztraminer", wine_description: "Flowery good")
wine6 = Wine.create(wine_name: "Pinot Gris", wine_description: "Flowery good")
wine7 = Wine.create(wine_name: "Pinot Noir", wine_description: "Flowery good")
wine8 = Wine.create(wine_name: "Sauvignon Blanc", wine_description: "Flowery good")
wine9 = Wine.create(wine_name: "Syrah", wine_description: "Flowery good")
wine10 = Wine.create(wine_name: "Sangiovese", wine_description: "Flowery good")
wine11 = Wine.create(wine_name: "Zinfandel", wine_description: "Fruity af")

sauce1 = Sauce.create(sauce_name: "Barbecue")
sauce2 = Sauce.create(sauce_name: "Balsamic Glaze")
sauce3 = Sauce.create(sauce_name: "Cream Sauce")
sauce4 = Sauce.create(sauce_name: "Indian Curry")
sauce5 = Sauce.create(sauce_name: "Mushroom Sauce")
sauce6 = Sauce.create(sauce_name: "Pesto")
sauce7 = Sauce.create(sauce_name: "Sesame Sauce")
sauce8 = Sauce.create(sauce_name: "Tomato Sauce")
sauce9 = Sauce.create(sauce_name: "Thai Curry")

user1 = User.create(username: "admin", email: "admin@asommforyou.com", password: "admin1", is_admin: true)

protein1.wines << Wine.find(2)
protein1.wines << Wine.find(9)

protein2.wines << Wine.find(3)
protein2.wines << Wine.find(7)
protein2.wines << Wine.find(10)

protein3.wines << Wine.find(6)
protein3.wines << Wine.find(8)

protein4.wines << Wine.find(3)
protein4.wines << Wine.find(1)
protein4.wines << Wine.find(5)
protein4.wines << Wine.find(7)

protein5.wines << Wine.find(9)
protein5.wines << Wine.find(11)

sauce1.wines << Wine.find(1)
sauce1.wines << Wine.find(9)

sauce2.wines << Wine.find(2)

sauce3.wines << Wine.find(3)
sauce3.wines << Wine.find(6)
sauce3.wines << Wine.find(8)

sauce4.wines << Wine.find(4)
sauce4.wines << Wine.find(5)
sauce4.wines << Wine.find(7)
sauce4.wines << Wine.find(9)

sauce5.wines << Wine.find(3)
sauce5.wines << Wine.find(7)

sauce6.wines << Wine.find(6)
sauce6.wines << Wine.find(7)
sauce6.wines << Wine.find(8)
sauce6.wines << Wine.find(10)

sauce7.wines << Wine.find(4)
sauce7.wines << Wine.find(5)

sauce8.wines << Wine.find(2)
sauce8.wines << Wine.find(6)
sauce8.wines << Wine.find(7)
sauce8.wines << Wine.find(8)
sauce8.wines << Wine.find(10)
