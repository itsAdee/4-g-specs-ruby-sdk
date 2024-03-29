# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Filtercriteria Model.
  class Filtercriteria < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ReadySimServicePlan]]
    attr_accessor :filter_criteria

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['filter_criteria'] = 'filterCriteria'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        filter_criteria
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(filter_criteria = SKIP)
      @filter_criteria = filter_criteria unless filter_criteria == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      filter_criteria = nil
      unless hash['filterCriteria'].nil?
        filter_criteria = []
        hash['filterCriteria'].each do |structure|
          filter_criteria << (ReadySimServicePlan.from_hash(structure) if structure)
        end
      end

      filter_criteria = SKIP unless hash.key?('filterCriteria')

      # Create object from extracted values.
      Filtercriteria.new(filter_criteria)
    end
  end
end
