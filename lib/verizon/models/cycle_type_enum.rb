# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # CycleType.
  class CycleTypeEnum
    CYCLE_TYPE_ENUM = [
      # TODO: Write general description for CYCLEONE
      CYCLEONE = 'cycleone'.freeze,

      # TODO: Write general description for CYCLETWO
      CYCLETWO = 'cycletwo'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CYCLE_TYPE_ENUM.include?(value)
    end
  end
end
