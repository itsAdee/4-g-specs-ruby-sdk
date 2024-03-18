# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Device information.
  class DeviceServiceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # International Mobile Equipment Identifier. The unique ID of a device.
    # @return [String]
    attr_accessor :imei

    # Set to Enable (true) or Disable (false).
    # @return [TrueClass | FalseClass]
    attr_accessor :bullseye_enable

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['imei'] = 'imei'
      @_hash['bullseye_enable'] = 'BullseyeEnable'
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

    def initialize(imei = nil,
                   bullseye_enable = nil)
      @imei = imei
      @bullseye_enable = bullseye_enable
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      imei = hash.key?('imei') ? hash['imei'] : nil
      bullseye_enable =
        hash.key?('BullseyeEnable') ? hash['BullseyeEnable'] : nil

      # Create object from extracted values.
      DeviceServiceRequest.new(imei,
                               bullseye_enable)
    end
  end
end