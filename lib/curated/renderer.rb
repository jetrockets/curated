# frozen_string_literal: true

require 'erb'
require_relative 'md_formating'

class Curated::Renderer
  def call
    template = File.read('lib/templates/readme.md.erb').gsub(/^  /, '')

    erb = ERB.new(template, trim_mode: '%<>')
    File.write('README.md', erb.result(binding))
  end

  protected

  def h
    @h ||= Class.new do
      include Utils
    end.new
  end

  def ruby_curates
    Curated.descendants.group_by(&:category).sort_by { |category, _| category.name }
  end
end
