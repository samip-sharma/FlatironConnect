class ModEventsController < ApplicationController

  def create
    # byebug
    start=params[:start_date]+" "+params[:start_time] + " GMT-0400 (Eastern Daylight Time)"
    end_time=params[:end_date]+" "+params[:end_time] + " GMT-0400 (Eastern Daylight Time)"
    mod_event=ModEvent.create(title:params[:title], user_id:params[:user_id], mod_id:params[:mod_id], start:start , end:end_time)
    render json: mod_event
  end

  def show
    # byebug
    mod_event=Mod.find(params[:id]).mod_events
    render json: mod_event
  end
end



# {
#   //   'title': 'All Day Event very long title',
#   //   'allDay': false,
#   //   'start': "9/29/2019 10:36 GMT-0400 (Eastern Daylight Time)",
#   //   'end': "9/29/2019 11:36 GMT-0400 (Eastern Daylight Time)"
#   // }
