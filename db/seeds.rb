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

grape1 = Grape.create(name: "Beaujolais", description: "Always a good time")
grape2 = Grape.create(name: "Cabernet Sauvignon", description: "An absolute classic")
grape3 = Grape.create(name: "Chardonnay", description: "Ooooh buttery")
grape4 = Grape.create(name: "Riesling", description: "Sharply delicious")
grape5 = Grape.create(name: "Gewürztraminer", description: "Flowery good")
grape6 = Grape.create(name: "Pinot Gris", description: "Flowery good")
grape7 = Grape.create(name: "Pinot Noir", description: "Flowery good")
grape8 = Grape.create(name: "Sauvignon Blanc", description: "Flowery good")
grape9 = Grape.create(name: "Syrah", description: "Flowery good")
grape10 = Grape.create(name: "Sangiovese", description: "Flowery good")
grape11 = Grape.create(name: "Zinfandel", description: "Fruity af")

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

account1.grapes << Grape.find(1)
account1.grapes << Grape.find(2)
account1.grapes << Grape.find(3)
account1.grapes << Grape.find(4)
account1.grapes << Grape.find(5)
account1.grapes << Grape.find(6)
account1.grapes << Grape.find(7)
account1.grapes << Grape.find(8)
account1.grapes << Grape.find(9)
account1.grapes << Grape.find(10)
account1.grapes << Grape.find(11)

protein1.grapes << Grape.find(2)
protein1.grapes << Grape.find(9)

protein2.grapes << Grape.find(3)
protein2.grapes << Grape.find(7)
protein2.grapes << Grape.find(10)

protein3.grapes << Grape.find(6)
protein3.grapes << Grape.find(8)

protein4.grapes << Grape.find(3)
protein4.grapes << Grape.find(1)
protein4.grapes << Grape.find(5)
protein4.grapes << Grape.find(7)

protein5.grapes << Grape.find(9)
protein5.grapes << Grape.find(11)

sauce1.grapes << Grape.find(1)
sauce1.grapes << Grape.find(9)

sauce2.grapes << Grape.find(2)

sauce3.grapes << Grape.find(3)
sauce3.grapes << Grape.find(6)
sauce3.grapes << Grape.find(8)

sauce4.grapes << Grape.find(4)
sauce4.grapes << Grape.find(5)
sauce4.grapes << Grape.find(7)
sauce4.grapes << Grape.find(9)

sauce5.grapes << Grape.find(3)
sauce5.grapes << Grape.find(7)

sauce6.grapes << Grape.find(6)
sauce6.grapes << Grape.find(7)
sauce6.grapes << Grape.find(8)
sauce6.grapes << Grape.find(10)

sauce7.grapes << Grape.find(4)
sauce7.grapes << Grape.find(5)

sauce8.grapes << Grape.find(2)
sauce8.grapes << Grape.find(6)
sauce8.grapes << Grape.find(7)
sauce8.grapes << Grape.find(8)
sauce8.grapes << Grape.find(10)
