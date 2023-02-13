# frozen_string_literal: true

class Curated::NpmPackage < Curated
  class << self
    def npmjs_info
      @npmjs_info ||= Npm.info(package) if package
    end

    def name(val = nil)
      npmjs_info.nil? ? super(val) : npmjs_info['name']
    end

    def info(val = nil)
      npmjs_info.nil? ? super(val) : npmjs_info['description']
    end
  end
end
