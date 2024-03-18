# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceList7 Model.
  class DeviceList7 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[MECDeviceId]]
    attr_accessor :device_ids

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :ip_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_ids'] = 'deviceIds'
      @_hash['ip_address'] = 'ipAddress'
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

    def initialize(device_ids = nil,
                   ip_address = nil)
      @device_ids = device_ids
      @ip_address = ip_address
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      device_ids = nil
      unless hash['deviceIds'].nil?
        device_ids = []
        hash['deviceIds'].each do |structure|
          device_ids << (MECDeviceId.from_hash(structure) if structure)
        end
      end

      device_ids = nil unless hash.key?('deviceIds')
      ip_address = hash.key?('ipAddress') ? hash['ipAddress'] : nil

      # Create object from extracted values.
      DeviceList7.new(device_ids,
                      ip_address)
    end
  end
end