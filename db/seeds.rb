
dishes = ["Burger", "Pizza", "Sushi", "Bagels", "French Fries", "Tacos", "Burritos", "Pasta", "Fried Rice", "Curry", "Pad Thai"]
tags = ['Spicy', 'Vegeterian', 'Vegan', 'Gluten Free', 'Lactose Free', 'Free Range', 'Kosher', 'Halal', 'Farm to Table', 'Keto', 'Paleo']


tags.each {|t| Tag.create(name: t)}
    


20.times do 

    rest = Restaurant.create(name: Faker::Restaurant.name)

    10.times do 

        dish = Dish.create(name: Faker::Food.dish, restaurant_id: rest.id)

        3.times do
            dish.tags << Tag.all.sample
            # DishTag.create(dish_id: dish.id, tag_id: Tag.all.sample.id)
        end
    end
end