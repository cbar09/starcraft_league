# == Schema Information
#
# Table name: matches_players
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  match_id   :integer
#  winner     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MatchesPlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
