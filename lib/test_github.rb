require 'test_github/version'

# Module TestGithub
module TestGitHub
  # make all methods available
  extend self

  # test method
  # @input empty
  # @output string
  def test
    "test"
  end

  def ugly_method
    if true
      if true
        if true
          if true
            if true
              if true
                true
              end
            end
          end
        end
      end
    end
  end
end
