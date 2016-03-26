#   Copyright (c) 2012, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

module MotdHelper
  def donationWidth()
    res = Net::HTTP.get_response("zauberstuhl.de","/donate/json")
    if res.kind_of? Net::HTTPSuccess
      (JSON.parse(res.body))['width']
    else; 0; end
  rescue
    0
  end
end
