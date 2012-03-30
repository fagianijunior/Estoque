class MaterialsController < ApplicationController

  respond_to :html, :js
  before_filter :load, except: [:create, :edit, :destroy, :update]

  def load
    @materials = paginate
    @material = Material.new
  end

  def index
  end

  def new
  end

  def edit
    @material = Material.find(params[:id])
  end

  def create
    @material = Material.new(params[:material])
    if @material.save
      flash[:notice] = "Material criado com sucesso!"
      @materials = paginate
    end
    respond_with @material
  end

  def update
    @material = Material.find(params[:id])

    if @material.update_attributes(params[:material])
      flash[:notice] = "Material atualizado com sucesso!"
      @materials = paginate
    end
    respond_with @material
  end

  def destroy
    @material = Material.find(params[:id])
    @material.destroy
    flash[:notice] = "#{@material.name} foi deletado com sucesso!" 
    @materials = paginate
    respond_with @material
  end

  private
    def paginate
       result = Material.search(params[:pesquisa]).paginate(page: params[:page], per_page: 10, order: 'name')
    end    
end
