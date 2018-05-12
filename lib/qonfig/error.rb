# frozen_string_literal: true

module Qonfig
  # @api public
  # @since 0.1.0
  Error = Class.new(StandardError)

  # @api public
  # @since 0.1.0
  SettingDefinitionError = Class.new(Error)
end
