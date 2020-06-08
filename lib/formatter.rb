require_relative 'custom_errors'

module Formatter
  module PhoneNumber
    module UK

      def self.verify_length(number)
        begin
          if number.length > 11 or number.length < 11
            raise LengthError
          else
            return true
          end
        rescue => e
          return e.message
        end
      end

      def self.verify_type(number)
        begin
          if number.scan(/^[\d\s]+$/).empty? and not number.empty?
            raise ValueTypeError
          else
            return true
          end
        rescue => e
          return e.message
        end
      end

      def self.is_valid?(number)
        begin
          if not number.match(/^07\d{9}$/x)
            raise NumberError
          else
            return true
          end
        rescue => e
          return e.message
        end
      end

      def self.format(number)
        number = number.gsub(/\s+/, "")
        if verify_length(number) and verify_type(number) and is_valid?(number)
          number[0] = "+44"
          return number
        else
          return false
        end
      end

    end
  end
end