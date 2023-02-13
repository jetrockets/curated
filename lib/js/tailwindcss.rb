# frozen_string_literal: true

class Curated::AwesomePackage < Curated::NpmPackage
  package 'tailwindcss'
  homepage 'https://www.npmjs.com/package/tailwindcss'

  category Category::Css

  pros 'Optimization using PurgeCSS. No extra CSS in the build, just what you use'
  pros 'Removes the need for me to come up with “names of things”, just figure it out with classes and get beauty'
  pros 'Small Learning Curve'

  cons 'HTML and Styling are mixed'

  comment 'You need to remember to put the reusing styles in a separate CSS file and use [@apply](https://tailwindcss.com/docs/reusing-styles).'
  comment 'Tailwind CSS has many benefits in terms of maintainability, efficiency, and development speed. In addition to all of that, it has a fantastic ecosystem of UI elements and pre-existing designs. You can use comprehensive documentation and free tutorial videos on YouTube. Although it has a few limitations, Tailwind’s extensive library of CSS classes is useful for developers looking to improve their applications or websites.'
end
