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

tastes = ["salty", "sweet", "sour", "bitter", "umami", "creamy"] 
tastes.each do |taste|
    Taste.create(name: taste)
end


# salty
    salty = Flavor.find_by(kind: "salty")
    crystalline = Flavor.find_by(kind: "crystalline")
    FlavorTasteCategory.create(flavor: salty, taste: Taste.find_by(name: "salty"))
    FlavorTasteCategory.create(flavor: crystalline, taste: Taste.find_by(name: "salty"))
# sweet
    sweet = Flavor.find_by(kind: "sweet")
    caramel = Flavor.find_by(kind:"caramel")
    FlavorTasteCategory.create(flavor: sweet, taste: Taste.find_by(name: "sweet"))
    FlavorTasteCategory.create(flavor: caramel, taste: Taste.find_by(name: "sweet"))
# sour
    lemon = Flavor.find_by(kind: "lemon")
    sharp = Flavor.find_by(kind: "sharp/tangy")
    FlavorTasteCategory.create(flavor: lemon, taste: Taste.find_by(name: "sour"))
    FlavorTasteCategory.create(flavor: sharp, taste: Taste.find_by(name: "sour"))
# bitter
    milky = Flavor.find_by(kind: "milky/lactic")
    grassy = Flavor.find_by(kind: "grassy")
    herbal = Flavor.find_by(kind: "herbal")
    FlavorTasteCategory.create(flavor: milky, taste: Taste.find_by(name: "bitter"))
    FlavorTasteCategory.create(flavor: grassy, taste: Taste.find_by(name: "bitter"))
    FlavorTasteCategory.create(flavor: herbal, taste: Taste.find_by(name: "bitter"))
# umami
    robust = Flavor.find_by(kind: "robust")
    stinky = Flavor.find_by(kind: "stinky")
    earthy = Flavor.find_by(kind: "earthy")
    nutty = Flavor.find_by(kind: "nutty")
    moldy = Flavor.find_by(kind: "moldy/blue")
    crumbly = Flavor.find_by(kind: "crumbly")
    FlavorTasteCategory.create(flavor: robust, taste: Taste.find_by(name: "umami"))
    FlavorTasteCategory.create(flavor: stinky, taste: Taste.find_by(name: "umami"))
    FlavorTasteCategory.create(flavor: earthy, taste: Taste.find_by(name: "umami"))
    FlavorTasteCategory.create(flavor: nutty, taste: Taste.find_by(name: "umami"))
    FlavorTasteCategory.create(flavor: moldy, taste: Taste.find_by(name: "umami"))
    FlavorTasteCategory.create(flavor: crumbly, taste: Taste.find_by(name: "umami"))
# creamy
    buttery = Flavor.find_by(kind: "buttery/creamy")
    FlavorTasteCategory.create(flavor: buttery, taste: Taste.find_by(name: "creamy"))

