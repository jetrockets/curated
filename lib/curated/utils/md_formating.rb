# frozen_string_literal: true

module Utils
  extend self

  def code_block(language, text = nil)
    value = (+"```#{language}") << "\n#{text}```"

    block_given? ? yield(value) : value
  end
end
