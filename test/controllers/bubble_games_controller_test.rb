require 'test_helper'

class BubbleGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bubble_game = bubble_games(:one)
  end

  test "should get index" do
    get bubble_games_url, as: :json
    assert_response :success
  end

  test "should create bubble_game" do
    assert_difference('BubbleGame.count') do
      post bubble_games_url, params: { bubble_game: { pseudo: @bubble_game.pseudo, score: @bubble_game.score } }, as: :json
    end

    assert_response 201
  end

  test "should show bubble_game" do
    get bubble_game_url(@bubble_game), as: :json
    assert_response :success
  end

  test "should update bubble_game" do
    patch bubble_game_url(@bubble_game), params: { bubble_game: { pseudo: @bubble_game.pseudo, score: @bubble_game.score } }, as: :json
    assert_response 200
  end

  test "should destroy bubble_game" do
    assert_difference('BubbleGame.count', -1) do
      delete bubble_game_url(@bubble_game), as: :json
    end

    assert_response 204
  end
end
