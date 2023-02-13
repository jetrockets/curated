# Curated list of libraries used by JetRockets

Contribution is welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## Active Record Extensions

### [¶ discard](#discard)

  [https://github.com/jhawthorn/discard](https://github.com/jhawthorn/discard)

Allows marking ActiveRecord objects as discarded, and provides scopes for filtering.
#### 🟢 Pros

  * Allows to soft-delete `ActiveRecord` records.
  * Does not pollute `ActiveRecord::Base` automatically. You can include `Discard::Model` into any model you want.
  * Does not override any existing `ActiveRecord` methods.


  We've used [acts_as_paranoid](https://github.com/ActsAsParanoid/acts_as_paranoid) and [paranoia](https://github.com/rubysherpas/paranoia) in the past. The both are great libraries, however they both override some `ActiveRecord` methods. Besides this you can run into issues when working with associations. Discard seems to be a better alternative.


#### Curators

  * [igor-alexandrov](https://github.com/igor-alexandrov)
## Authentication

### [¶ authlogic](#authlogic)

  [https://github.com/binarylogic/authlogic](https://github.com/binarylogic/authlogic)

An unobtrusive ruby authentication library based on ActiveRecord.
#### 🟢 Pros

  * We've been usi Authlogic for since 2010 and always had a great experience with it
  * It is easy to use and provides a simple, clean API for handling authentication.
  * It is flexible and customizable, allowing developers to modify the behavior of the authentication process to meet their specific needs.
  * It is well documented and has an active community of developers.
  * Allows to maintain multiple sessions.

#### 🟡 Cons

  * There is no built-in support for 2FA (two-factor authentication).
  * You need two implement all authentication logic yourself. Requires a lot of boilerplate code.
  * Tightly coupled to Rails. It is not possible to use it outside of Rails.


#### Curators

  * [igor-alexandrov](https://github.com/igor-alexandrov)
## Authorization

### [¶ action_policy](#action_policy)

  [https://github.com/palkan/action_policy](https://github.com/palkan/action_policy)

Authorization framework for Ruby/Rails application
#### 🟢 Pros

  * [Pre-checks](https://actionpolicy.evilmartians.io/#/pre_checks) allow to avoid a lot of boilerplate code.
  * [Caching](https://actionpolicy.evilmartians.io/#/caching) allows to avoid unnecessary database queries.
  * Can be included into any class, not only controllers.


  ActionPolicy is offen called "Pundit on steroids". If you already use Pundit, you can easily [migrate to ActionPolicy](https://actionpolicy.evilmartians.io/#/./pundit_migration).


#### Curators

  * [igor-alexandrov](https://github.com/igor-alexandrov)
## Css

### [¶ tailwindcss](#tailwindcss)

  [https://www.npmjs.com/package/tailwindcss](https://www.npmjs.com/package/tailwindcss)

A utility-first CSS framework for rapidly building custom user interfaces.
#### 🟢 Pros

  * Optimization using PurgeCSS. No extra CSS in the build, just what you use
  * Removes the need for me to come up with “names of things”, just figure it out with classes and get beauty
  * Small Learning Curve

#### 🟡 Cons

  * HTML and Styling are mixed

  You need to remember to put the reusing styles in a separate CSS file and use [@apply](https://tailwindcss.com/docs/reusing-styles).

  Tailwind CSS has many benefits in terms of maintainability, efficiency, and development speed. In addition to all of that, it has a fantastic ecosystem of UI elements and pre-existing designs. You can use comprehensive documentation and free tutorial videos on YouTube. Although it has a few limitations, Tailwind’s extensive library of CSS classes is useful for developers looking to improve their applications or websites.


