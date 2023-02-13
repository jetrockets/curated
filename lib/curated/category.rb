# frozen_string_literal: true

module Curated::Category
  class Base
    def self.name
      to_s.split('::').last
    end
  end

  class Authentication < Base; end
  class Authorozation < Base; end

  class Other < Base; end
end
