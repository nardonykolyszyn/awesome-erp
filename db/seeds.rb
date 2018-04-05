%w{worker administrator}.map{ |role| Role.create(name: role) }
User.create(email: 'devpolish@protonmail.com', password: 'simplepassword', username: 'devpolish')
100.times do
  Article.create(name: Faker::Food.unique.ingredient, price: rand(1000..10000))
end
