# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: "Anwar")
user2 = User.create(name: "Yahya")
user3 = User.create(name: "Mohamed")

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

review1=Review.create(product_id: product1.id,user_id:user1.id,star_rating:5,comment:"Nice !")
review1=Review.create(product_id: product1.id,user_id:user1.id,star_rating:4,comment:"cool !")
review1=Review.create(product_id: product1.id,user_id:user1.id,star_rating:3,comment:"wow !")

puts "Seeding done!"