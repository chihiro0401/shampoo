# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "-------------shampooitem create------------"

# shampooitem1 = Shampooitem.create!(
#   brandname: "いち髪",
#   description: "すべての人が健康的な髪を保ち、芯から美しい毎日を過ごせたら。",
#   price: 741
#   )
#   shampooitem1.image.attach(io: File.open(Rails.root.join('app/assets/images/ichikami.jpg')), filename: 'ichikami.jpg')

# puts "-------------shampooitem2 create------------"

# shampooitem2 = Shampooitem.create!(
#   brandname: "ululis(ウルリス)",
#   description: "インナードライ髪の水分量に着目。髪を美容水で包み込み、芯まで潤いで満たします。",
#   price: 1540
#   )
#   shampooitem2.image.attach(io: File.open(Rails.root.join('app/assets/images/ululis.jpeg')), filename: 'ululis.jpeg')

# puts "-------------shampooitem3 create------------"

# shampooitem3 = Shampooitem.create!(
#   brandname: "BOTANIST",
#   description: "髪や肌のケアだけでなく、環境にやさしい選択をしました。",
#   price: 1540
#   )
#   shampooitem3.image.attach(io: File.open(Rails.root.join('app/assets/images/botanist.jpeg')), filename: 'botanist.jpeg')

# puts "-------------shampooitem4 create------------"

# shampooitem4 = Shampooitem.create!(
#   brandname: "&honey",
#   description: "髪のうねり・くせを整えまっすぐうるツヤ髪へ。",
#   price: 1540
#   )
#   shampooitem4.image.attach(io: File.open(Rails.root.join('app/assets/images/&honey.jpeg')), filename: '&honey.jpeg')

# puts "-------------shampooitem5 create------------"

# shampooitem5 = Shampooitem.create!(
#   brandname: "HIMAWARI",
#   description: "ひまわりのように前向きに生きる、美しきすべての女性へ。",
#   price: 990
#   )
#   shampooitem5.image.attach(io: File.open(Rails.root.join('app/assets/images/himawari.jpeg')), filename: 'himawari.jpeg')

# puts "-------------shampooitem6 create------------"

# shampooitem6 = Shampooitem.create!(
#   brandname: "PANTENE",
#   description: "思わずサラリたくなる、カシミアのように滑らかな髪へ。",
#   price: 864
#   )
#   shampooitem6.image.attach(io: File.open(Rails.root.join('app/assets/images/pantene.jpeg')), filename: 'pantene.jpeg')

# puts "-------------shampooitem7 create------------"

# shampooitem7 = Shampooitem.create!(
#   brandname: "Diane",
#   description: "カラーチャージ＆ダメージ補修",
#   price: 1540
#   )
#   shampooitem7.image.attach(io: File.open(Rails.root.join('app/assets/images/diane.jpeg')), filename: 'diane.jpeg')

# puts "-------------shampooitem8 create------------"

# shampooitem8 = Shampooitem.create!(
#   brandname: "Jelaime",
#   description: "すべてのダメージヘアに。髪にもコラーゲンという発想を。",
#   price: 879
#   )
#   shampooitem8.image.attach(io: File.open(Rails.root.join('app/assets/images/jelaime.jpeg')), filename: 'jelaime.jpeg')

# puts "-------------category create------------"
# Category.create!(name: "くせ毛")
# Category.create!(name: "硬毛")
# Category.create!(name: "剛毛")
# Category.create!(name: "直毛")

# puts "-------------admin create------------"
# Admin.create!(
#   email: "admin@gmail.com",
#   password: "adminadmin"
#   )
# puts "----end----"

puts "-------------user create------------"
User.create!(
  email: "user@gmail.com",
  password: "useruser"
  )
puts "----end----"