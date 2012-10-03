# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

images = [
  "http://i.imgur.com/cL1dE.jpg",
  "http://i.imgur.com/2W5TH.jpg",
  "http://i.imgur.com/Sfwzr.jpg",
  "http://i.imgur.com/reoQ6.jpg",
  "http://i.imgur.com/yWwOO.jpg",
  "http://i.imgur.com/xraNB.jpg",
  "http://i.imgur.com/m1KD1.jpg",
  "http://i.imgur.com/d1Kx2.jpg",
  "http://i.imgur.com/XcMoj.jpg",
  "http://i.imgur.com/RCkyS.jpg",
  "http://i.imgur.com/nL6S8.jpg",
  "http://i.imgur.com/vyuBG.jpg",
  "http://i.imgur.com/3z0L9.jpg",
  "http://i.imgur.com/4uULy.jpg",
  "http://i.imgur.com/ry6af.jpg",
  "http://i.imgur.com/wydxK.jpg",
  "http://i.imgur.com/aIRhq.jpg",
  "http://i.imgur.com/0gusM.jpg",
  "http://i.imgur.com/vRtYd.jpg",
  "http://i.imgur.com/wApjx.jpg",
  "http://i.imgur.com/KUZC0.jpg",
  "http://i.imgur.com/dmbce.jpg",
  "http://i.imgur.com/WLQtK.jpg",
  "http://i.imgur.com/tnWTm.jpg",
  "http://i.imgur.com/xutKu.jpg",
  "http://i.imgur.com/yWVS4.jpg"
]

count = 0
images.each do |image_url|
  count += 1
  Product.create(:title => "Product #{count}", :image_url => image_url)
end