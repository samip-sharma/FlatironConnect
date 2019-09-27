class ModEventsController < ApplicationController

  def create
    # byebug
    start=params[:start_date]+" "+params[:start_time] + " GMT-0400 (Eastern Daylight Time)"
    end_time=params[:end_date]+" "+params[:end_time] + " GMT-0400 (Eastern Daylight Time)"
    mod_event=ModEvent.create(title:params[:title], user_id:params[:user_id], mod_id:params[:mod_id], start:start , end:end_time)
    render json: mod_event
  end

  def show
    mod_event=Mod.find(params[:id]).mod_events
    render json: mod_event
  end
  
end