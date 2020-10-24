def solve(meal_cost, tip_percent, tax_percent)
  tip_percent *= 0.01 * meal_cost
  puts tip_percent
  tax_percent *= 0.01 * meal_cost
  puts tax_percent
  # puts meal_cost + tip_percent + tax_percent
  puts (meal_cost + tip_percent + tax_percent).round
end

meal_cost = 10.25

tip_percent = 17

tax_percent = 5

solve meal_cost, tip_percent, tax_percent

