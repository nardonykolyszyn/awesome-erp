module TasksHelper
  def priority_badge(priority)
  	options = {
  		:low => {
  		  color: 'blue'
  		},

  		:medium => {
  			color: 'yellow'
  		},

  		:high => {
  			color: 'red'
  		}
  	}
    color = options[priority.to_sym][:color]
  	tag = "<span class='badge #{color}' style='color: white;'>#{priority}</span>"
  	tag.html_safe
  end
end