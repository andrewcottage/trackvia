[![Gem Version](https://badge.fury.io/rb/trackvia.svg)](https://badge.fury.io/rb/trackvia)
![](http://ruby-gem-downloads-badge.herokuapp.com/trackvia)
# Trackvia
Trackvia API Interface
This only works with the old 2013 api

Installation

```ruby
gem install trackvia
```
or add to gemfile
```ruby
gem 'trackvia'
```

Examples


Pull Records
```ruby
trackvia = Trackvia.new(account_id, api_key, table_id)
records = tracvia.pull_records(view_id)
```

Update a Record
```ruby
trackvia = Trackvia.new(account_id, api_key, table_id)
record_locator = '0000000000'
data = {
  name: "new name"
}
trackvia.update_record(record_locator, data)
```

Pull a Record
```ruby
trackvia = Trackvia.new(account_id, api_key, table_id)
record_locator = '0000000000'
record = trackvia.pull_record(record_locator)
```

Perform a Search
```ruby
trackvia = Trackvia.new(account_id, api_key, table_id)
results = trackvia.search("search term")
```

Trackvia Old API Reference
https://secure.trackvia.com/app/static/TrackVia_API_Developers_Guide.pdf
