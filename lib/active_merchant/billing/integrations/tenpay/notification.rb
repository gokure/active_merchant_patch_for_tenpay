# -*- encoding: utf-8 -*-
module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        class Notification < ActiveMerchant::Billing::Integrations::Notification
          include Common
        end
      end
    end
  end
end
