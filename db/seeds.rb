require "http"

response = HTTP.get("http://localhost:3000/products")


table = TTY::Table.new ['header1','header2'], [['a1', 'a2'], ['b1', 'b2']]

table.render(:ascii)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# product1 = Product.new(name: "Cat Brush", price: 8, image_url: "https://img.chewy.com/is/image/catalog/128191_MAIN._AC_SL1500_V1497272289_.jpg", description: "A brush for your cat")
# product1.save

# product2 = Product.new(name: "Fish Food", price: 4, image_url: "https://s7d2.scene7.com/is/image/PetSmart/1031529?$sclp-prd-main_large$", description: "Quality fish food")
# product2.save

# product3 = Product.new(name: "Alarm clock", price: 25, image_url: "https://www.ikea.com/PIAimages/0637379_PE698263_S3.JPG", description: "A loud alarm clock")
# product3.save

# product4 = Product.new(name: "SunTan Lotion", price: 7, image_url: "https://images-na.ssl-images-amazon.com/images/G/01/aplusautomation/vendorimages/9fc6d2f2-8f22-4821-8d66-47c46730bbb5.jpg._CB296665598_.jpg", description: "SPF 12")
# product4.save

