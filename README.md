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
