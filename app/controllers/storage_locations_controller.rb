class StorageLocationsController < ApplicationController

  respond_to :html, :json, :js
  before_filter :load

  def load
    @storage_locations = StorageLocation.search(params[:pesquisa]).paginate(page: params[:page], per_page: 10, order: 'name')
    @storage_location = StorageLocation.new
  end

  # GET /storage_locations
  # GET /storage_locations.json
  def index
  end

  # GET /storage_locations/new
  # GET /storage_locations/new.json
  def new
  end

  # POST /storage_locations
  # POST /storage_locations.json
  def create
    @storage_location = StorageLocation.new(params[:storage_location])
    if @storage_location.save
      flash[:notice] = "Local criado com sucesso!"
      @storage_locations = StorageLocation.paginate(page: params[:page], per_page: 10, order: 'name')
    end
    respond_with @storage_location
  end

  # DELETE /storage_locations/1
  # DELETE /storage_locations/1.json
  def destroy
    @storage_location = StorageLocation.find(params[:id])
    @storage_location.destroy
    flash[:notice] = "'#{@storage_location.name}' foi deletado com sucesso!"
    @storage_locations = StorageLocation.paginate(page: params[:page], per_page: 10, order: 'name')
    respond_with @storage_location
  end
end
