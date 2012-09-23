module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        class Return < ActiveMerchant::Billing::Integrations::Return
          include Common

          def initialize(query_string, options = {})
            super
            raise ArgumentError, "`credential2' is requried" unless options[:credential2]
            Tenpay.secret = options[:credential2]
          end
        end
      end
    end
  end
end
