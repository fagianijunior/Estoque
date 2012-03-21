class MaterialHandlingsController < ApplicationController
  # GET /material_handlings
  # GET /material_handlings.json
  def index
    @material_handlings = MaterialHandling.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @material_handlings }
    end
  end

  # GET /material_handlings/1
  # GET /material_handlings/1.json
  def show
    @material_handling = MaterialHandling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material_handling }
    end
  end

  # GET /material_handlings/new
  # GET /material_handlings/new.json
  def new
    @material_handling = MaterialHandling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material_handling }
    end
  end

  # GET /material_handlings/1/edit
  def edit
    @material_handling = MaterialHandling.find(params[:id])
  end

  # POST /material_handlings
  # POST /material_handlings.json
  def create
    @material_handling = MaterialHandling.new(params[:material_handling])

    respond_to do |format|
      if @material_handling.save
        format.html { redirect_to @material_handling, notice: 'Material handling was successfully created.' }
        format.json { render json: @material_handling, status: :created, location: @material_handling }
      else
        format.html { render action: "new" }
        format.json { render json: @material_handling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /material_handlings/1
  # PUT /material_handlings/1.json
  def update
    @material_handling = MaterialHandling.find(params[:id])

    respond_to do |format|
      if @material_handling.update_attributes(params[:material_handling])
        format.html { redirect_to @material_handling, notice: 'Material handling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material_handling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_handlings/1
  # DELETE /material_handlings/1.json
  def destroy
    @material_handling = MaterialHandling.find(params[:id])
    @material_handling.destroy

    respond_to do |format|
      format.html { redirect_to material_handlings_url }
      format.json { head :no_content }
    end
  end
end
