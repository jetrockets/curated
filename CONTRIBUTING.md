# Contributing

Thanks for taking the time to contribute :+1:

The following is a set of guidelines for contributing to a curated list of libraries used by JetRockets. These are just guidelines, not rules. Use your best judgment, and feel free to propose changes to this project.

## How Can I Contribute?

### Submitting Pull Requests

You know any cool Ruby or JS project not listed here? Have you used it in production and learned its pros and cons? Please submit a pull request. We will be happy to receive it!

Pull requests should be labeled with an appropriate tag (`ruby`, `js`, or `python`).

Do not update `README.md` manually, it will be generated automatically after the closing of PR.

### DSL

Currently, we support Ruby and JS libraries. If you want to add a new language, you need to add a new DSL for it.

DSL is a set of methods that describe a library. It is used to fetch information about the library from the source (e.g., RubyGems, NPM, etc.) and to generate a markdown representation of the library.

* `package` - the name of the package to look for at the source
* `homepage` - link to the project homepage (usually GitHub repo)
* `category` - category of the library (see `lib/categories.rb`)
* `pros` - pros of the library. It can be called multiple times.
* `cons` - cons of the library. It can be called multiple times.
* `comment` - additional comment. It can be called multiple times.

### RubyGems

Subclass `Curated::RubyGem` and put your new class in `lib/ruby` folder.

``` ruby
class Curated::AwesomeGem < Curated::RubyGem
  package 'awesome_gem' # name of the gem to look for at https://rubygems.org

  homepage 'https://github.com/awesome_gem/awesome_gem'

  category Category::Other

  pros 'Awesome gem is awesome.'
  cons 'Awesome gem is not so awesome.'
  comment 'Awesome awesomness.'
end
```

### NPM

Subclass `Curated::NpmPackage` and put your new class in `lib/js` folder.

``` ruby
class Curated::AwesomePackage < Curated::NpmPackage
  package 'awesome_package' # name of the package to look for at https://www.npmjs.com

  homepage 'https://github.com/awesome_package/awesome_package'
end
```

### Voting and commenting

Use GitHub reactions and comments to express your feelings/experience about open suggestions (additions or removals).
