require 'alexa_rubykit/request'
require 'alexa_rubykit/version'
require 'alexa_rubykit/response'
require 'alexa_rubykit/intent_request'
require 'alexa_rubykit/launch_request'
require 'alexa_rubykit/session_ended_request'
require 'alexa_rubykit/audio_player_request'

module AlexaRubykit
  # Prints a JSON object.
  def self.print_json(json)
    p json
  end

  # Prints the Gem version.
  def self.print_version
    p AlexaRubykit::VERSION
  end

  # Returns true if all the Alexa request objects are set.
  def self.valid_alexa?(request_json)
    valid_normal?(request_json) || valid_audioplayer?(request_json)
  end

  def self.valid_normal?(request_json)
    !request_json.nil? || !request_json['session'].nil? ||
        !request_json['version'].nil? || !request_json['request'].nil?
  end

  def self.valid_audioplayer?(request_json)
    !request_json.nil? || !request_json['type'].nil? ||
        !request_json['requestId'].nil? || !request_json['token'].nil?
  end

end
