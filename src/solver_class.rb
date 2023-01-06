class Solver
  def factorial(num)
    if num <= 1
      1
    else
      num * factorial(num - 1)
    end
  end

  def reverse(str)
    str.split('').reverse.join
  end

  def fizzbuzz(num)
  end
end
