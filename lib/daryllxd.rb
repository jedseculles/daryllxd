require "./lib/daryllxd/version"

class String
  def darify!
    new_str = downcase.scan(/([^aeiou]?[aeiou]([^aeiou](?![aeiou]))?)/).map(&:first)
    new_str.rotate(new_str.length - 1).join
  end
end

module DaryllXD; end
