class TestSiskel < Minitest::Test
  def test_movie_title
    movie = Siskel.new("Kill Bill")
    assert_equal "Kill Bill: Vol. 1", movie.title
  end
end

def initialize Minitest
	@Minitest = Minitest