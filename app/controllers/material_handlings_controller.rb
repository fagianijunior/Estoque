class MaterialHandlingsController < ApplicationController

  respond_to :html, :js
  before_filter :load, except: [:create, :edit, :destroy, :update]

  def load
    @material_handlings = paginate
    @material_handling = MaterialHandling.new
  end

  def index
  end

  def new
  end

  def edit
    @material_handling = MaterialHandling.find(params[:id])
  end

  def editItem
    @material_handling_item = MaterialHandlingItem.find(params[:id])
  end


  def create
    @material_handling = MaterialHandling.new(params[:material_handling])
    if @material_handling.save
      flash[:notice] = "Movimentacao criada com sucesso!"
      @material_handlings = paginate
    end
    respond_with @material_handling
  end

  def update
    @material_handling = MaterialHandling.find(params[:id])

    if @material_handling.update_attributes(params[:material_handling])
      flash[:notice] = "Movimentacao atualizada com sucesso!"
      @material_handlings = paginate
    end
    respond_with @material_handling
  end

  def destroy
    @material_handling = MaterialHandling.find(params[:id])
    @material_handling.destroy
    flash[:notice] = "#{@material_handling.name} foi deletado com sucesso!" 
    @material_handlings = paginate
    respond_with @material_handling
  end

  private
    def paginate
       result = MaterialHandling.search(params[:pesquisa]).paginate(page: params[:page], per_page: 10, order: 'handling_date')
    end    
end
