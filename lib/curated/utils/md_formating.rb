# frozen_string_literal: true

module Utils
  extend self
  def ruby_example_code(text)
    (+'```ruby') << "\n#{text}\n```"
  end
end
