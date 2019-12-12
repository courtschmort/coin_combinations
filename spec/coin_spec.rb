require('rspec')
require('coin')

describe('#Counter') do
  it('returns max number of quarters that would make up an input amount of cents') do
    counter = Counter.new()
    counter.cents = 100
    expect(counter.coin(25)).to(eq(4))
  end

  it('returns max number of dimes that would make up an input amount of cents') do
    counter = Counter.new()
    counter.cents = 100
    expect(counter.coin(10)).to(eq(10))
  end

  it('returns max number of nickels that would make up an input amount of cents') do
    counter = Counter.new()
    counter.cents = 100
    expect(counter.coin(5)).to(eq(20))
  end

  it('returns max number of pennies that would make up an input amount of cents') do
    counter = Counter.new()
    counter.cents = 100
    expect(counter.coin(1)).to(eq(100))
  end

  it('returns max number of coins that would make up an input amount of cents') do
    counter = Counter.new()
    counter.cents = 100
    expect(counter.count()).to(eq([4,0,0,0]))
  end

  it('returns a human readable string when passed an array of coin values') do
    counter = Counter.new()
    expect(counter.output([4,0,0,0])).to(eq('quarters: 4 '))
  end

  it('returns a human readable string when passed an array of coin values') do
    counter = Counter.new()
    expect(counter.get_change(100)).to(eq('quarters: 4 '))
  end

end
