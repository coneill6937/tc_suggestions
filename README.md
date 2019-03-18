# TRUNK CLUB AUDITION - GOOGLE SEARCH SUGGESTIONS
![search_suggestions](images/search.jpg)

## Setup
1. I developed using ChromeDriver 2.36.540469 and Ruby 2.5.1. Check your versions with `chromedriver -v` and `ruby -v`. 
2. Clone the repo, `git clone git@github.com:coneill6937/tc_suggestions.git`.
3. `cd tc_suggestions`, then `bundle install`.
4. `rspec spec/search_suggestions_spec.rb`.
5. Tests should run, outputting the feature and scenario titles.

## Plans for Future
1. Page objects
2. Create more subfolders under spec, like features and support. 
3. Dockerize setup, use headless browser
4. Write a pipeline script
