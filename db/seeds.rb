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

country1 = Country.create(name: "United States")
country2 = Country.create(name: "France")
country3 = Country.create(name: "Italy")

region1 = Region.create(name: "Texas", country_id: 1)
region2 = Region.create(name: "Beaujolais", country_id: 2)
region3 = Region.create(name: "Veneto", country_id: 3)
region4 = Region.create(name: "Champagne", country_id: 2)
region5 = Region.create(name: "Alsace", country_id: 2)
region6 = Region.create(name: "Emilia Romagna", country_id: 3)
region7 = Region.create(name: "Loire", country_id: 2)
region8 = Region.create(name: "Rhone", country_id: 2)
region9 = Region.create(name: "California", country_id: 2)

subregion1 = Subregion.create(name: "Sonoma Country", region_id: 9)
subregion2 = Subregion.create(name: "High Plains", region_id: 1)

wine1 = Wine.create(name: "Don't Forget To Soar", has_vintage: true, vintage: 2020)
wine2 = Wine.create(name: "Les Bruyeres", has_vintage: true, vintage: 2018)
wine3 = Wine.create(name: "Venegazzu", has_vintage: false)
wine4 = Wine.create(name: "La Cuvee", has_vintage: false)
wine5 = Wine.create(name: "Cremant d'Alsace Brut", has_vintage: false)
wine6 = Wine.create(name: "Dandy Rose", has_vintage: true, vintage: 2019)
wine7 = Wine.create(name: "Lambrusco Di Sorbara", has_vintage: false)
wine8 = Wine.create(name: "'Exile' Petillant Naturel", has_vintage: true, vintage: 2019)
wine9 = Wine.create(name: "Tempranillo", has_vintage: true, vintage: 2019)
wine10 = Wine.create(name: "Skeleton Key", has_vintage: false)
wine11 = Wine.create(name: "P'tit Gaby", has_vintage: true, vintage: 2018)
wine12 = Wine.create(name: "Astral", has_vintage: true, vintage: 2020)

wine1.subregions << subregion2
wine6.subregions << subregion2
wine9.subregions << subregion2
wine10.subregions << subregion2
wine12.subregions << subregion1

wine1.regions << region1
wine2.regions << region2
wine3.regions << region3
wine4.regions << region4
wine5.regions << region5
wine6.regions << region1
wine7.regions << region6
wine8.regions << region7
wine9.regions << region1
wine10.regions << region1
wine11.regions << region8
wine12.regions << region9

wine1.countries << country1
wine2.countries << country2
wine3.countries << country3
wine4.countries << country2
wine5.countries << country2
wine6.countries << country1
wine7.countries << country3
wine8.countries << country2
wine9.countries << country1
wine10.countries << country1
wine11.countries << country2
wine12.countries << country1

producer1 = Producer.create(name: "Southold Farm + Cellar")
producer2 = Producer.create(name: "Domaine Yohann Lardy")
producer3 = Producer.create(name: "Montelvini")
producer4 = Producer.create(name: "Laurent-Perrier")
producer5 = Producer.create(name: "Domaine Riefle")
producer6 = Producer.create(name: "Dandy")
producer7 = Producer.create(name: "L'onesta")
producer8 = Producer.create(name: "Lise et Betrand Jousset")
producer9 = Producer.create(name: "The Austin Winery")
producer10 = Producer.create(name: "William Chris")
producer11 = Producer.create(name: "Mas Theo")
producer12 = Producer.create(name: "Les Lunes")

producer1.wines << wine1
producer2.wines << wine2
producer3.wines << wine3
producer4.wines << wine4
producer5.wines << wine5
producer6.wines << wine6
producer7.wines << wine7
producer8.wines << wine8
producer9.wines << wine9
producer10.wines << wine10
producer11.wines << wine11
producer12.wines << wine12

grape1 = Grape.create(name: "Gamay", description: "Always a good time")
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
grape12 = Grape.create(name: "Rousanne", description: "Good")
grape13 = Grape.create(name: "Gruner", description: "Good")
grape14 = Grape.create(name: "Glera", description: "Good")
grape15 = Grape.create(name: "Pinot Blanc", description: "Good")
grape16 = Grape.create(name: "Pinot Auxerrois", description: "Good")
grape17 = Grape.create(name: "Mourvedre", description: "Good")
grape18 = Grape.create(name: "Cinsault", description: "Good")
grape19 = Grape.create(name: "Lambrusco", description: "Good")
grape20 = Grape.create(name: "Tempranillo", description: "Good")
grape21 = Grape.create(name: "Carignan", description: "Good")
grape22 = Grape.create(name: "Grenache", description: "Good")


wine1.grapes << grape1
wine1.grapes << grape2
wine2.grapes << grape3
wine3.grapes << grape14
wine5.grapes << grape15
wine5.grapes << grape16
wine5.grapes << grape16
wine6.grapes << grape17
wine6.grapes << grape18
wine6.grapes << grape9
wine7.grapes << grape19
wine8.grapes << grape1
wine9.grapes << grape20
wine10.grapes << grape2
wine11.grapes << grape21
wine11.grapes << grape9
wine11.grapes << grape21
wine11.grapes << grape22

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
