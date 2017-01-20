# Session end request class.
module AlexaRubykit
  class AudioPlayerRequest < Request

    attr_accessor :name

    def initialize(json_request)
      super
      @type = 'AUDIO_PLAYER_REQUEST'.freeze
      @name = type.split('.').last
    end

    # Ouputs the request_id and the reason why.
    def to_s
      "Session Ended for requestID: #{request_id} with reason #{reason}"
    end
  end
end
