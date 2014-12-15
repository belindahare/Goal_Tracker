class WelcomeController < ApplicationController
  def index
  	@goals = Goal.all
  end
   def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new goal_params
    if @goal.save
      redirect_to root_path
    end
  end
  	
end
