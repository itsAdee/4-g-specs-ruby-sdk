# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # ProvhistoryRequest Model.
  class ProvhistoryRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [Array[GIODeviceId]]
    attr_accessor :device_filter

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :earliest

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :latest

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_filter'] = 'deviceFilter'
      @_hash['earliest'] = 'earliest'
      @_hash['latest'] = 'latest'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        device_filter
        earliest
        latest
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP,
                   device_filter = SKIP,
                   earliest = SKIP,
                   latest = SKIP)
      @account_name = account_name unless account_name == SKIP
      @device_filter = device_filter unless device_filter == SKIP
      @earliest = earliest unless earliest == SKIP
      @latest = latest unless latest == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      # Parameter is an array, so we need to iterate through it
      device_filter = nil
      unless hash['deviceFilter'].nil?
        device_filter = []
        hash['deviceFilter'].each do |structure|
          device_filter << (GIODeviceId.from_hash(structure) if structure)
        end
      end

      device_filter = SKIP unless hash.key?('deviceFilter')
      earliest = if hash.key?('earliest')
                   (DateTimeHelper.from_rfc3339(hash['earliest']) if hash['earliest'])
                 else
                   SKIP
                 end
      latest = if hash.key?('latest')
                 (DateTimeHelper.from_rfc3339(hash['latest']) if hash['latest'])
               else
                 SKIP
               end

      # Create object from extracted values.
      ProvhistoryRequest.new(account_name,
                             device_filter,
                             earliest,
                             latest)
    end

    def to_custom_earliest
      DateTimeHelper.to_rfc3339(earliest)
    end

    def to_custom_latest
      DateTimeHelper.to_rfc3339(latest)
    end
  end
end
