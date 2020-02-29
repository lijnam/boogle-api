require 'test_helper'

class BoardFactoryTest  < ActionDispatch::IntegrationTest
  test "should generate board" do
    @board = BoardFactory.new
    @board=@board.generate(cols:4,rows:4)
    # puts @board
    assert_equal(4,@board.length)
  end

end
