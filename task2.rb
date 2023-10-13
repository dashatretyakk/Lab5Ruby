# var 11
def compute_sin_series_sum_in_range(start_x, end_x, n_range, epsilon)
  result = 0.0

  for x in start_x..end_x
    for n in n_range
      term = calculate_sin_term(x, n)
      result += term
      break if term.abs < epsilon
    end
  end

  result
end

def calculate_sin_term(x, n)
  numerator = (-1)**n * x**(2 * n + 1)
  denominator = factorial(2 * n + 1)
  numerator / denominator.to_f
end

def factorial(n)
  return 1 if n == 0
  (1..n).reduce(:*)
end

start_x = 0
end_x = 1
n_range = 10..58
epsilon = 0.001

result = compute_sin_series_sum_in_range(start_x, end_x, n_range, epsilon)
puts "Сума ряду sin(x) для значень x в діапазоні [#{start_x}, #{end_x}] та n в інтервалі #{n_range} з точністю #{epsilon}: #{result}"


