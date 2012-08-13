class MatchesPlayersController < ApplicationController
  # GET /matches_players
  # GET /matches_players.json
  def index
    @matches_players = MatchesPlayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matches_players }
    end
  end

  # GET /matches_players/1
  # GET /matches_players/1.json
  def show
    @matches_player = MatchesPlayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @matches_player }
    end
  end

  # GET /matches_players/new
  # GET /matches_players/new.json
  def new
    @matches_player = MatchesPlayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matches_player }
    end
  end

  # GET /matches_players/1/edit
  def edit
    @matches_player = MatchesPlayer.find(params[:id])
  end

  # POST /matches_players
  # POST /matches_players.json
  def create
    @matches_player = MatchesPlayer.new(params[:matches_player])

    respond_to do |format|
      if @matches_player.save
        format.html { redirect_to @matches_player, notice: 'Matches player was successfully created.' }
        format.json { render json: @matches_player, status: :created, location: @matches_player }
      else
        format.html { render action: "new" }
        format.json { render json: @matches_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /matches_players/1
  # PUT /matches_players/1.json
  def update
    @matches_player = MatchesPlayer.find(params[:id])

    respond_to do |format|
      if @matches_player.update_attributes(params[:matches_player])
        format.html { redirect_to @matches_player, notice: 'Matches player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @matches_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches_players/1
  # DELETE /matches_players/1.json
  def destroy
    @matches_player = MatchesPlayer.find(params[:id])
    @matches_player.destroy

    respond_to do |format|
      format.html { redirect_to matches_players_url }
      format.json { head :no_content }
    end
  end
end
