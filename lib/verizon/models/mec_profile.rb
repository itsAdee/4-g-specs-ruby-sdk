# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MECProfile Model.
  class MECProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :profile_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :profile_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['profile_id'] = 'profileId'
      @_hash['profile_name'] = 'profileName'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        profile_id
        profile_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(profile_id = SKIP,
                   profile_name = SKIP)
      @profile_id = profile_id unless profile_id == SKIP
      @profile_name = profile_name unless profile_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      profile_id = hash.key?('profileId') ? hash['profileId'] : SKIP
      profile_name = hash.key?('profileName') ? hash['profileName'] : SKIP

      # Create object from extracted values.
      MECProfile.new(profile_id,
                     profile_name)
    end
  end
end