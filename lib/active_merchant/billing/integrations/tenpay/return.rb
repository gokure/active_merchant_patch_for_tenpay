# -*- encoding: utf-8 -*-
module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        class Return < ActiveMerchant::Billing::Integrations::Return
          include Common
        end
      end
    end
  end
end
