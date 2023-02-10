# frozen_string_literal: true

class Authlogic < Curated::RubyGem
  package 'authlogic'
  homepage 'https://github.com/binarylogic/authlogic'
  category Category::Authentication

  pros "We've been usi Authlogic for since 2010 and always had a great experience with it"
  pros 'It is easy to use and provides a simple, clean API for handling authentication.'
  pros 'It is flexible and customizable, allowing developers to modify the behavior of the authentication process to meet their specific needs.'
  pros 'It is well documented and has an active community of developers contributing to its development, making it a reliable and well-supported solution for authentication.'
  pros 'Allows to maintain multiple sessions.'

  cons 'There is no built-in support for 2FA (two-factor authentication).'
  cons 'You need two implement all authentication logic yourself. Requires a lot of boilerplate code.'
  cons 'Tightly coupled to Rails. It is not possible to use it outside of Rails.'
end
