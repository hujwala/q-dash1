
class Admin::NewjoinersController < ApplicationController
	def index
    	@newjoiners = Newjoiner.last
	end
	def create
		@newjoiners = Newjoiner.new(newjoiner_params)
    if @newjoiners.valid?
    @newjoiners.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def newjoiner_params
    params.require(:newjoiners).permit(:new_name,:new_info)
  end
end