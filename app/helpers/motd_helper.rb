#   Copyright (c) 2012, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

module MotdHelper
  def donationWidth()
    uri = URI.parse("https://zauberstuhl.de/donate/json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    res = http.get(uri.request_uri)

    (JSON.parse(res.body))['width']
  rescue
    0
  end
end
