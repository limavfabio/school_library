class Solver
  def factorial(num)
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
    res = (1..num).map do |n|
      if (n % 15).zero?
        'fizzbuzz'
      elsif (n % 3).zero?
        'fizz'
      elsif (n % 5).zero?
        'buzz'
      else
        n
      end
    end
    res.join(' ')
  end
end
