module ArticlesHelper
  def is_available?(value)
    value ? 'Available' : 'Unavailable'
  end
end
