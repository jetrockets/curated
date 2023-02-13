# frozen_string_literal: true

module Curated::Category
  class Base
    def self.name
      to_s.split('::').last
    end
  end

  class Authentication < Base; end

  class Authorization < Base; end

  class ActiveRecordExtensions < Base
    def self.name
      'Active Record Extensions'
    end
  end

  class Css < Base
    def self.name
      'CSS'
    end
  end

  class Other < Base; end
end
