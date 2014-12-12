class GoalOptionsController < ApplicationController
	before_action :goal_options, only: [:show, :edit, :update, :destroy]
	# before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  def index
  	@goalOptions = GoalOption.all
  end

  
  def show
  	# @goal_option = Goal_Option.find params[:id]
    # @track = @goal_option.tracks.new
    # @tracks = @goal_option.tracks
  end


  def new
    @goal_option = GoalOption.new
  end

  def create
    @goal_option = GoalOption.new goal_option_params
    if @goal_option.save
      redirect_to goal_options_path
    end
  end

  def edit
  	# @goal_option = Goal_Option.find params[:id]
  end

  def update
  	# @goal_option = Goal_Option.find params[:id]
    @goal_option.update_attributes goal_option_params
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

  	def goal_option_params
    	params.require(:goal_option).permit(:name, :quantity)
  	end
 
  	def find_goal_option
    	@goal_option = GoalOption.find params[:id]
  	end

end
