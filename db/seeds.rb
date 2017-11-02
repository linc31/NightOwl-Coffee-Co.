# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LineItem.destroy_all
Product.destroy_all
Order.destroy_all
User.destroy_all
Product.create! id: 1, prodName: "Nocturnal", prodDesc: "Strong AF", unitPrice: 18, detail: "Our rapturous house recipe yields complex shades of chocolate with a sweet-fruity depth which gives way to subtle, spicy nuances."
Product.create! id: 2, prodName: "Black Eye", prodDesc: "Stay up for days!", unitPrice: 18, detail: "Uncanny high notes of fruity sweetness on top of a dry-chocolatey flavor with a full body and a long, sweet finish."
Product.create! id: 3, prodName: "All-Nighter", prodDesc: "All day, all night!", unitPrice: 18, detail: "Full body of currant and spice with a mild sweetness in a balanced cup with a superb finish."
Product.create! id: 4, prodName: "Rude Awakening", prodDesc: "Wake up, mofo", unitPrice: 21, detail: "Heavy, full body of dark bittersweet chocolate and hazelnuts with a sweet bite."
