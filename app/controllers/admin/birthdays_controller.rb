
class Admin::BirthdaysController < ApplicationController
	def index
    	@birthdays = Birthday.last
	end
	def create
		@birthdays = Birthday.new(birthday_params)
    if @birthdays.valid?
    @birthdays.save
      @success = true
    else
     @success = false
   end
      redirect_to admin_hrs_path
	end
  def update
  end
	def birthday_params
    params.require(:birthdays).permit(:birthday_name)
  end
end