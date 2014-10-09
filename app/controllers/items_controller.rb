class ItemsController < ApplicationController
  def index
    if current_user
      @items = current_user.items
    else
      redirect_to new_user_session_path
    end
  end

  def show
    if current_user
      @item = current_user.items.find(params[:id])
    end
  end

  def new
  end

  def edit
  end
end
