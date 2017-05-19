User.create!(email: 'test@test.com', password: '12345678')


# Categories
 categories = ["House/Rent", "Utilites", "Food & Drink", "Transportation", "Travel", "Vehicle", "Insurance", "Education", "Restaurants", "Business", "Personal", "Uncategorized"]

 categories.each do |category|
   Category.create(kind: category)
 end
