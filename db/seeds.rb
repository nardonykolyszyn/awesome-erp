%w{worker administrator}.map{ |role| Role.create(name: role) }
User.create(email: 'devpolish@protonmail.com', password: 'simplepassword', username: 'devpolish')
