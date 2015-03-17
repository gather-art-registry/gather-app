class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    @artist = Artist.find(@item.artist_id)
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
    @artist = Artist.find(@item.artist_id)
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with(@item)
  end

  def update
    @item.update(item_params)
    respond_with(@item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    # def set_artist
    #   @artist = Artist.find(params[:artist_id])
    # end

    def item_params
      params.require(:item).permit(:name, :artist_id, :description, :price, :item_availability_id, 
        :quantity, :special_order, :turn_around_time, :production_category_id, :delivery_timing_id, 
        :shipping_instruction_id, :notes, :image_1, :image_2, :image_3, :image_4, {:medium_ids => []}, 
        {:category_ids=> []})
    end
end
