# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flavors = ["salty", "sweet", "sharp/tangy", "lemon", "grassy", "herbal", "caramel", "nutty", "earthy", "moldy/blue", "stinky", "robust", "buttery/creamy", "milky/lactic", "crumbly", "crystalline"] 
flavors.each do |flavor|
    Flavor.create(kind: flavor)
end

gouda = Cheese.create(name: "Gouda", creamery: "", origin:"", notes:"This is so good with bacon!", rind:"waxed", milk:"cow", texture:"semi-firm", rating: 4)
feta = Cheese.create(name: "Feta", creamery: "", origin:"Greece", notes:"Watermelon + Mint + Feta = YUM", rind:"fresh", milk:"sheep", texture:"soft", rating: 4)
fontina = Cheese.create(name: "Fontina", creamery: "Castello", origin:"Italy", notes:"Simple and delicate", rind:"washed", milk:"cow", texture:"semi-soft", rating: 4)
