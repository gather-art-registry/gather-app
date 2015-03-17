class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    @galleries = Gallery.all
    respond_with(@galleries)
  end

  def categories
    @categories = Gallery.all
  end

  def show
    @category = Category.where(name: @gallery.name).first
    @items = ItemCategory.where(category_id: @category.id).each {|item_category| item_category.item }
    respond_with(@gallery)
  end

  def new
    @gallery = Gallery.new
    respond_with(@gallery)
  end

  def edit
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.save
    respond_with(@gallery)
  end

  def update
    @gallery.update(gallery_params)
    respond_with(@gallery)
  end

  def destroy
    @gallery.destroy
    respond_with(@gallery)
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:name, :description, :artist_id)
    end
end
