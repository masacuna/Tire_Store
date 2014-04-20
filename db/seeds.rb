# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Province.create(name: 'Manitoba', gst: 0.05, hst: 0, pst: 0.08)
  Province.create(name: 'Alberta', gst: 0.05, hst: 0, pst: 0.00)
  Province.create(name: 'British Columbia', gst: 0.05, hst: 0, pst: 0.07)
  Province.create(name: 'New Brunswick', gst: 0.00, hst: 0.13, pst: 0.00)
  Province.create(name: 'Newfoundland', gst: 0.00, hst: 0.13, pst: 0.00)
  Province.create(name: 'Northwest Territories', gst: 0.05, hst: 0, pst: 0.00)
  Province.create(name: 'Nova Scotia', gst: 0.00, hst: 0.15, pst: 0.00)
  Province.create(name: 'Nunavut', gst: 0.05, hst: 0, pst: 0.00)
  Province.create(name: 'Ontario', gst: 0.00, hst: 0.13, pst: 0.00)
  Province.create(name: 'P.E.I.', gst: 0.00, hst: 0.14, pst: 0.00)
  Province.create(name: 'Quebec', gst: 0.05, hst: 0, pst: 0.09975)
  Province.create(name: 'Saskatchewan', gst: 0.05, hst: 0, pst: 0.10)
  Province.create(name: 'Yukon', gst: 0.05, hst: 0, pst: 0.00)

  User.create(first_name: 'Bart', last_name: 'Sampson', address: '123 Main St', city: 'Springfield', email: 'bart@gmail.com', password: 'eatshorts', province_id: 1)
  User.create(first_name: 'Steve', last_name: 'Snowdon', address: '124 Plain St', city: 'Winnipeg', email: 'steve@gmail.com', password: 'milk', province_id: 2)


  Product.create(name: 'Motomaster', price: 200, description: "Cdn Tire brand", stock_quantity: 20, category_id: 1)
  Product.create(name: 'Nokian', price: 300, description: "Nokian Hak", stock_quantity: 40, category_id: 2)
  Product.create(name: 'Cooper', price: 250, description: "Cooper Tire", stock_quantity: 60, category_id: 3)
  Product.create(name: 'Pirelli', price: 250, description: "Pirelli Tire", stock_quantity: 80, category_id: 2)
  Product.create(name: 'Firestone', price: 199.99, description: "Firestone Tire", stock_quantity: 55, category_id: 1)
  Product.create(name: 'Dunlop', price: 225.99, description: "Dunlop Tire", stock_quantity: 60, category_id: 3)
  Product.create(name: 'GoodYear', price: 150, description: "GoodYear Tire", stock_quantity: 20, category_id: 3)
  Product.create(name: 'Hankook', price: 230, description: "Hankook Tire", stock_quantity: 60, category_id: 2)
  Product.create(name: 'Michelin', price: 149.99, description: "Michelin Tire", stock_quantity: 60, category_id: 1)
  Product.create(name: 'BFGoodrich', price: 210, description: "BFGoodrich Tire", stock_quantity: 60, category_id: 3)



  Order.create(status: 'shipped', pst_rate: 0.08, gst_rate: 0.05, hst_rate: 0, user_id: 1, price: 800 )
  Order.create(status: 'paid', pst_rate: 0.00, gst_rate: 0.05, hst_rate: 0, user_id: 2, price: 1200 )

  LineItem.create(quantity: 4, product_id: 1, order_id: 1)
  LineItem.create(quantity: 4, product_id: 2, order_id: 2)

  Category.create(name:"All-Season", description: "Tires for entire year")
  Category.create(name:"Summer", description: "Tires for summer")
  Category.create(name:"Winter", description: "Tires for winter")