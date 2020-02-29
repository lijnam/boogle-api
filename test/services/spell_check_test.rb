require "test_helper"

class SpellCheckTest < ActionDispatch::IntegrationTest
  test "checks correct spelling" do
    @spellCheck = SpellCheck.new("correct")
    @check = @spellCheck.check
    assert_equal(true, @check)
  end

  test "checks incorrect spelling" do
    @spellCheck = SpellCheck.new("asdasdasd")
    @check = @spellCheck.check
    assert_equal(false, @check)
  end
end
