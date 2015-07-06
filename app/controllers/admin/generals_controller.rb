
class Admin::GeneralsController < ApplicationController
	def index
    	@generals = General.last
	end
	def create
		@generals = General.new(general_params)
    if @generals.valid?
    @generals.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def general_params
    params.require(:generals).permit(:general_name,:general_description)
  end
end