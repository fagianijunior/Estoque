class StorageLocationsController < ApplicationController
  # GET /storage_locations
  # GET /storage_locations.json
  def index
    @storage_locations = StorageLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storage_locations }
    end
  end

  # GET /storage_locations/new
  # GET /storage_locations/new.json
  def new
    @storage_location = StorageLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storage_location }
    end
  end

  # POST /storage_locations
  # POST /storage_locations.json
  def create
    @storage_location = StorageLocation.new(params[:storage_location])

    respond_to do |format|
      if @storage_location.save
        format.html { redirect_to storage_locations_url }
        format.json { render json: @storage_location, status: :created, location: @storage_location }
      else
        format.html { render action: "new" }
        format.json { render json: @storage_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_locations/1
  # DELETE /storage_locations/1.json
  def destroy
    @storage_location = StorageLocation.find(params[:id])
    @storage_location.destroy

    respond_to do |format|
      format.html { redirect_to storage_locations_url }
      format.json { head :no_content }
    end
  end
end
