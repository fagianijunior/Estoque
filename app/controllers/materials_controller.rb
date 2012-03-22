class MaterialsController < ApplicationController

  respond_to :html, :json, :js
  before_filter :load

  def load
    @materials = Material.all
    @material = Material.new
  end

  # GET /materials
  # GET /materials.json
  def index
  end

  # GET /materials/new
  # GET /materials/new.json
  def new
  end

  # GET /materials/1/edit
  def edit
    @material = Material.find(params[:id])
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(params[:material])
    if @material.save
      flash[:notice] = "Material criado com sucesso!"
      @materials = Material.all
    end
    respond_with @material
  end

  # PUT /materials/1
  # PUT /materials/1.json
  def update
    @material = Material.find(params[:id])

    if @material.update_attributes(params[:material])
      flash[:notice] = "Material atualizado com sucesso!"
      @materials = Material.all
    end
    respond_with @material
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material = Material.find(params[:id])
    @material.destroy
    flash[:notice] = "#{@material.name} foi deletado com sucesso!" 
    @materials = Material.all 
    respond_with @material
  end
end
