class Admin::HrsController < ApplicationController
	def index
      @hrs = Hr.new
      # @birthday = Birthday.new
      # @hrs = Hr.new
    	# @hrs = Hr.new
	end
	def create
		@hrs = Hr.new(hr_params)
    if @hrs.valid?
    @hrs.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def hr_params
    params.require(:hrs).permit(:name2, :description2)
  end
end