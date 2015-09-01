## Clinic overview
In this clinic, we will go over:
* TDD workflow
* Setting up rspec in your projects
* Build classes with TDD
* Resource for good practices for [writing rspec tests](http://betterspecs.org/#single)

##TDD workflow
* Write tests
* Getting test failing, let failing tests guide our code development
* Do the simplest thing to get the test to pass
* Go back and refactor

##Getting Rspec Set Up
* gem install rspec
* spec file for each class file
  - Root/directory/file set up: spec/lib/class_spec.rb
  - Root/lib/class.rb goes in lib
* `touch .rspec` in the root directory and insert "--color" for colored test response
* To reference our class tests need `require_relative '../../lib/class.rb'`

##Building classes with TDD
Today we are going to build two objects: a Dice that has a method to roll the dice. Then we will create pokemon characters with states and behavior such as name, type, ability, strength, etc.

So let's start with our dice class and construct this in a test driven way.

*  First we have our files set up, let's get git set up quickly too
- `git init`
- `git add`
- `git commit -m "initial commit"`

* Start building our first test `require_relative '../lib/character.rb'`
* Let's describe our Dice class.
  - What do we want a Dice to have? sides
  - `RSpec.describe Dice do` standard to start with a describe for the class/initaialize
  - What do we want to do with a die? roll method
  - rand try in irb rand(array) returns random index
* Let's build out our Pokemon class for our objects.
  - Think about what a character has.
  - Let's first do name... then species... equipment ... strength... hit points
  - methods equipment set to nil, load_equipment(weapon), attack!, alive?
  - introduce let and let!
* describe, context, it blocks language best practice
  - Method definition in a describe block with ".notation" for class methods and "#notation" for instance methods
  - Context for use cases (e.g. true or false) We create a context blocks to clarify the different states we expect
  - Third step is to write an it block in which we will place our assertion about the behavior. The string of text that follows this 'it' call is simply a descriptor that explains what we expect the result of the method call to be.
* Refactoring
  - we can refactor our tests (e.g move the let(:pokemon) up to the top to have access to all)
  - we can look back at our code and refactor methods and run the test suite to make sure it passes our intended outcomes.
