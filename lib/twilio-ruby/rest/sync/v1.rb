##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Sync
      class V1 < Version
        ##
        # Initialize the V1 version of Sync
        def initialize(domain)
          super
          @version = 'v1'
          @services = nil
        end

        ##
        # @param [String] sid A unique identifier for this service instance.
        # @return [Twilio::REST::Sync::V1::ServiceContext] if sid was passed.
        # @return [Twilio::REST::Sync::V1::ServiceList]
        def services(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @services ||= ServiceList.new self
          else
            ServiceContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Sync::V1>'
        end
      end
    end
  end
end