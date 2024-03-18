# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # 5G Edge platform used for deployment of a service. The ern of each platform
  # contains the name of the matching AWS Wavelength zone that can be used when
  # deploying.
  class MECPlatformResource < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Edge Resource Name. A string identifier for a set of edge resources.
    # @return [String]
    attr_accessor :ern

    # Unique identifier representing a zone. *Note:* This will have a null value
    # as a placeholder.
    # @return [String]
    attr_accessor :zone

    # MEC region name. Current valid values are US_WEST_2 and US_EAST_1.
    # @return [String]
    attr_accessor :region

    # Status of the MEC Platform (default is 'unknown')
    # @return [MECPlatformStatusEnum]
    attr_accessor :status

    # Status of the MEC Platform (default is 'unknown')
    # @return [Object]
    attr_accessor :properties

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ern'] = 'ern'
      @_hash['zone'] = 'zone'
      @_hash['region'] = 'region'
      @_hash['status'] = 'status'
      @_hash['properties'] = 'properties'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ern
        zone
        region
        status
        properties
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        zone
      ]
    end

    def initialize(ern = SKIP,
                   zone = SKIP,
                   region = SKIP,
                   status = MECPlatformStatusEnum::UNKNOWN,
                   properties = SKIP)
      @ern = ern unless ern == SKIP
      @zone = zone unless zone == SKIP
      @region = region unless region == SKIP
      @status = status unless status == SKIP
      @properties = properties unless properties == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ern = hash.key?('ern') ? hash['ern'] : SKIP
      zone = hash.key?('zone') ? hash['zone'] : SKIP
      region = hash.key?('region') ? hash['region'] : SKIP
      status = hash['status'] ||= MECPlatformStatusEnum::UNKNOWN
      properties = hash.key?('properties') ? hash['properties'] : SKIP

      # Create object from extracted values.
      MECPlatformResource.new(ern,
                              zone,
                              region,
                              status,
                              properties)
    end
  end
end
