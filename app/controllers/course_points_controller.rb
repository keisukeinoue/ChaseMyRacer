class CoursePointsController < ApplicationController
  # GET /course_points
  # GET /course_points.json
  def index
    @course_points = CoursePoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_points }
    end
  end

  # GET /course_points/1
  # GET /course_points/1.json
  def show
    @course_point = CoursePoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_point }
    end
  end

  # GET /course_points/new
  # GET /course_points/new.json
  def new
    @course_point = CoursePoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_point }
    end
  end

  # GET /course_points/1/edit
  def edit
    @course_point = CoursePoint.find(params[:id])
  end

  # POST /course_points
  # POST /course_points.json
  def create
    @course_point = CoursePoint.new(params[:course_point])

    respond_to do |format|
      if @course_point.save
        format.html { redirect_to @course_point, notice: 'Course point was successfully created.' }
        format.json { render json: @course_point, status: :created, location: @course_point }
      else
        format.html { render action: "new" }
        format.json { render json: @course_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_points/1
  # PUT /course_points/1.json
  def update
    @course_point = CoursePoint.find(params[:id])

    respond_to do |format|
      if @course_point.update_attributes(params[:course_point])
        format.html { redirect_to @course_point, notice: 'Course point was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_points/1
  # DELETE /course_points/1.json
  def destroy
    @course_point = CoursePoint.find(params[:id])
    @course_point.destroy

    respond_to do |format|
      format.html { redirect_to course_points_url }
      format.json { head :ok }
    end
  end
end
