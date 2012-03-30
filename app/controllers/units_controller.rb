class UnitsController < ApplicationController
  respond_to :html, :js
  before_filter :load, except: [:create, :destroy]

  def load
    @units = Unit.search(params[:pesquisa]).paginate(per_page: 10, page: params[:page], order: 'name')
    @unit = Unit.new
  end

  def index
  end

  def new
  end

  def create
    @unit = Unit.new(params[:unit])
    if @unit.save
      flash[:notice] = "Unidade criada com sucesso!"
      @units = Unit.paginate(page: params[:page], per_page: 10, order: 'name')
    end
    respond_with @unit 
  end

  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    flash[:notice] = "'#{@unit.name}' foi deletado com sucesso!"
    @units = Unit.paginate(page: params[:page], per_page: 10, order: 'name')
    respond_with @unit
  end
end
