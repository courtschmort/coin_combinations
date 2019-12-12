class Counter
  def initialize
    @coin_array = [['quarters', 25],['dimes', 10],['nickels', 5],['pennies', 1]]
  end

  def get_change(cents)
    value_array = @coin_array.map do |c|
      coins = (cents/c[1]).floor
      cents -= coins * c[1]
      coins
    end
    result = @coin_array.each_with_index.map do |c,i|
      (value_array[i] > 0) ? "#{c[0]}: #{value_array[i]} " : ''
    end
    result.join('')
  end
end
