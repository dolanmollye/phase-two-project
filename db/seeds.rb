# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PantryIngredient.destroy_all
Pantry.destroy_all
User.destroy_all
Ingredient.destroy_all
ShoppingList.destroy_all

ingredients = [
    {name: "Salt", quantity: 2 },
    {name: "Olive Oil", quantity: 1 },
    {name: "Vinegar", quantity: 2 },
    {name: "Rice", quantity: 1 },
    {name: "Spaghetti Noodles", quantity: 1 },
    {name: "Canned Beans", quantity: 1 },
    {name: "Chicken Noodle Soup", quantity: 1 },
    {name: "Chili", quantity: 1 },
    {name: "Green Chiles", quantity: 1 },
    {name: "Diced Tomatoes", quantity: 1 },
    {name: "Macaroni", quantity: 1 }
  ]

  ingredients.each {|ingredient| Ingredient.create(ingredient)}

  user1 = User.create(name: "Molly")
  user2 = User.create(name: "Roo")
  user3 = User.create(name: "Kenji")

  pantry1 = Pantry.create(name: "Kitchen Pantry", user_id: user1.id)
  pantry2 = Pantry.create(name: "Cupboard", user_id: user1.id)
  pantry3 = Pantry.create(name: "Refridgerator", user_id: user1.id)

  pi1 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi2 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi3 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi4 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi5 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi6 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi7 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi8 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi9 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi10 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi11 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi12 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi13 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  pi14 = PantryIngredient.create(pantry_id: Pantry.all.sample.id, ingredient_id: Ingredient.all.sample.id)

  sl1 = ShoppingList.create(name: "Pasta")
  sl2 = ShoppingList.create(name: "Spices")
  sl3 = ShoppingList.create(name: "Mustard")

