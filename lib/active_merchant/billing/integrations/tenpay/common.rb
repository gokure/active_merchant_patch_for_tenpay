require 'digest/md5'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        module Common
          def secret
            options[:credential2]
          end

          def acknowledge
            sign = @params.delete("sign")
            Digest::MD5.hexdigest(Hash[@params.sort].to_query + "&key=#{Tenpay.secret}") == sign.downcase
          end

          def gross
            (gross_cents/100.0).round
          end

          def gross_cents
            params[:total_fee].to_f.round
          end

          def success?
            params[:trade_state] == '0'
          end
        end
      end
    end
  end
end
