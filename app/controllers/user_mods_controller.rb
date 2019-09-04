class UserModsController < ApplicationController
  def show
    render json: Mod.find(params[:id]).users
  end

  def pendingModUser
    arr=UserMod.all.select {|user| !user.accepted}
    render json: arr
  end

  def acceptModUser
    user_mod=UserMod.find(params[:id])
    user_mod.accepted=true
    user_mod.save
    arr=UserMod.all.select {|user| !user.accepted}
    render json: arr
  end


  def rejectModUser
    user_mod=UserMod.find(params[:id])
    user_mod.destroy()
    arr=UserMod.all.select {|user| !user.accepted}
    render json: arr
  end
end
