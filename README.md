# porth-plist (Plain Old Ruby Template Handler - Plist output)

Adds Property list (.plist) support to 'porth' (Plain Old Ruby Template Handler) gem.
This allows data stored in plain ruby objects (arrays and hashes) to be easily represented
in a view with a property list output.

## Requirements

## Installation

Add this to your project's Gemfile and run `$ bundle install`

``` ruby
gem 'porth-plist'
```

## Usage

Add the ".plist" mime time to your rails app's config/initializers/mime_types.rb:

``` ruby
Mime::Type.register "text/xml", :plist
```

Add ":plist" to your controller's responds_to calls, for example:
``` ruby
class PeopleController < ApplicationController

  respond_to :json, :xml, :plist, :html

  # GET /people
  # GET /people.json
  def index
    @people = Person.all

    respond_with @people
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(params[:id])

    respond_with @person
  end
```

etc...

Note: This gem adds a #to_plist method to ActiveRecord::Base which makes it consistent with #to_json and #to_xml
as used by the standard Porth handlers.

## Dependencies

Runtime dependencies:

* porth
* plist
* action_pack (>= 3.1) (to be consistent with porth)
* active_record (>= 3.1) (to be consistent with above)

Development dependencies:

* rpsec
* rake

## Compatibility

* MRI 1.8.7
* MRI 1.9.2+

* rails >= 3.1 (to be consistent with Porth)

## Contributing

1. Fork
2. Install dependancies by running `$ bundle install`
3. Write tests and code
4. Make sure the tests pass by running `$ rake test`
5. Push and send a pull request on GitHub

## Credits

Special thanks to Tate Johnson (et al) for making Porth!

## Copyright

Copyright © 2011 Matt Connolly. Released under the MIT license. See LICENSE.
