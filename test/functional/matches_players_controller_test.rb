require 'test_helper'

class MatchesPlayersControllerTest < ActionController::TestCase
  setup do
    @matches_player = matches_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matches_player" do
    assert_difference('MatchesPlayer.count') do
      post :create, matches_player: { match_id: @matches_player.match_id, player_id: @matches_player.player_id, winner: @matches_player.winner }
    end

    assert_redirected_to matches_player_path(assigns(:matches_player))
  end

  test "should show matches_player" do
    get :show, id: @matches_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matches_player
    assert_response :success
  end

  test "should update matches_player" do
    put :update, id: @matches_player, matches_player: { match_id: @matches_player.match_id, player_id: @matches_player.player_id, winner: @matches_player.winner }
    assert_redirected_to matches_player_path(assigns(:matches_player))
  end

  test "should destroy matches_player" do
    assert_difference('MatchesPlayer.count', -1) do
      delete :destroy, id: @matches_player
    end

    assert_redirected_to matches_players_path
  end
end
