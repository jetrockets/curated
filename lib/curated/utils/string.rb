# frozen_string_literal: true

require 'net/http'
require 'json'

module Utils
  extend self

  def underscore(camel_cased_word)
    return camel_cased_word unless /[A-Z-]|::/.match?(camel_cased_word)

    word = camel_cased_word.to_s.gsub('::', '/')
    word.gsub!(/([A-Z\d]+)([A-Z][a-z])/, '\1_\2')
    word.gsub!(/([a-z\d])([A-Z])/, '\1_\2')
    word.tr!('-', '_')
    word.downcase!
    word
  end

  def demodulize(path)
    path = path.to_s

    if (i = path.rindex('::'))
      path[(i + 2)..]
    else
      path
    end
  end

  def humanize(lower_case_and_underscored_word, capitalize: true, keep_id_suffix: false)
    result = lower_case_and_underscored_word.to_s.dup

    result.tr!("_", " ")
    result.lstrip!
    unless keep_id_suffix
      result.delete_suffix!(" id")
    end

    result.gsub!(/([a-z\d]+)/i) do |match|
      match.downcase!
      match
    end

    if capitalize
      result.sub!(/\A\w/) do |match|
        match.upcase!
        match
      end
    end

    result
  end

  def titleize(word, keep_id_suffix: false)
    humanize(underscore(word), keep_id_suffix: keep_id_suffix).gsub(/\b(?<!\w['’`()])[a-z]/) do |match|
      match.capitalize
    end
  end
end
