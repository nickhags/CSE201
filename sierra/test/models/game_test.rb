require 'test_helper'

class GameTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "creates game" do
	game = Game.new
   	assert game.save
   end
end
