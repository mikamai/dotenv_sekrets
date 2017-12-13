[![Build Status](https://travis-ci.org/mikamai/dotenv_sekrets.svg?branch=master)](https://travis-ci.org/mikamai/dotenv_sekrets)

[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/mikamai/dotenv_sekrets)

# DotenvSekrets

This gem makes the `dotenv` gem cooperate nicely with the `sekrets` gem in order to allow encrypted `.env` files in your Rails application.


## Rationale

Config files with private tokens, passwords and secrets should not be committed in source-control for security reasons, unless they're encrypted: here it comes DotenvSekrets to the rescue.

When everything is set and done you will need to know/share only the secret key, not the whole configuration which can be safely stored and versioned in your SCM tool.

You can rely on regular `dotenv` files to locally override the encrypted values inside `.env.enc` files or similar.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dotenv_sekrets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dotenv_sekrets

## Usage

Please read [dotenv](https://github.com/bkeepers/dotenv) and [sekrets](https://github.com/ahoward/sekrets) READMEs.
For a quick setup you may simply want to:
* create the `.sekrets.key` file in your rails root and put your secret key code there
* create the `.env.enc` file and edit the content with the shell command `sekrets edit .env.enc`
* update `.gitignore` to ignore the `.sekrets.key` file
* `cat .env.enc`and see the content is encrypted
* commit `.env.enc` into your SCM
* start rails and see the `ENV` variable is populated with the data you put in `.env.enc`

### Usage with Travis
From the [sekrets gem documentation](https://github.com/ahoward/sekrets#key-lookup) the gem will look for the key in the environment under the env var SEKRETS_KEY in case there is no `sekrets.key` file.
So to use the gem with travis it is sufficient to add this environment variable
```
SEKRETS_KEY = <your-sekret-key>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mikamai/dotenv_sekrets.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


[rubygems.org](https://github.com/).
