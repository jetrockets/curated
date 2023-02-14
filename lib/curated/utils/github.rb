# frozen_string_literal: true

require 'net/http'
require 'json'

module Utils
  extend self

  def github_contributors_for_file(repo, path)
    uri = URI("https://api.github.com/repos/#{repo}/commits?path=#{path}&per_page=20")

    request = Net::HTTP::Get.new(uri)
    if ENV['GITHUB_TOKEN']
      request['Authorization'] = "Bearer #{ENV["GITHUB_TOKEN"]}"
      request['Accept'] = 'application/vnd.github+json'
    end

    response =
      Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end

    if response.code == '200'
      commits = JSON.parse(response.body)
      commits.map { |commit| commit['author']['login'] }.uniq
    else
      raise "GitHub API error: #{response.code} #{response.body}"
    end
  end

  def github_link_to_login(login)
    "https://github.com/#{login}"
  end
end
