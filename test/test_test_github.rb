require 'helper'
require 'test_github'

class TestTestGitHub < Minitest::Test

  def test_version
    version = TestGitHub.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end

  def test_method
    r=TestGitHub.test
    assert(r == 'test', 'the test output should be "test"')
  end
end
