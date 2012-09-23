module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        autoload :Common, File.dirname(__FILE__) + '/tenpay/common.rb'
        autoload :Return, File.dirname(__FILE__) + '/tenpay/return.rb'
        autoload :Notification, File.dirname(__FILE__) + '/tenpay/notification.rb'
        autoload :Helper, File.dirname(__FILE__) + '/tenpay/helper.rb'

        mattr_accessor :service_url
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
