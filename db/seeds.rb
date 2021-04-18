# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

protein1 = Protein.create(protein_name: "Beef")
protein2 = Protein.create(protein_name: "Chicken")
protein3 = Protein.create(protein_name: "Pork")

wine1 = Wine.create(wine_name: "Cabernet Sauvignon", wine_description: "V good")
wine2 = Wine.create(wine_name: "Chardonnay", wine_description: "V good")
wine3 = Wine.create(wine_name: "Riesling", wine_description: "V good")

wine1.proteins << Protein.find(1)