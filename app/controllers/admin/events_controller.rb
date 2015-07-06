
class Admin::EventsController < ApplicationController
	def index
    	@events = Event.last
	end
	def create
		@events = Event.new(event_params)
    if @events.valid?
    @events.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def event_params
    params.require(:events).permit(:event_name,:event_description)
  end
end