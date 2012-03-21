class HandlingItemsController < ApplicationController
  # GET /handling_items
  # GET /handling_items.json
  def index
    @handling_items = HandlingItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handling_items }
    end
  end

  # GET /handling_items/1
  # GET /handling_items/1.json
  def show
    @handling_item = HandlingItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handling_item }
    end
  end

  # GET /handling_items/new
  # GET /handling_items/new.json
  def new
    @handling_item = HandlingItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handling_item }
    end
  end

  # GET /handling_items/1/edit
  def edit
    @handling_item = HandlingItem.find(params[:id])
  end

  # POST /handling_items
  # POST /handling_items.json
  def create
    @handling_item = HandlingItem.new(params[:handling_item])

    respond_to do |format|
      if @handling_item.save
        format.html { redirect_to @handling_item, notice: 'Handling item was successfully created.' }
        format.json { render json: @handling_item, status: :created, location: @handling_item }
      else
        format.html { render action: "new" }
        format.json { render json: @handling_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handling_items/1
  # PUT /handling_items/1.json
  def update
    @handling_item = HandlingItem.find(params[:id])

    respond_to do |format|
      if @handling_item.update_attributes(params[:handling_item])
        format.html { redirect_to @handling_item, notice: 'Handling item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handling_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handling_items/1
  # DELETE /handling_items/1.json
  def destroy
    @handling_item = HandlingItem.find(params[:id])
    @handling_item.destroy

    respond_to do |format|
      format.html { redirect_to handling_items_url }
      format.json { head :no_content }
    end
  end
end
