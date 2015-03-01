class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @artists = Artist.all
    respond_with(@artists)
  end

  def show
    @items = @artist.items.all
    respond_with(@artist)
  end

  def new
    @artist = Artist.new
    respond_with(@artist)
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    respond_with(@artist)
  end

  def update
    @artist.update(artist_params)
    respond_with(@artist)
  end

  def destroy
    @artist.destroy
    respond_with(@artist)
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:primary_identifier, :secondary_identifier, :artist_statement, :artist_bio, :image, :website, :twitter, :facebook, :studio_address, :studio_city, :studio_state, :studio_zip, :active, :studio_pickup, :local_delivery, :delivery_instructions, :type_of_product_id, :notes)
    end
end
