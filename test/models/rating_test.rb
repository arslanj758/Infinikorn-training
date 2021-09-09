require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @rating = Rating.new(score: 10)
  end
  test "valid if score is between 0 and 10" do
    
    # @rating.valid?
    assert_empty @rating.valid?
    # assert_empty rating.errors[:score]
    assert true
  end
  test "invalid if score less than 0" do
    rating = Rating.new(score: 10)
    rating.valid?
    assert_empty rating.errors[:score].empty?
  end
  test "invalid if score greater than 10" do
    rating = Rating.new(score: 10)
    rating.valid?
    assert_empty rating.errors[:score].empty?
  end
end
