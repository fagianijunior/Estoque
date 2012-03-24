# encoding: UTF-8
class MaterialHandlingsController < ApplicationController

  respond_to :html, :js
  before_filter :load

  def load
    @material_handlings = MaterialHandling.all 
    @material_handling = MaterialHandling.new
  end
  # GET /material_handlings
  # GET /material_handlings.json
  def index
    @material_handling.handling_items.build
  end

  # GET /material_handlings/1
  # GET /material_handlings/1.json
  def show
    @material_handling = MaterialHandling.find(params[:id])
    respond_with @material_handling
  end

  # GET /material_handlings/new
  # GET /material_handlings/new.json
  def new
  end

  # GET /material_handlings/1/edit
  def edit
    @material_handling = MaterialHandling.find(params[:id])
  end

  # POST /material_handlings
  # POST /material_handlings.json
  def create
    @material_handling = MaterialHandling.new(params[:material_handling])
    if @material_handling.save
      flash[:notice] = 'Material handling was successfully created.'
      @material_handlings = MaterialHandling.all
    end
    respond_with @material_handling do |format|
      format.html { redirect_to material_handlings_path }
    end
  end

  # PUT /material_handlings/1
  # PUT /material_handlings/1.json
  def update
    @material_handling = MaterialHandling.find(params[:id])
    if @material_handling.update_attributes(params[:material_handling])
      flash[:notice] = 'Material handling was successfully updated.'
      @material_handlings = MaterialHandling.all
    end
    respond_with @material_handling
  end

  # DELETE /material_handlings/1
  # DELETE /material_handlings/1.json
  def destroy
    @material_handling = MaterialHandling.find(params[:id])
    @material_handling.destroy
    flash[:notice] = 'Entrada/Saída excluída com sucesso'
    @material_handlings = MaterialHandling.all
    respond_with @material_handling
  end
end
