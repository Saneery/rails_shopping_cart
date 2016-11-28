# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create! id: 1, name: "Лапша в соусе терияки", price: 200, image_path: "1.jpg"
Product.create! id: 2, name: "Лапша в сливочном соусе", price: 100, image_path: "2.jpg"
Product.create! id: 3, name: "Рис в соусе терияки", price: 150, image_path: "3.jpg"

Ingredient.delete_all
Ingredient.create! id: 1, name: "Спаржа", ingredient_type: "topping", price: 20
Ingredient.create! id: 2, name: "Кунжут", ingredient_type: "topping", price: 10
Ingredient.create! id: 3, name: "Опята", ingredient_type: "topping", price: 15
Ingredient.create! id: 4, name: "Пармезан", ingredient_type: "topping", price: 15
Ingredient.create! id: 5, name: "Перец остр", ingredient_type: "topping", price: 15
Ingredient.create! id: 6, name: "Шампиньон", ingredient_type: "topping", price: 15
Ingredient.create! id: 7, name: "Говядина", ingredient_type: "meat", price: 15
Ingredient.create! id: 8, name: "Свинина", ingredient_type: "meat", price: 15
Ingredient.create! id: 9, name: "Креветки", ingredient_type: "meat", price: 15
Ingredient.create! id: 10, name: "Лосось", ingredient_type: "meat", price: 15
Ingredient.create! id: 11, name: "Курица", ingredient_type: "meat", price: 15
Ingredient.create! id: 12, name: "Морепродукт", ingredient_type: "meat", price: 15