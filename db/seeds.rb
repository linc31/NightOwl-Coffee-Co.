# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Product.create! id: 1, prodName: "Nocturnal", prodDesc: "Strong AF", unitPrice: 18.0
Product.create! id: 2, prodName: "Black Eye", prodDesc: "Stay up for days!", unitPrice: 18.0
Product.create! id: 3, prodName: "All-Nighter", prodDesc: "All day, all night!", unitPrice: 18.0