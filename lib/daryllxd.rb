require "./lib/daryllxd/version"

class String
  def darify!
    split(' ').map(&:_convert).join(' ')
  end

  def _convert
    syllables = downcase.scan(/([^aeiou]?[aeiou]([^aeiou](?![aeiou]))?)/).map(&:first)
    syllables.rotate(syllables.length - 1).join
  end
end

module DaryllXD; end
