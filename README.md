# TRUNK CLUB AUDITION - GOOGLE SEARCH SUGGESTIONS
![search_suggestions](images/search.jpg)

## Setup
1. I developed using ChromeDriver 2.36.540469 and Ruby 2.5.1. Check your versions with `chromedriver -v` and `ruby -v`. 
2. Clone the repo, `cd tc_suggestions`
3. `bundle install`
4. `rspec spec/search_suggestions_spec.rb`

## Guidelines
1. All test files should end in `_spec.rb`. 
2. You can run files or groups of files using `bundle exec rspec [file/path/to/spec1 file/path/to/spec2]`
3. Every time you modify Gemfile, you need to run `bundle install` to update your gemset.

## Plans for Future
1. Page objects
2. Create more subfolders under spec, like features and support. 
3. Dockerize setup, use headless browser
4. Write a pipeline script
