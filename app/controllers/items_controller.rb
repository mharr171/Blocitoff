class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = 'Item was saved.'
      redirect_to root_path
    else
      flash[:alert] = 'There was an error saving the item. Please try again.'
      redirect_to root_path
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = 'Item was completed.'
      redirect_to root_path
    else
      flash[:alert] = 'There was an error completing the item. Please try again.'
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
