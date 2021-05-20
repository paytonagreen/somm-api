# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account1 = Account.create(name: "Sample Account")

protein1 = Protein.create(name: "Beef")
protein2 = Protein.create(name: "Chicken")
protein3 = Protein.create(name: "Fish")
protein4 = Protein.create(name: "Pork")
protein5 = Protein.create(name: "Tempeh")

wine1 = Wine.create(name: "Beaujolais", wine_description: "Always a good time")
wine2 = Wine.create(name: "Cabernet Sauvignon", wine_description: "An absolute classic")
wine3 = Wine.create(name: "Chardonnay", wine_description: "Ooooh buttery")
wine4 = Wine.create(name: "Riesling", wine_description: "Sharply delicious")
wine5 = Wine.create(name: "Gewürztraminer", wine_description: "Flowery good")
wine6 = Wine.create(name: "Pinot Gris", wine_description: "Flowery good")
wine7 = Wine.create(name: "Pinot Noir", wine_description: "Flowery good")
wine8 = Wine.create(name: "Sauvignon Blanc", wine_description: "Flowery good")
wine9 = Wine.create(name: "Syrah", wine_description: "Flowery good")
wine10 = Wine.create(name: "Sangiovese", wine_description: "Flowery good")
wine11 = Wine.create(name: "Zinfandel", wine_description: "Fruity af")

sauce1 = Sauce.create(name: "Barbecue")
sauce2 = Sauce.create(name: "Balsamic Glaze")
sauce3 = Sauce.create(name: "Cream Sauce")
sauce4 = Sauce.create(name: "Indian Curry")
sauce5 = Sauce.create(name: "Mushroom Sauce")
sauce6 = Sauce.create(name: "Pesto")
sauce7 = Sauce.create(name: "Sesame Sauce")
sauce8 = Sauce.create(name: "Tomato Sauce")
sauce9 = Sauce.create(name: "Thai Curry")

user1 = User.create(username: "admin", email: "admin@asommforyou.com", password: "admin1", is_admin: true, account_id: 1)

account1.wines << Wine.find(1)
account1.wines << Wine.find(2)
account1.wines << Wine.find(3)
account1.wines << Wine.find(4)
account1.wines << Wine.find(5)
account1.wines << Wine.find(6)
account1.wines << Wine.find(7)
account1.wines << Wine.find(8)
account1.wines << Wine.find(9)
account1.wines << Wine.find(10)
account1.wines << Wine.find(11)

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
