class BubbleGamesController < ApplicationController
  before_action :set_bubble_game, only: [:show, :update, :destroy]

  # GET /bubble_games
  # GET /bubble_games.json
  def index
    @bubble_games = BubbleGame.all
  end

  # GET /bubble_games/1
  # GET /bubble_games/1.json
  def show
  end

  # POST /bubble_games
  # POST /bubble_games.json
  def create
    @bubble_game = BubbleGame.new(bubble_game_params)

    if @bubble_game.save
      render :show, status: :created, location: @bubble_game
    else
      render json: @bubble_game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bubble_games/1
  # PATCH/PUT /bubble_games/1.json
  def update
    if @bubble_game.update(bubble_game_params)
      render :show, status: :ok, location: @bubble_game
    else
      render json: @bubble_game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bubble_games/1
  # DELETE /bubble_games/1.json
  def destroy
    @bubble_game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bubble_game
      @bubble_game = BubbleGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bubble_game_params
      params.require(:bubble_game).permit(:pseudo, :score)
    end
end
