# == Schema Information
#
# Table name: games_players
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  game_id    :integer
#  race_id    :integer
#  winner     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GamesPlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
