# ActiverecordTouchy


Extend AR to use `touch` for `has_many` and `has_one` relations

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord_touchy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord_touchy
    
## Usage

Setup

```ruby
class User < ActiveRecord::Base
  has_many :articles, touch: true
  has_one :profile, touch: true
end
```

After changing user object relations `articles` and `profile` will be touched.
Associations are required `updated_at` column.

## Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
