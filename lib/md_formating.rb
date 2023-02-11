# frozen_string_literal: true

module MdFormating
  def ruby_example_code(text)
    (+'```ruby') << "\n#{text}\n```"
  end
end
