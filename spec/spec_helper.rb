require 'rspec'

module HtmlStuff
  def class_regex class_name
    /class=".*#{class_name}/
  end
end
