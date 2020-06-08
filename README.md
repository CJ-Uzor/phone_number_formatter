# phone_number_formatter

A simple phone number formatter module

## Usage

### Format a given phone number (string)
```ruby
require_relative 'lib/formatter'

Formatter::PhoneNumber::UK.format "07587333156"
# => "+447587333156" 
```