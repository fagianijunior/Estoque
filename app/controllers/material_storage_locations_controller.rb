class MaterialStorageLocationsController < ApplicationController
  # GET /material_storage_locations
  # GET /material_storage_locations.json
  def index
    @material_storage_locations = MaterialStorageLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @material_storage_locations }
    end
  end

  # GET /material_storage_locations/1
  # GET /material_storage_locations/1.json
  def show
    @material_storage_location = MaterialStorageLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material_storage_location }
    end
  end

  # GET /material_storage_locations/new
  # GET /material_storage_locations/new.json
  def new
    @material_storage_location = MaterialStorageLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material_storage_location }
    end
  end

  # GET /material_storage_locations/1/edit
  def edit
    @material_storage_location = MaterialStorageLocation.find(params[:id])
  end

  # POST /material_storage_locations
  # POST /material_storage_locations.json
  def create
    @material_storage_location = MaterialStorageLocation.new(params[:material_storage_location])

    respond_to do |format|
      if @material_storage_location.save
        format.html { redirect_to @material_storage_location, notice: 'Material storage location was successfully created.' }
        format.json { render json: @material_storage_location, status: :created, location: @material_storage_location }
      else
        format.html { render action: "new" }
        format.json { render json: @material_storage_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /material_storage_locations/1
  # PUT /material_storage_locations/1.json
  def update
    @material_storage_location = MaterialStorageLocation.find(params[:id])

    respond_to do |format|
      if @material_storage_location.update_attributes(params[:material_storage_location])
        format.html { redirect_to @material_storage_location, notice: 'Material storage location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material_storage_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_storage_locations/1
  # DELETE /material_storage_locations/1.json
  def destroy
    @material_storage_location = MaterialStorageLocation.find(params[:id])
    @material_storage_location.destroy

    respond_to do |format|
      format.html { redirect_to material_storage_locations_url }
      format.json { head :no_content }
    end
  end
end
