class DeclinesController < ApplicationController
  def index
  end
  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    if @guest.update(guest_params)
      
      flash[:notice] = "Your details have been updated successfully.".html_safe
      redirect_to @guest
  
    else
      render :edit
    end
  end
end
