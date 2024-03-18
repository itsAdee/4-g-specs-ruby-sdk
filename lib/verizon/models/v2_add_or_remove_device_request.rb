# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Add or remove device to existing software upgrade information.
  class V2AddOrRemoveDeviceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Operation either 'append' or 'remove'.
    # @return [String]
    attr_accessor :type

    # Device IMEI list.
    # @return [Array[String]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'Type'
      @_hash['device_list'] = 'deviceList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = nil,
                   device_list = nil)
      @type = type
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('Type') ? hash['Type'] : nil
      device_list = hash.key?('deviceList') ? hash['deviceList'] : nil

      # Create object from extracted values.
      V2AddOrRemoveDeviceRequest.new(type,
                                     device_list)
    end
  end
end
