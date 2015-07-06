
class Admin::AnniversarrysController < ApplicationController
	def index
    	@anniversaries = Anniversary.last
	end
	def create
		@anniversaries = Anniversary.new(anniversary_params)
    if @anniversaries.valid?
    @anniversaries.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def anniversary_params
    params.require(:anniversaries).permit(:ann_name,:ann_year,:ann_wish)
  end
end