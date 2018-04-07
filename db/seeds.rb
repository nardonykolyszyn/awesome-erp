%w{worker administrator}.map{ |role| Role.new(name: role).save }
User.new(email: 'devpolish@protonmail.com', password: 'simplepassword', username: 'devpolish').save
100.times do
  Article.new(name: Faker::Food.unique.ingredient, price: rand(1000..10000)).save
end
%w{food drinks tools clothes}.map{|c| Category.new(name: c).save }
