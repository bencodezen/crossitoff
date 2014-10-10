class Users::ItemsController < ApplicationController

  def index
    if current_user
      @user = User.find(params[:user_id])
      @item = Item.new
      @items = current_user.items
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)
    @item.finished = false

    if @item.save
      flash[:notice] = "Item was saved."
    else
      flash[:error] = "There was an error saving this item."
    end

    redirect_to user_items_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was completed."
    else
      flash[:error] = "Item could not be completed. Please try again."
    end

    redirect_to user_items_path(@user)
  end
  
  private

  def item_params
    params.require(:item).permit(:title)
  end

end
