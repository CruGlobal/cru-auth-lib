# frozen_string_literal: true

module CruAuthLib
  class ApiError < ActiveModelSerializers::Model
    attr_accessor :message, :options
  end
end
