class RostersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_roster, only: %i[show edit update destroy]

  # GET /rosters or /rosters.json
  def index
    return @rosters = [] if current_user.nil?
    @rosters = current_user.rosters
  end

  # GET /rosters/1 or /rosters/1.json
  def show
  end

  # GET /rosters/new
  def new
    @roster = current_user.rosters.new
  end

  # GET /rosters/1/edit
  def edit
  end

  # POST /rosters or /rosters.json
  def create
    @roster = current_user.rosters.new(roster_params)

    respond_to do |format|
      if @roster.save
        format.html { redirect_to roster_url(@roster), notice: "Roster was successfully created." }
        format.json { render :show, status: :created, location: @roster }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rosters/1 or /rosters/1.json
  def update
    respond_to do |format|
      if @roster.update(roster_params)
        format.html { redirect_to roster_url(@roster), notice: "Roster was successfully updated." }
        format.json { render :show, status: :ok, location: @roster }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rosters/1 or /rosters/1.json
  def destroy
    @roster.destroy

    respond_to do |format|
      format.html { redirect_to rosters_url, notice: "Roster was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roster
      @roster = current_user.rosters.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roster_params
      params.fetch(:roster, {}).permit(:name, :faction)
    end
end
