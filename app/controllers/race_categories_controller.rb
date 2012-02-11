class RaceCategoriesController < ApplicationController
  # GET /race_categories
  # GET /race_categories.json
  def index
    @race_categories = RaceCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @race_categories }
    end
  end

  # GET /race_categories/1
  # GET /race_categories/1.json
  def show
    @race_category = RaceCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race_category }
    end
  end

  # GET /race_categories/new
  # GET /race_categories/new.json
  def new
    @race_category = RaceCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @race_category }
    end
  end

  # GET /race_categories/1/edit
  def edit
    @race_category = RaceCategory.find(params[:id])
  end

  # POST /race_categories
  # POST /race_categories.json
  def create
    @race_category = RaceCategory.new(params[:race_category])

    respond_to do |format|
      if @race_category.save
        format.html { redirect_to @race_category, notice: 'Race category was successfully created.' }
        format.json { render json: @race_category, status: :created, location: @race_category }
      else
        format.html { render action: "new" }
        format.json { render json: @race_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /race_categories/1
  # PUT /race_categories/1.json
  def update
    @race_category = RaceCategory.find(params[:id])

    respond_to do |format|
      if @race_category.update_attributes(params[:race_category])
        format.html { redirect_to @race_category, notice: 'Race category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @race_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_categories/1
  # DELETE /race_categories/1.json
  def destroy
    @race_category = RaceCategory.find(params[:id])
    @race_category.destroy

    respond_to do |format|
      format.html { redirect_to race_categories_url }
      format.json { head :ok }
    end
  end
end
