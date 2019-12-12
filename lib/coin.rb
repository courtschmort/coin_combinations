class Counter
  attr_writer(:cents)
  def initialize
    @cents = 0
    @coin_array = [
      ['quarters', 25],
      ['dimes', 10],
      ['nickels', 5],
      ['pennies', 1]
    ]
  end

  def get_change(cents)
    @cents = cents
    self.output(self.count)
  end

  def count
    @coin_array.map { |c| coin(c[1]) }
  end

  def output(coin_values)
    result = @coin_array.each_with_index.map do |c,i|
      (coin_values[i] > 0) ? "#{c[0]}: #{coin_values[i]} " : ''
    end
    result.join('')
  end

  def coin(n)
    coins = (@cents/n).floor
    @cents -= coins * n
    coins
  end

end
