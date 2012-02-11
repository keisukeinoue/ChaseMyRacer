class PointCategoriesController < ApplicationController
  # GET /point_categories
  # GET /point_categories.json
  def index
    @point_categories = PointCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @point_categories }
    end
  end

  # GET /point_categories/1
  # GET /point_categories/1.json
  def show
    @point_category = PointCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @point_category }
    end
  end

  # GET /point_categories/new
  # GET /point_categories/new.json
  def new
    @point_category = PointCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @point_category }
    end
  end

  # GET /point_categories/1/edit
  def edit
    @point_category = PointCategory.find(params[:id])
  end

  # POST /point_categories
  # POST /point_categories.json
  def create
    @point_category = PointCategory.new(params[:point_category])

    respond_to do |format|
      if @point_category.save
        format.html { redirect_to @point_category, notice: 'Point category was successfully created.' }
        format.json { render json: @point_category, status: :created, location: @point_category }
      else
        format.html { render action: "new" }
        format.json { render json: @point_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /point_categories/1
  # PUT /point_categories/1.json
  def update
    @point_category = PointCategory.find(params[:id])

    respond_to do |format|
      if @point_category.update_attributes(params[:point_category])
        format.html { redirect_to @point_category, notice: 'Point category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @point_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_categories/1
  # DELETE /point_categories/1.json
  def destroy
    @point_category = PointCategory.find(params[:id])
    @point_category.destroy

    respond_to do |format|
      format.html { redirect_to point_categories_url }
      format.json { head :ok }
    end
  end
end
