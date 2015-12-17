
class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  # GET /meetings.json
  def index 
    @user = current_user
    @meetings = Meeting.where(user_id: @user.id)
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
     @user = current_user
     @meeting = Meeting.find(params[:id])
  end

  # GET /meetings/new
  def new
    puts "!!!!!!!!!!!!!!!!!!!!!!"
    @user = User.find(session[:user_id])
    @meeting = Meeting.new
    @response = HTTParty.get('http://magicseaweed.com/api/76a9ae619dc2aadadec2969131c1c342/forecast/?spot_id=255')
      p @response
  end

  # GET /meetings/1/edit
  def edit
    @user = current_user
    @meeting = Meeting.find(params[:id])
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @user = current_user
    @meeting = Meeting.create(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to user_meetings_path, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    @user = current_user
    @meeting = Meeting.find(params[:id])
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to user_meeting_path, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to user_meetings_path, notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:name, :start_time, :description, :surf_duration, :board, :notes, :location, :wave_height, :user_id, :localTimestamp, :minBreakingHeight, :maxBreakingHeight, :primaryHeight, :primaryPeriod, :primaryDirection, :primaryCompass, :secondaryHeight, :secondaryPeriod, :secondaryDirection, :secondaryCompass, :windSpeed, :windDirection, :windCompass, :temperature)
    end
end
