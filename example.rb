class User
  def role
    'worker'
  end
end

class Admin < User
  def role
    'admin'
  end
end

p User.new.role
p Admin.new.role
