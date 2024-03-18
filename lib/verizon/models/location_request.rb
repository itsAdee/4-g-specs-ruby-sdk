# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The body contains the the account name and list of devices that you want to
  # locate, plus other options.
  class LocationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account identifier in "##########-#####".
    # @return [String]
    attr_accessor :account_name

    # Device list.
    # @return [Array[DeviceInfo]]
    attr_accessor :device_list

    # Accurary, currently only 0-coarse supported.
    # @return [AccuracyModeEnum]
    attr_accessor :accuracy_mode

    # Location cache mode.
    # @return [CacheModeEnum]
    attr_accessor :cache_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_list'] = 'deviceList'
      @_hash['accuracy_mode'] = 'accuracyMode'
      @_hash['cache_mode'] = 'cacheMode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        accuracy_mode
        cache_mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil,
                   device_list = nil,
                   accuracy_mode = SKIP,
                   cache_mode = SKIP)
      @account_name = account_name
      @device_list = device_list
      @accuracy_mode = accuracy_mode unless accuracy_mode == SKIP
      @cache_mode = cache_mode unless cache_mode == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      # Parameter is an array, so we need to iterate through it
      device_list = nil
      unless hash['deviceList'].nil?
        device_list = []
        hash['deviceList'].each do |structure|
          device_list << (DeviceInfo.from_hash(structure) if structure)
        end
      end

      device_list = nil unless hash.key?('deviceList')
      accuracy_mode = hash.key?('accuracyMode') ? hash['accuracyMode'] : SKIP
      cache_mode = hash.key?('cacheMode') ? hash['cacheMode'] : SKIP

      # Create object from extracted values.
      LocationRequest.new(account_name,
                          device_list,
                          accuracy_mode,
                          cache_mode)
    end
  end
end
