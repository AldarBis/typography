require 'typog/config'

class Call
    def calling(raw_text)
      config = Typog::Conf.new
      uri = URI(config.mdash_uri)
      res = Net::HTTP.post_form(uri, 'Host' => 'mdash.ru', 'Content-type' => 'multipart/form-data',
      'Content-Length' => '24', 'text' => raw_text)
    end
end