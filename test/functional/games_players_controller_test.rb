require 'test_helper'

class GamesPlayersControllerTest < ActionController::TestCase
  setup do
    @games_player = games_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create games_player" do
    assert_difference('GamesPlayer.count') do
      post :create, games_player: { match_id: @games_player.match_id, player_id: @games_player.player_id, race_id: @games_player.race_id, winner: @games_player.winner }
    end

    assert_redirected_to games_player_path(assigns(:games_player))
  end

  test "should show games_player" do
    get :show, id: @games_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @games_player
    assert_response :success
  end

  test "should update games_player" do
    put :update, id: @games_player, games_player: { match_id: @games_player.match_id, player_id: @games_player.player_id, race_id: @games_player.race_id, winner: @games_player.winner }
    assert_redirected_to games_player_path(assigns(:games_player))
  end

  test "should destroy games_player" do
    assert_difference('GamesPlayer.count', -1) do
      delete :destroy, id: @games_player
    end

    assert_redirected_to games_players_path
  end
end
