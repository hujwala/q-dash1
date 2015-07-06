module QwinixUpdatesJob
	extend ActiveSupport::Concern
	require 'rufus-scheduler'
	def view_qwinix_updates
		scheduler = Rufus::Scheduler.new
		Dashing.scheduler.every '10m', :first_in => 0 do |job|
			@hrs = Hr.last
			Dashing.send_event("update", {title: @hrs.name2 , text: @hrs.description2 })
		end 
		Dashing.scheduler.every '10s', :first_in => 0 do |job|
			@birthdays = Birthday.last
			Dashing.send_event("birthday", {title: @birthdays.birthday_name})
		end 
		Dashing.scheduler.every '10m', :first_in => 0 do |job|
			@events = Event.last
			Dashing.send_event("event", {title: @events.event_name,text: @events.event_description })
		end 
		Dashing.scheduler.every '10m', :first_in => 0 do |job|
			@generals = General.last
			Dashing.send_event("general", {title: @generals.general_name,text: @generals.general_description })
		end 
		Dashing.scheduler.every '10m', :first_in => 0 do |job|
			@newjoiners = Newjoiner.last
			Dashing.send_event("new", {title: @newjoiners.new_name,text: @newjoiners.new_info })
		end 
		Dashing.scheduler.every '10m', :first_in => 0 do |job|
			@anniversaries = Anniversaries.last
			Dashing.send_event("anniversary", {title: @anniversaries.ann_name,text: @anniversaries.ann_year,text:@anniversaries.ann_wish })
		end 
		Dashing.scheduler.every '10m', :first_in => 0 do |job|
			@achievements = Achievement.last
			Dashing.send_event("ach", {title: @achievements.ach_name,text: @achievements.ach_description })
		end 
	end
end
