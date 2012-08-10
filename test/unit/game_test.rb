# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  number       :integer
#  player1_race :string(255)
#  player2_race :string(255)
#  map          :string(255)
#  winner       :string(255)
#  video        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
