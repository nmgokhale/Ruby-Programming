# Consider this line of code:
exp(b, n) = b * exp(b, n - 1)

# It's math, so it's sort of readable. But exp, b and n are still terrible names for variables. 

# Start by rewriting it as:
exponent(base, power) = base * exponent(base, power - 1)

# Then, power - 1 runs first. So rewrite as:
smaller_exponent = power - 1
exponent(base, power) = base * exponent(base, smaller_exponent)

# Then:
smaller_exponent = power - 1
base_to_the_smaller_exponent = exponent(base, smaller_exponent)
exponent(base, power) = base * base_to_the_smaller_exponent

# Two important takeaways
# 1) We named the variables as descriptively as possible.
# 2) We broke complicated lines down into parts.

# Short Exercise
# The method below estimates how much money your child will have when they retire, based on your age.
def return_number(a)
      ((a / 2)**2) * (65 - (a / 2))
end

# You know the algorithm involves these steps in some order:
# Calculate how much money they'll have by multiplying by the number of years they have left until retirement.
# Estimate your child's current bank account by squaring their age.
# Estimate your child's age by dividing your age by two.
# Calculate how many years your child has left until they retire at age 65

def your_child_savings_after_retirement(your_age)
    child_age = (your_age / 2)
    child_current_account = (child_age ** 2)
    child_years_to_retire = (65 - child_age)
    child_current_account * child_years_to_retire
end