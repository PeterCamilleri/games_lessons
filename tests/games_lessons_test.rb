require_relative '../lib/games_lessons'
gem              'minitest'
require          'minitest/autorun'
require          'minitest_visible'

class GamesLessonsTest < Minitest::Test

  #Track mini-test progress.
  include MinitestVisible

  def test_that_it_has_a_version_number
    refute_nil ::GamesLessons::VERSION
    assert(::GamesLessons::VERSION.is_a?(String))
    assert(/\A\d+\.\d+\.\d+/ =~ ::GamesLessons::VERSION)
  end

end
