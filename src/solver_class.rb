class Solver
  def factorial(num)
    raise ArgumentError, 'Expected a positive value' if num.negative?

    if num <= 1
      1
    else
      num * factorial(num - 1)
    end
  end

  def reverse(str)
    str.chars.reverse.join
  end

  def fizzbuzz(num)
    if (num % 15).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
