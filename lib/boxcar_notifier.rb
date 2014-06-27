require 'rubygems'
require 'net/https'
#require 'httparty'

module BoxcarNotifier

  # for notifications - https://new.boxcar.io/api/notifications
  class Notifier
    attr_accessor :access_token

    def initialize(access_token=nil)
      @access_token = access_token
      @boxcarurl = URI.parse('https://new.boxcar.io/api/notifications')
      @https = Net::HTTP.new(@boxcarurl.host, @boxcarurl.port)
      @https.use_ssl = true
    end

    def notify(title, message, options = {:sound => "bird-1", :source_name => nil})
      request = Net::HTTP::Post.new(@boxcarurl.path)
      request.set_form_data(
        {
          "user_credentials" => @access_token,
          "notification[title]" => title,
          "notification[long_message]" => message,
          "notification[sound]" => options[:sound],
          "notification[source_name]" => options[:source_name]
        }
      )
      res = @https.request(request)
    end
  end
end
