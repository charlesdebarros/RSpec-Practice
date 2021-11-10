# Expenses Project

## Setup a project:

* Choose the project's name
* Roughly write down project purposes and tech needed
* Create project folder
* Initialise 'Bundler' ($bundle init) to generate a 'Gemfile'
* Added necessary gems
* Run $bundle install
* If using RSpec, run $bundle exec rspec --init command to initialise RSpec.

In the .rspec file add:
--color
--format documentation

### Use the Right Rack Environment

-> Because Sinatra is being used, add to the top of specs/spec_helper.rb file the following line:

ENV['RACK_ENV'] = test

Setting the RACK_ENV environment variable to test switches on test-friendly behavior in your web framework. Sinatra normally swallows exceptions and renders a “500 Internal Server Error” response. With this variable set, Sinatra will instead allow errors to bubble up to your test framework.
