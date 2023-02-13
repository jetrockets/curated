# frozen_string_literal: true

class Curated::Discard < Curated::RubyGem
  package 'discard'
  homepage 'https://github.com/jhawthorn/discard'
  category Category::ActiveRecordExtensions

  pros 'Allows to soft-delete `ActiveRecord` records.'
  pros 'Does not pollute `ActiveRecord::Base` automatically. You can include `Discard::Model` into any model you want.'
  pros 'Does not override any existing `ActiveRecord` methods.'

  comment "We've used [acts_as_paranoid](https://github.com/ActsAsParanoid/acts_as_paranoid) and [paranoia](https://github.com/rubysherpas/paranoia) in the past. The both are great libraries, however they both override some `ActiveRecord` methods. Besides this you can run into issues when working with associations. Discard seems to be a better alternative."
end
