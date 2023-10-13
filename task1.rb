# var 11
def prm(a, b, n, func)
  h = (b - a).to_f / n
  sum = 0.0
  (1..n).each do |i|
    xi = a + (i - 0.5) * h
    sum += func.call(xi)
  end
  sum *= h
end

def trp(a, b, n, func)
  h = (b - a).to_f / n
  sum = 0.5 * (func.call(a) + func.call(b))
  (1..n-1).each do |i|
    xi = a + i * h
    sum += func.call(xi)
  end
  sum *= h
end

f1 = ->(x) { 1.0 / ((x + 1) * Math.sqrt(x**2 + 1)) }
f2 = ->(x) { x * Math.atan(x) }

a1, b1, n1 = 0.0, 0.6, 1000
a2, b2, n2 = 0.2, 1.6, 1000

result_prm_f1 = prm(a1, b1, n1, f1)
result_trp_f1 = trp(a1, b1, n1, f1)

result_prm_f2 = prm(a2, b2, n2, f2)
result_trp_f2 = trp(a2, b2, n2, f2)

puts "Інтеграл f1 методом прямокутників: #{result_prm_f1}"
puts "Інтеграл f1 методом трапецій: #{result_trp_f1}"
puts "Інтеграл f2 методом прямокутників: #{result_prm_f2}"
puts "Інтеграл f2 методом трапецій: #{result_trp_f2}"

