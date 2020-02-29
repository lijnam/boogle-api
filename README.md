# Boogle API on  RAILS

# Configuration
* Add `application.yml` in config folder. Add `spell_check_host` and  `spell_check_key`, we can get them from https://rapidapi.com/montanaflynn/api/spellcheck
* Open `config/initializers/cors.rb` and change the `origins` to the domain of the boogle-app
* run `bundle install`

# Deployment instructions
 - run `rails s`
