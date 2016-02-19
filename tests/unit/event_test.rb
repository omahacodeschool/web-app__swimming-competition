require 'test_helper'

class EventTest < Minitest::Test
  def setup
    super

    @butterfly = Style.new
    @butterfly.style = "butterfly"
    @butterfly.save

    @backstroke = Style.new
    @backstroke.style = "backstroke"
    @backstroke.save

    @hundred_m_butterfly = Event.new
    @hundred_m_butterfly.style_id = @butterfly.id
    @hundred_m_butterfly.save
  end

  def test_display_style_of_event
    assert_equal(@hundred_m_butterfly.display_style_of_event, "butterfly")
    refute_equal(@hundred_m_butterfly.display_style_of_event, "backstroke")
  end
end