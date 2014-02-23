class EventsSponsersController < ApplicationController
  before_action :set_events_sponser, only: [:show, :edit, :update, :destroy]

  # GET /events_sponsers
  # GET /events_sponsers.json
  def index
    @events_sponsers = EventsSponser.all
  end

  # GET /events_sponsers/1
  # GET /events_sponsers/1.json
  def show
  end

  # GET /events_sponsers/new
  def new
    @events_sponser = EventsSponser.new
  end

  # GET /events_sponsers/1/edit
  def edit
  end

  # POST /events_sponsers
  # POST /events_sponsers.json
  def create
    @events_sponser = EventsSponser.new(events_sponser_params)

    respond_to do |format|
      if @events_sponser.save
        format.html { redirect_to @events_sponser, notice: 'Events sponser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @events_sponser }
      else
        format.html { render action: 'new' }
        format.json { render json: @events_sponser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_sponsers/1
  # PATCH/PUT /events_sponsers/1.json
  def update
    respond_to do |format|
      if @events_sponser.update(events_sponser_params)
        format.html { redirect_to @events_sponser, notice: 'Events sponser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @events_sponser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_sponsers/1
  # DELETE /events_sponsers/1.json
  def destroy
    @events_sponser.destroy
    respond_to do |format|
      format.html { redirect_to events_sponsers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_sponser
      @events_sponser = EventsSponser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events_sponser_params
      params.require(:events_sponser).permit(:event_id, :sponser_id)
    end
end
