require 'porth-plist/version'
require 'porth'
require 'porth/format/plist'

Porth::Handler.register_format :plist, Porth::Format::Plist


if defined? ActiveRecord && ! ActiveRecord::Base.instance_methods.include?(:to_plist)

  class ActiveRecord::Base

    #
    # output the attributes of the ActiveRecord::Base object to a .plist property list
    # similar to #to_xml or #to_json
    #
    def to_plist
      attributes.to_plist
    end
  end

end
