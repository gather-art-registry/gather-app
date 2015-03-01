class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]
  before_action :set_user, except: :admin_index

  respond_to :html

  def index
    @registries = Registry.all
    respond_with(@registries)
  end

  def admin_index
    @registries = Registry.all
    respond_with(@registries)
  end

  def show
    @items = Item.all
    respond_with(@registry)
  end

  def new
    @registry = Registry.new
    respond_with(@registry)
  end

  def edit
  end

  def create
    @registry = Registry.new(registry_params)

    if @registry.save
      redirect_to action: show, id: @registry.id, user_id: @user.id, notice: 'Registry was successfully created.'
    else
      render :new 
    end
    # respond_with(@regstiry)
  end

  def update
    @registry.update(registry_params)
    respond_with(@registry)
  end

  def destroy
    @registry.destroy
    respond_with(@registry)
  end

  private
    def set_registry
      @registry = Registry.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def registry_params
      params.require(:registry).permit(:type_of_event, :event_date, :registry_close_date, :story, :event_website, :delivery_instructions, :notes, :publish, :user_id)
    end
end
