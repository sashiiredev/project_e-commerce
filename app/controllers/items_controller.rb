class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def show
    @it = Item.find(params[:id])
  end
end
