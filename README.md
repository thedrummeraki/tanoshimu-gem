# gem tanoshimu
API for viewing the available shows and episodes.

## Requirements
Prior to installing, please make sure these gems can be installed on your
system:
- activeresource (v5.2.3+)

If you wish to run this gem locally, the following gems are also to consider:
- pry
- dotenv

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'tanoshimu'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install tanoshimu
```

## Usage
Here are the most relevant API entries from this Gem:

```ruby
### Check the version
Tanoshimu::VERSION

### Get all shows
shows = Tanoshimu::Show.all

### Get a show, and it's episode
### Please note you need to know a show's id
show = Tanoshimu::Show.find(<your id>)
episodes = show.episodes
end

# Or
operation = Operations::Operation.new{name: :my_operation, scope: :admin}

# Instance variable
allowed_users = operation.users     # Returns a list of users based on the scope
is_valid = operation.is_valid?      # For validation purposes

### Core extensions
# Convert a string to a list of Operations::Operations
"bf9[..]a248".to_operation         # From a UUID (example truncated)
"{\"name\":\"my_operation\",\"scope\":\"admin\"}".to_operation # From a valid JSON string
```

## Contributing
Do you wish to contribute? It's simple! All you need to do is:
- Fork this project
- Work your magic (ie: write your code)
- **RUN TESTS**
- _Don't forget to rebase with master!_
- Open a pull request!

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
