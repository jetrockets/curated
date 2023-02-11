# frozen_string_literal: true

class Sablon < Curated::RubyGem
  extend MdFormating

  package 'sablon'
  homepage 'https://github.com/senny/sablon'
  category Category::Other

  text =
    '# First prepare docx file and add `MergeField` inside. For example the name of this MergeField is some_variable' \
    "\n\nrequire 'sablon'\n\n template = Sablon.template(File.expand_path('/Users/bs/Documents/example_merge_field.docx'))" \
    "\ncontext = { some_variable: 'This text will be added instead of `some_variable` in resulted docx file' }" \
    "\n\ntemplate.render_to_file File.expand_path('~/Users/bs/Documents/output.docx'), context"

  pros "We've been usi Sablon in some projects for inserting content in docx templates."
  pros "It is easy to use this gem:\n #{ruby_example_code(text)}"
  pros "You can add to your documents simple values(which are the results of calculations in your methods),
    formatted html blocks containing everything you need (tables, unsorted lists, sorted lists,
    any text markup you need to add to the final docx file)"
  cons "It does not support ODT format. And if you try to save docx file with MergeFields from LibreOffice your fields
    will be saved as plain text, so you will not be able to paste the content into the document."
  cons "If in your original template there is numbering (like 1.1, 1.2, 1.3, 1.4, 2.1, 2.2, 2,3, 2.4)
    and for example you need in some cases to insert HTML block of text at number 1.3 and in some cases at number 2.3,
    then be prepared to write code that will add numbering to HTML text block and writing logic in what case to insert
    paragraph 1.3 and in what 2.3. Any addition of an HTML block to the document template will completely replace
    the line in which MergeField is added"
end
