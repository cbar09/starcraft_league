# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  game_number :integer
#  match_id    :integer
#  map_id      :integer
#  video_link  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
