# -*- encoding: utf-8 -*-
module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        autoload :Common, File.expand_path('../tenpay/common.rb', __FILE__)
        autoload :Return, File.expand_path('../tenpay/return.rb', __FILE__)
        autoload :Notification, File.expand_path('../tenpay/notification.rb', __FILE__)
        autoload :Helper, File.expand_path('../tenpay/helper.rb', __FILE__)

        mattr_accessor :service_url, :secret_key
        self.service_url  = 'https://gw.tenpay.com/gateway/pay.htm'

        def self.return(query_string, options = {})
          Return.new(query_string, options)
        end

        def self.notification(post)
          Notification.new(post)
        end

        def self.helper(order, account, options = {})
          Helper.new(order, account, options)
        end
      end
    end
  end
end
