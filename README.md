## Mocking Workshop

This workshop demonstrates:

- What a double really is: a 'fake' object
- That RSpec `double` isn't really magic
- Why we might use a double to isolate the `DockingStation` class (`Bike.new` does some very complex and long-running things!)

### Extensions

#### :green_heart:

- Separate the classes out into different files.
- Remove the twenty billion `sleep`s from the Bike initializer, and write tests for `Bike#working?` and `Bike.break` using `assert_equals`.

#### :yellow_heart:

- Wrap the `assert_equal` method into a class called `Test`, and separate tests out to a `docking_station_spec.rb` file.

#### :heart:

- Take the code from `docking_station.rb`, lines 58 and 59. Make a `double(working?: true)` method that returns an object which can be used to pass the test. Use this new `double` method in the other test.

> To achieve this, you'll probably want to use `method_missing?` and `define_method`, two key Ruby metaprogramming methods. [This StackOverflow answer](https://stackoverflow.com/questions/38233060/define-method-how-to-dynamically-create-methods-with-arguments) and [This RubyMonk session](http://rubymonk.com/learning/books/2-metaprogramming-ruby/chapters/25-dynamic-methods/lessons/72-define-method) might help.