class UnitsController < ApplicationController

  respond_to :html, :js, :json
  before_filter :load

  def load
    @units = Unit.all
    @unit = Unit.new
  end
  # GET /units
  # GET /units.json
  def index
  end

  # GET /units/new
  # GET /units/new.json
  def new
  end

  # POST /units
  # POST /units.json
  def create
    @unit = Unit.new(params[:unit])
    if @unit.save
      flash[:notice] = "Unidade criada com sucesso!"
      @units = Unit.all
    end
    respond_with @unit 
  end

  # DELETE /units/1
  # DELETE /units/1.json
  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    flash[:notice] = "'#{@unit.name}' foi deletado com sucesso!"
    @units = Unit.all
    respond_with @unit
  end
end
