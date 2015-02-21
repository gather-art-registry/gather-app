class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @registries = Registry.all
    respond_with(@registries)
  end

  def show
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
    @registry.save
    respond_with(@registry)
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

    def registry_params
      params.require(:registry).permit(:type_of_event, :event_date, :registry_close_date, :story, :event_website, :delivery_instructions, :notes, :publish, :user_id)
    end
end
