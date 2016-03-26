#   Copyright (c) 2012, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

module MotdHelper
  def print_motd()
    raw File.open("/etc/motd", "r").read
  end
end
