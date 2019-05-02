require 'test_helper'

class GameTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "creates game" do
	game = Game.new
   	assert game.save
   end
test "should not save article without title" do
  game = Game.new
  assert_not game.save
end
end
