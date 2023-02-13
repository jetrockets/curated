# frozen_string_literal: true

require 'net/http'
require 'json'

class Npm
  Package = Struct.new(:name, :description, :source_code_url)

  def self.info(package_name)
    uri = URI("https://registry.npmjs.org/#{package_name}")
    response = Net::HTTP.get(uri)
    package_info = JSON.parse(response)

    if package_info.key?('error')
      raise "No package found with the name '#{package_name}'"
    end

    name = package_info['name']
    description = package_info['description']
    repository = package_info['repository']

    source_code_url = nil
    if repository
      source_code_url = repository['url'].gsub('git+', '').gsub('.git', '')
    end

    Package.new(name, description, source_code_url)
  end
end
