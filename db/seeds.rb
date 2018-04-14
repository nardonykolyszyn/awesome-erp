%w{worker administrator}.map{ |role| Role.new(name: role).save }
User.new(email: 'devpolish@protonmail.com', password: 'simplepassword', username: 'devpolish').save
100.times do
  Article.new(name: Faker::Food.unique.ingredient, price: rand(1000..10000)).save
end
%w{food drinks tools clothes}.map{|c| Category.new(name: c).save }
12.times do
  start_at = Time.now + rand(1..30).days
  Task.new(
    name: 'Sample task name', 
    description: 'lorem impsu lorem impsu lorem impsu lorem impsu',
    priority: rand(0..2),
    start_at: start_at,
    end_at:  start_at + rand(1..30).days,
  ).save
end