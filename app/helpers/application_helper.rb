module ApplicationHelper
	def goal_list
		x = ""
		@goals.each do |goal|
      x += (link_to "#{@goal.name}", goal_path(@goal))
    end
    x.html_safe
   end
end
