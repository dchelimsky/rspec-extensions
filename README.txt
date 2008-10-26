= rspec-extensions

* http://github.com/dchelimsky/rspec-extensions

== DESCRIPTION:

PRE ALPHA!

Experimental features that may or may not end up in rspec proper someday. Use at your own risk and/or pleasure.

== FEATURES:

* expectations - rspec extension based on Jay Field's expectations library (http://expectations.rubyforge.org)

    describe "addition" do
      it "should return 3 for (2 + 1)" do
        expect 3 do
          2 + 1
        end
      end
    end

== REQUIREMENTS:

rspec >= 1.1.0

== INSTALL:

  (requires hoe)

  git clone git://github.com/dchelimsky/rspec-extensions.git
  cd rspec-extensions
  rake gem
  rake gem_install

To use expectations with rspec:

  require 'rspec-extensions/expectations'
  describe ... do
    include RspecExtensions::Expectations
  end
  
or - if you want to include them globally, do this in spec/spec_helper.rb

  require 'rspec-extensions'
  Spec::Runner.configure do |config|
    config.include RspecExtensions::Expectations
  end

== LICENSE:

(The MIT License)

Copyright (c) 2008 David Chelimsky

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.