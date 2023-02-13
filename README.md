# Curated list of libraries used by JetRockets

Contribution is welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details.

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


  <em>
    ActionPolicy is offen called "Pundit on steroids". If you already use Pundit, you can easily [migrate to ActionPolicy](https://actionpolicy.evilmartians.io/#/./pundit_migration).
  </em>


#### Curators

  * [igor-alexandrov](https://github.com/igor-alexandrov)
