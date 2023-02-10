# frozen_string_literal: true

require 'gems'

require_relative 'renderer'
require_relative 'category'

class Curated
  def self.inherited(subclass)
    subclass.class_eval <<-EOS, __FILE__, __LINE__ + 1
      def self.inherited(subclass)
        super

        unless subclass.superclass == Curated || subclass.superclass == Curated::RubyGem
          raise StandardError, "You should avoid subclassing curated libraries. Please subclass from Curated or Curated::RubyGem instead."
        end
      end
    EOS
  end

  class << self
    def attr_rw(*attrs)
      attrs.each do |attr|
        instance_eval <<-EOS, __FILE__, __LINE__ + 1
          def #{attr}(val = nil)                         # def prefix(val=nil)
            if val.nil?                                #   if val.nil?
              if instance_variable_defined?(:@#{attr}) #      if instance_variable_defined?(:@prefix)
                return @#{attr}                        #        return @prefix
              else                                     #      else
                return nil                             #        return nil
              end                                      #      end
            end                                        #    end
                                                       #
            @#{attr} = val                             #   @prefix = val
          end                                          # end
        EOS
      end
    end

    def category(val = nil)
      if val.nil?
        if instance_variable_defined?(:@category)
          return @category
        else
          return Category::Other
        end
      end

      @category = val
    end

    def pros(val = nil)
      if val.nil?
        if instance_variable_defined?(:@pros)
          return @pros
        else
          return []
        end
      end

      @pros ||= []
      @pros << val
    end

    def cons(val = nil)
      if val.nil?
        if instance_variable_defined?(:@cons)
          return @cons
        else
          return []
        end
      end

      @cons ||= []
      @cons << val
    end

    def comment(val)
      @comments ||= []
      @comments << val
    end

    def comments
      @comments || []
    end

    def descendants
      ObjectSpace.each_object(Class).select { |klass| klass < self && klass != Curated::RubyGem }
    end
  end

  attr_rw :package
  attr_rw :name
  attr_rw :homepage
  attr_rw :info
end

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

Dir[File.join(__dir__, 'ruby', '*.rb')].each { |file| require file }
