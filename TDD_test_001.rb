def expect_to_be_equal(test1, test2)
  if test1 == test2
    return "Test passes! :)"
  else
    return "Test fails! D:"
  end
end

class Expect
  def to_be_equal(test1, test2)
    if test1 == test2
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end

puts Expect.new.to_be_equal(true, false)
