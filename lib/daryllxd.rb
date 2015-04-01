require "./lib/daryllxd/version"

class String
  def darify!
    new_str = downcase.scan(/([^aeiou]?[aeiou]([^aeiou](?![aeiou]))?)/)
    new_str.rotate(new_str.length - 1).join.squeeze
  end
end

module Daryllxd; end
