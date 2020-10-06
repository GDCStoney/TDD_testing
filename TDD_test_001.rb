def expect_to_be_equal(test1, test2)
  if test1 == test2
    return "Test passes! :)"
  else
    return "Test fails! D:"
  end
end

class Expect
  attr_accessor :test1

  def initialize(test1)
    @test1 = test1
  end

  def to_equal(test2)
    if test2 == @test1
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end

  def to_be_equal(test1, test2)
    if test2 == test1
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end

  def to(comparison)
    comparison.test1 = @test1
    if comparison.compare == true
      puts "Test passed! :)"
    else
      puts "Test failed! :("
    end
  end

  def test1
    return @test1
  end
end

class Equal
  attr_accessor :test1, :test2

  def initialize(test2)
    @test2 = test2
  end

  def compare
    if @test1 != nil
      @test2 == @test1
    else
      nil
    end
  end
end

#puts Equal.new( true ).compare( false )
#puts Equal.new(true).test1

puts Expect.new(true).to (Equal.new( false ) )
