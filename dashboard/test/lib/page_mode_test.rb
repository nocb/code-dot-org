require 'test_helper'
require 'dynamic_config/page_mode'

class PageModeTest < ActionController::TestCase
  test 'returns sw or mc if unset' do
    assert ['feature-starwars', 'feature-mc'].include?(PageMode.get(@request))
  end

  test 'get and set' do
    PageMode.set_default 'foo'
    assert_equal 'foo', PageMode.get(@request)
    PageMode.set_default 'bar'
    assert_equal 'bar', PageMode.get(@request)
  end
end
