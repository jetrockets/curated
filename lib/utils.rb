# frozen_string_literal: true

require 'net/http'
require 'json'

module Utils
  extend self

  def contributors_for_file(repo, path)
    uri = URI("https://api.github.com/repos/#{repo}/commits?path=#{path}&per_page=20")

    response = Net::HTTP.get(uri)
    commits = JSON.parse(response)

    commits.map { |commit| commit['author']['login'] }.uniq
  end

  def github_link_to_login(login)
    "https://github.com/#{login}"
  end

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
end
