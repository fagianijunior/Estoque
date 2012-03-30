class StorageLocationsController < ApplicationController

  respond_to :html, :js
  before_filter :load, except: [:create, :destroy]

  def load
    @storage_locations = StorageLocation.search(params[:pesquisa]).paginate(page: params[:page], per_page: 10, order: 'name')
    @storage_location = StorageLocation.new
  end

  def index
  end

  def new
  end

  def create
    @storage_location = StorageLocation.new(params[:storage_location])
    if @storage_location.save
      flash[:notice] = "Local criado com sucesso!"
      @storage_locations = StorageLocation.paginate(page: params[:page], per_page: 10, order: 'name')
    end
    respond_with @storage_location
  end

  def destroy
    @storage_location = StorageLocation.find(params[:id])
    @storage_location.destroy
    flash[:notice] = "'#{@storage_location.name}' foi deletado com sucesso!"
    @storage_locations = StorageLocation.paginate(page: params[:page], per_page: 10, order: 'name')
    respond_with @storage_location
  end
end
