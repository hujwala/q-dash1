
class Admin::AchievementsController < ApplicationController
	def index
    	@achievements = Achievement.last
	end
	def create
		@achievements = Achievement.new(achievement_params)
    if @achievements.valid?
    @achievements.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def achievement_params
    params.require(:achievements).permit(:ach_name,:ach_description)
  end
end