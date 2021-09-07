# Toolbox

The Ruby toolbox provides the environment that makes Ruby a useful and practical development software

## Project

* A collection of one or more files used to develop, test, build, and distribute software
* A Ruby project is a program or library that makes use of Ruby as its primary development language
  * Each project is designed to use a specific version of Ruby, and may use a variety of Gems
* The software may be an executable program, a library module, or a combination of programs and library files
* Most projects must follow standard patterns (i.e., where files and directories are, what they're named)
* The most common standard is the Rubygems standard
  * The test code must be in the `test` directory
  * The source code must be in the `lib` directory
  * The assets like images, JS, CSS in the `assets` directory
  * The HTML files in the `views` directory

## Gem

* RubyGems, or Gems, are packages of code that can be downloaded, installed, and used from the command line
* Some gems include `rubocop`, `rails`, `pry`, etc
* `gem install <gem_name>` is used to install gems
* Most gems are installed from the main [Rubygem Library](https://rubygems.org/gems), although specialized remote libraries may be used by employers
* The `.gemspec` file provides information about a Gem, and is required if the program/library is ever released as a Gem

## Ruby version manager

* Ruby version managers allow you to install, manage, and use multiple versions of Ruby
* This is necessary because often times code is not "version agnostic"
  * Ruby is an evolving language with features added, modified, or deleted with every new version
* The Ruby Version Manager is at the top level, and controls the multiple installations of Ruby, related utilities/tools like `irb`, and the RubyGems installed for each version
* Within each installation, you can have multiple Gem
* A Gem becomes accessible to the Ruby version which it is installed, and must be installed in all the versions the Gem will be used in

## Bundler

* The Bundler is a gem that is used to manage the Ruby version and Gem dependencies of the project
* Dealing with dependencies — multiple versions of Ruby and multiple versions of Gems — is a significant issue in Ruby
* A project may have different requirements from the default version
* It determines and controls the Ruby version and Gems that are used in a project, and ensures that the correct versions are installed and used
* Bundler uses a file called `Gemfile` to specify the Ruby version and Gem versions
* The Gemfile uses a DSL, and can be thought of as the configuration/instruction file for Bundler
* The `Gemfile.lock` file will be created after running `bundle install`, and shows all the dependencies in the program
  * The list is longer than that of the `Gemfile` because it shows the dependencies of Gems as well
* The `require 'bundler/setup'` should be prepended to code to ensure that the right versions are being used
* The `bundle exec` command can be prepended when `require 'bundler/setup'` cannot be added to the code
  * In other words, this is used for executable programs (i.e., `rake`) so that they don't interfere with the app's requirement
* Bundler makes it easier to distribute your program to other systems

## Rake

* Rake automates many common functions needed to build, test, package, and install programs
* Rake is another Gem that performs repetitive development tasks
* Examples include running tests, creating databases, packaging and releasing software, etc
* The tasks that are needed changes from one project to another — `Rakefile` controls which which tasks are needed
