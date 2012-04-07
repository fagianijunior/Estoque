class MaterialStorageLocationController < ApplicationController

  respond_to :html, :js
  before_filter :load, except: [:create, :edit, :destroy, :update]

  def load
    @material_storage_locations = paginate
    @material_storage_location = MaterialStorageLocation.new
  end

  def index
  end

  def new
  end

  def edit
    @material_storage_location = MaterialStorageLocation.find(params[:id])
  end

  def create
    @material_storage_location = MaterialStorageLocation.new(params[:material_storage_location])
    if @material_storage_location.save
      flash[:notice] = "MaterialStorageLocation criado com sucesso!"
      @material_storage_locations = paginate
    end
    respond_with @material_storage_location
  end

  def update
    @material_storage_location = MaterialStorageLocation.find(params[:id])

    if @material_storage_location.update_attributes(params[:material_storage_location])
      flash[:notice] = "MaterialStorageLocation atualizado com sucesso!"
      @material_storage_locations = paginate
    end
    respond_with @material_storage_location
  end

  def destroy
    @material_storage_location = MaterialStorageLocation.find(params[:id])
    @material_storage_location.destroy
    flash[:notice] = "#{@material_storage_location.name} foi deletado com sucesso!" 
    @material_storage_locations = paginate
    respond_with @material_storage_location
  end

  private
    def paginate
       result = MaterialStorageLocation.search(params[:pesquisa]).paginate(page: params[:page], per_page: 10)
    end    
end
