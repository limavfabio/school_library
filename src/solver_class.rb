class Solver
  def factorial(n)
    if n < 0
      raise 'Factorial is defined only for non-negative integers'
    elsif n == 0
      1
    else
      (1..n).inject(:*)
    end
  end
end
