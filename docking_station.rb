class DockingStation
  def initialize
    @bikes = []
  end

  def dock(bike) # Bike # FakeWorkingBike || FakeBrokenBike
    return @bikes unless bike.working?
    @bikes << bike
  end
end

DockingStation.new

class Bike
  def initialize
    # Make the program go to sleep for 20 billion seconds
    10_000_000_000.times do
      # Make the program go to sleep for 2 seconds
      sleep(2)
    end
    @working = true
  end

  def working?
    @working
  end

  def break
    @working = false
  end
end

## Quick test
def assert_equal(result, expected)
  if result == expected
    p "#{result} equals #{expected}"
  else
    p "#{result} does not equal #{expected}"
  end
end

class FakeWorkingBike
  def working?
    true
  end
end

class FakeBrokenBike
  def working?
    false
  end
end

## UNIT TESTS should test one class at a time

## describe "When the bike works, I get the array with the bike"
# The following commented line (58) is the same as line 59, but it uses RSpec to do it.
# my_bicycle = double(working?: true)
my_bicycle = FakeWorkingBike.new
result = DockingStation.new.dock(my_bicycle)
expected = [my_bicycle]
assert_equal(result, expected)

## describe "When the bike breaks, I get the empty array"
my_bicycle = FakeBrokenBike.new
bank = DockingStation.new
result = bank.dock(my_bicycle)
expected = []
assert_equal(result, expected)

