class Pairer
  def initialize list
    @list = list
    @combos = list.combination(2).to_a
    @number_pairs = list.length / 2
  end

  def run
    first, *rest = *list
    rest.each_with_index.inject([]) do |set, (person,index)|
      set << (1..number_pairs-1).inject([[first, person]]) do |pairs, offset|
        pairs << pair(rest, index, offset)
      end
    end
  end

  private

  def pair(rest, index, offset)
    [rest[(index-offset)%rest.length], rest[(index+offset)%rest.length]]
  end

  attr_reader :number_pairs, :list
end
