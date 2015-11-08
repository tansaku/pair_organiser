class Pairer
  def initialize list
    @list = list
    @combos = list.combination(2).to_a
    @number_pairs = list.length / 2
  end

  def run
    set = []
    first, *rest = *list
    rest.each_with_index do |person, index| 
      pairs = []
      pairs << [first, person]
      (1..number_pairs-1).each do |offset|
        pairs << [rest[(index-offset)%rest.length], rest[(index+offset)%rest.length]]
      end
      set << pairs
    end
    set
  end

  private

  attr_reader :number_pairs, :list
end
