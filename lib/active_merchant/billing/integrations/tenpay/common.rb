# -*- encoding: utf-8 -*-
require 'digest/md5'
module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        module Common
          def acknowledge
            sign = @params.delete('sign')
            Digest::MD5.hexdigest(Hash[@params.sort].to_query + "&key=#{Tenpay.secret_key}") == sign.downcase
          end

          def gross
            gross_cents / 100.0
          end

          def gross_cents
            params['total_fee'].to_f.round
          end

          def message
            params['pay_info']
          end

          def status
            params['trade_state']
          end

          def success?
            status == '0'
          end
        end
      end
    end
  end
end
