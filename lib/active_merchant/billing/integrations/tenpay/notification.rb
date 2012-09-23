module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        class Notification < ActiveMerchant::Billing::Integrations::Notification
          include Common

          def initialize(post, options = {})
            super
            raise ArgumentError, "`credential2' is requried" unless options[:credential2]
            Tenpay.secret = options[:credential2]
          end
        end
      end
    end
  end
end
