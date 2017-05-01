# frozen_string_literal: true

require 'cru_auth_lib/version'
require 'cru_auth_lib/access_token'
require 'cru_auth_lib/access_token_serializer'
require 'cru_auth_lib/access_token_protected_concern'
require 'cru_auth_lib/api_error'
require 'cru_auth_lib/api_error_serializer'
require 'redis'

module CruAuthLib
  class << self
    attr_accessor :redis_host, :redis_port, :redis_db, :redis_client

    def configure
      yield self
    end

    def redis_host
      @redis_host ||= 'localhost'
    end

    def redis_port
      @redis_port ||= '6379'
    end

    def redis_db
      @redis_db ||= 2
    end

    def redis_client
      ::Redis.new(host: CruAuthLib.redis_host,
                  port: CruAuthLib.redis_port,
                  db: CruAuthLib.redis_db)
    end
  end
end
