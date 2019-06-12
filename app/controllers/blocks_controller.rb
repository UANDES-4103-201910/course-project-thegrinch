class BlocksController < ApplicationController
  before_action :set_user

  def create
    if already_blocked?
      follow=Block.where(owner_id: current_user.id, blocked_id: @user.id)
      follow.destroy_all
      flash[:notice] = "User Unblocked"
    else
      block= Block.new(owner_id: current_user.id, blocked_id: @user.id)
      if block.save
        flash[:notice] = "User blocked"
      else
        flash[:notice] = "Error"
      end
    end
    redirect_to user_path(@user)
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def already_blocked?
    Block.where(owner_id: current_user.id, blocked_id: @user.id).exists?
  end
end
