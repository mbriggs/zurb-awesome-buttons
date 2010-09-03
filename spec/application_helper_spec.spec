require 'spec_helper' 
require '../app/application_helper'

describe ApplicationHelper do
  include HtmlStuff
  
  describe "awesome_button" do
    it "can set size to large" do
      helper.awesome_button('foo', '', :size => :l).should =~ class_regex('large')
    end
    it "can set size to small" do
      helper.awesome_button('foo', '', :size => :s).should =~ class_regex('small')
    end
    it "can set class" do
      helper.awesome_button('foo', '', :class => 'bar').should =~ class_regex('bar')
    end
    it "sets an awesome class" do
      has_awesome {helper.awesome_button '', ''}
    end
    it "is a link" do
      helper.awesome_button('foo', '').should =~ is_a_tag('foo')
    end
    it "can set onclick" do
      onclick {helper.awesome_button('foo', '', :onclick => 'bar;')}
    end

    it "has an optional href" do
      helper.awesome_button('foo').should !~ /href=/
    end

  end

  describe "awesome_submit" do
    it "can set class" do
      helper.awesome_submit(:class => 'bar').should =~ class_regex('bar')
    end
    it "can set title" do
      helper.awesome_submit(:title => 'foo').should =~ is_a_tag('foo')
    end
    it "sets an awesome class" do
      has_awesome {helper.awesome_submit}
    end
    it "is a link" do
      helper.awesome_submit.should =~ is_a_tag('Create')
    end
    it "can set onclick" do
      onclick {helper.awesome_submit(:onclick => 'bar')}
    end
  end
end
