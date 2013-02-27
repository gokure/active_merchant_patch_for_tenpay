# -*- encoding: utf-8 -*-
require 'digest/md5'
require 'cgi'
module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Tenpay
        class Helper < ActiveMerchant::Billing::Integrations::Helper
          MAPPING_FIELDS = [
            :sign_type, :service_version, :input_charset, :sign, :sign_key_index,
            :bank_type, :body, :attach, :return_url, :notify_url, :buyer_id, :partner,
            :out_trade_no, :total_fee, :fee_type, :spbill_create_ip, :time_start,
            :time_expire, :transport_fee, :product_fee, :goods_tag
          ]

          def initialize(order, account, options = {})
            super
            add_field 'fee_type',       '1'
            add_field 'input_charset',  'UTF-8'
          end

          mapping :order,       'out_trade_no'
          mapping :account,     'partner'
          mapping :amount,      'total_fee'
          mapping :currency,    'fee_type'

          MAPPING_FIELDS.each do |field|
            mapping field, field.to_s
          end

          def signature
            add_field :sign_type, 'MD5'
            Digest::MD5.hexdigest(CGI.unescape(@fields.to_query + "&key=#{Tenpay.secret_key}"))
          end

          def form_fields
            add_field :sign, signature
            @fields
          end
        end
      end
    end
  end
end
