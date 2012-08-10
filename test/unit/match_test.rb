# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  player1    :string(255)
#  player2    :string(255)
#  winner     :string(255)
#  week       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
