module Porth
  module Format
    module Plist
      def self.call controller, object
        object.to_plist
      end

      module ControllerExtensions
        protected

        # no extensions required for this one.
      end
    end
  end
end
