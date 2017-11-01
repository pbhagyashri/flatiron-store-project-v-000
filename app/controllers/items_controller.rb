class ItemsController < ApplicationController
  def create

  end
  def show
    @item = Item.find_by(id: params[:id])
  end
end
