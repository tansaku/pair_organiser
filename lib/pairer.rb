class Pairer
  def initialize list
    @list = list
    @combos = list.combination(2).to_a
    @number_pairs = list.length / 2
  end

  def run
    set = []
    while combos.length > 0
      pairs = []
      if process pairs
        set << pairs
        combos = list - set.flatten
      else
        combos += pairs
        combos = combos.shuffle
      end
    end
    set
  end

  private

  attr_reader :number_pairs, :list
  attr_accessor :combos

  def alternates pairs
    combos.reject { |p| check_for(p[0], pairs) || check_for(p[1], pairs) }
  end

  def check_for element, pairs
    pairs.flatten.include? element
  end

  def process pairs, previous_length = -1, spin = 0
    return true if pairs.length == number_pairs
    while (pair = alternates(pairs).first).nil? do combos << pairs.pop end
    combos.delete pair
    pairs << pair
    spin += 1 if previous_length == pairs.length
    return false if spin > 10
    process pairs, pairs.length, spin
  end
end
