# frozen_string_literal: true

require 'net/http'
require 'json'

module Utils
  extend self

  def github_contributors_for_file(repo, path)
    uri = URI("https://api.github.com/repos/#{repo}/commits?path=#{path}&per_page=20")

    response = Net::HTTP.get(uri)
    commits = JSON.parse(response)

    commits.map { |commit| commit['author']['login'] }.uniq
  end

  def github_link_to_login(login)
    "https://github.com/#{login}"
  end
end
