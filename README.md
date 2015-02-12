# Printing Blocks Failing Case

Blocks of printing Ruby aren't doing the right thing.

Getting this syntax error when using a `link_to` with a block for its display text value:

    /dang-test-printing-blocks/app/views/people/show.html.dang:2: syntax error, unexpected ')' ...t << ( link_to @person.url do ).to_s;_out << " \n ";_out ... ... ^ /dang-test-printing-blocks/app/views/people/show.html.dang:2: syntax error, unexpected keyword_end ...s;_out << " \n ";_out << ( end ).to_s;_out << "\n\n";_out <... ... ^ /dang-test-printing-blocks/app/views/people/show.html.dang:3: syntax error, unexpected keyword_ensure, expecting ')' /dang-test-printing-blocks/app/views/people/show.html.dang:5: syntax error, unexpected keyword_end, expecting ')'

**Note:** the `_form` partial is still `.html.erb` because the `form_for` block has the same problem. I'm guessing that fixing the `link_to` will also fix the `form_for`.

# Instructions

1. `bundle`
1. `rake db:migrate`
1. `rails server`
1. `open http://localhost:3000`
1. Create a person in the form.
1. Copy / pasta the blocky link_to code into view.
1. KABLAMMO!

```dang
<| link_to @person.url do |>
  <| @person.first_name |>
  <| @person.last_name |>
<| end |>
```
