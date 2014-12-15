class GoalsController < ApplicationController
	before_action :goals, only: [:show, :edit, :update, :destroy]
	# before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  def index
  	@goals = Goal.all
  end

  
  def show
  	# @goal_option = Goal_Option.find params[:id]
    # @track = @goal_option.tracks.new
    # @tracks = @goal_option.tracks
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

  def edit
  	# @goal_option = Goal_Option.find params[:id]
  end

  def update
  	# @goal_option = Goal_Option.find params[:id]
    @goal.update_attributes goal_params
    redirect_to root_path
    # @need = Need.find params[:id]
    # @user = current_user
    # @user.goal_option_id = @goal_option.id
    # @user.save
    # redirect_to goal_option_path(@goal_option)
  end
  def destroy
  end
  private

  	def goal_params
    	params.require(:goal).permit(:name, :quantity)
  	end
 
  	def find_goal
    	@goal = Goal.find params[:id]
  	end

end
