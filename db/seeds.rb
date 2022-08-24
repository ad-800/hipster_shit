require "open-uri"

puts "Cleaning database..."
Purchase.destroy_all
Product.destroy_all

puts "Creating 10 seeds"

parameters = {
  title: '1980s Sony Walkman',
  description: 'Original cassette player. Play your favorite ZZ Top tape and jam out to the rock gods.',
  price: 375
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661268364/65pct6w2827vxatbdu36ya66f44q.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "walkman.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Bunch of Baby Doll Heads',
  description: "Don't ask...",
  price: 100
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661339330/642235c8492486804784c25ec2ed6ae1_zhevq0.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "babydolls.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Blank VHS Tape',
  description: "Don't trust Netflix and all those streaming giants. Record your own shit",
  price: 25
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661267051/r6a67r124qu8klmarsa2n68ut46m.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "vhs.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Floppy Hat',
  description: "My own dog Chester modelled this awesome hat. I've been wearing it for 10 years but it still looks great. It went to a Coldplay concert.",
  price: 15
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661252831/pvgfxrs3jrnnwps84gouh1so4fdw.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "hat.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Patagonia Fanny Pack',
  description: "Take this with you on your next adventure! It went with me all over western India. Water proof.",
  price: 45
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661338620/Gear-01-Patagonia-Ultralight-Mini-Pack_laplyt.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "fannypack.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Small Cactus',
  description: "This cactus will love you when no one else will. Water it once a year.",
  price: 10
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661339025/il_fullxfull.1251027443_l82t_ivi6vi.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "cactus.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Crocs with a Ton of Charms',
  description: "Crocs are comfortable, lightweight, and it's completely fine for a 20-something to wear them to the grocery store to pick up cheap white wine.",
  price: 80
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661339400/211110_Crocs_sg28w1.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "croc.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Mustache Party Props',
  description: "I made them myself with my cat looking on. Great at parties and photoshoots!",
  price: 20
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661339636/il_570xN.787723080_86du_kq0ote.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "mustache.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'VW Van',
  description: "First VW Van released in 1969. Enough said (doesn't work)",
  price: 69_000
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661339885/1967-volkswagen-type-2-bus-vw-ogi_zvvfty.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "van.jpg", content_type: "jpg")
new_product.save

parameters = {
  title: 'Purple Flannel Shirt',
  description: "Warm, unisex, and comfy. Impress your date with a flannel shirt that gives off 'i don't care about anything' vibes",
  price: 70
}

puts parameters[:title]

file = URI.open("https://res.cloudinary.com/doa9kh79y/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1661340224/Stance-104247_ef11pv.jpg")
new_product = Product.new(parameters)
new_product.photo.attach(io: file, filename: "shirt.jpg", content_type: "jpg")
new_product.save

puts "Finished planting"
