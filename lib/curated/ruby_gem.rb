# frozen_string_literal: true

class Curated::RubyGem < Curated
  class << self
    def rubygems_info
      @rubygems_info ||= Gems.info(package) if package
    end

    def name(val = nil)
      rubygems_info.nil? ? super(val) : rubygems_info['name']
    end

    def info(val = nil)
      rubygems_info.nil? ? super(val) : rubygems_info['info']
    end
  end
end
