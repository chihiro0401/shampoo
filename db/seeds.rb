# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shampooitem.create!(
  [
    {
      brandname: 'いち髪',
      description: '見本',
      price: 400
    },
    {
      brandname: '&ハニー',
      description: '見本',
      price: 500
    },
    {
      brandname: 'オクト',
      description: '見本',
      price: 200
    },
    {
      brandname: 'リンス',
      description: '見本',
      price: 300
    }
  ]
)