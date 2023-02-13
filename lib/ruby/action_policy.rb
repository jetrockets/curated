# frozen_string_literal: true

class Curated::ActionPolicy < Curated::RubyGem
  package 'action_policy'
  homepage 'https://github.com/palkan/action_policy'
  category Category::Authorozation

  pros '[Pre-checks](https://actionpolicy.evilmartians.io/#/pre_checks) allow to avoid a lot of boilerplate code.'
  pros '[Caching](https://actionpolicy.evilmartians.io/#/caching) allows to avoid unnecessary database queries.'
  pros 'Can be included into any class, not only controllers.'

  comment 'ActionPolicy is offen called "Pundit on steroids". If you already use Pundit, you can easily [migrate to ActionPolicy](https://actionpolicy.evilmartians.io/#/./pundit_migration).'
end