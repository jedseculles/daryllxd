require "daryllxd/version"

class String
  def darify!
    downcase.scan(/([^aeiou]?[aeiou]([^aeiou](?![aeiou]))?)/).rotate.join.squeeze
  end
end

module Daryllxd; end
