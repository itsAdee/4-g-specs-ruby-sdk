# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # UploadAndScheduleFileRequest Model.
  class UploadAndScheduleFileRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The campaign name.
    # @return [String]
    attr_accessor :campaign_name

    # The name of the file you are upgrading to.
    # @return [String]
    attr_accessor :file_name

    # The version of the file you are upgrading to.
    # @return [String]
    attr_accessor :file_version

    # Valid values
    # @return [String]
    attr_accessor :distribution_type

    # Campaign start date.
    # @return [String]
    attr_accessor :start_date

    # Campaign end date.
    # @return [String]
    attr_accessor :end_date

    # Specifies the starting date the client should download the package. If
    # null, client downloads as soon as possible.
    # @return [String]
    attr_accessor :download_after_date

    # List of allowed download time windows.
    # @return [Array[DownloadTimeWindow]]
    attr_accessor :download_time_window_list

    # The date after which you install the package. If null, install as soon as
    # possible.
    # @return [String]
    attr_accessor :install_after_date

    # List of allowed install time windows.
    # @return [Array[DownloadTimeWindow]]
    attr_accessor :install_time_window_list

    # Device IMEI list.
    # @return [Array[String]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['campaign_name'] = 'campaignName'
      @_hash['file_name'] = 'fileName'
      @_hash['file_version'] = 'fileVersion'
      @_hash['distribution_type'] = 'distributionType'
      @_hash['start_date'] = 'startDate'
      @_hash['end_date'] = 'endDate'
      @_hash['download_after_date'] = 'downloadAfterDate'
      @_hash['download_time_window_list'] = 'downloadTimeWindowList'
      @_hash['install_after_date'] = 'installAfterDate'
      @_hash['install_time_window_list'] = 'installTimeWindowList'
      @_hash['device_list'] = 'deviceList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        campaign_name
        file_name
        file_version
        distribution_type
        start_date
        end_date
        download_after_date
        download_time_window_list
        install_after_date
        install_time_window_list
        device_list
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(campaign_name = SKIP,
                   file_name = SKIP,
                   file_version = SKIP,
                   distribution_type = SKIP,
                   start_date = SKIP,
                   end_date = SKIP,
                   download_after_date = SKIP,
                   download_time_window_list = SKIP,
                   install_after_date = SKIP,
                   install_time_window_list = SKIP,
                   device_list = SKIP)
      @campaign_name = campaign_name unless campaign_name == SKIP
      @file_name = file_name unless file_name == SKIP
      @file_version = file_version unless file_version == SKIP
      @distribution_type = distribution_type unless distribution_type == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      @download_after_date = download_after_date unless download_after_date == SKIP
      unless download_time_window_list == SKIP
        @download_time_window_list =
          download_time_window_list
      end
      @install_after_date = install_after_date unless install_after_date == SKIP
      @install_time_window_list = install_time_window_list unless install_time_window_list == SKIP
      @device_list = device_list unless device_list == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      campaign_name = hash.key?('campaignName') ? hash['campaignName'] : SKIP
      file_name = hash.key?('fileName') ? hash['fileName'] : SKIP
      file_version = hash.key?('fileVersion') ? hash['fileVersion'] : SKIP
      distribution_type =
        hash.key?('distributionType') ? hash['distributionType'] : SKIP
      start_date = hash.key?('startDate') ? hash['startDate'] : SKIP
      end_date = hash.key?('endDate') ? hash['endDate'] : SKIP
      download_after_date =
        hash.key?('downloadAfterDate') ? hash['downloadAfterDate'] : SKIP
      # Parameter is an array, so we need to iterate through it
      download_time_window_list = nil
      unless hash['downloadTimeWindowList'].nil?
        download_time_window_list = []
        hash['downloadTimeWindowList'].each do |structure|
          download_time_window_list << (DownloadTimeWindow.from_hash(structure) if structure)
        end
      end

      download_time_window_list = SKIP unless hash.key?('downloadTimeWindowList')
      install_after_date =
        hash.key?('installAfterDate') ? hash['installAfterDate'] : SKIP
      # Parameter is an array, so we need to iterate through it
      install_time_window_list = nil
      unless hash['installTimeWindowList'].nil?
        install_time_window_list = []
        hash['installTimeWindowList'].each do |structure|
          install_time_window_list << (DownloadTimeWindow.from_hash(structure) if structure)
        end
      end

      install_time_window_list = SKIP unless hash.key?('installTimeWindowList')
      device_list = hash.key?('deviceList') ? hash['deviceList'] : SKIP

      # Create object from extracted values.
      UploadAndScheduleFileRequest.new(campaign_name,
                                       file_name,
                                       file_version,
                                       distribution_type,
                                       start_date,
                                       end_date,
                                       download_after_date,
                                       download_time_window_list,
                                       install_after_date,
                                       install_time_window_list,
                                       device_list)
    end
  end
end
