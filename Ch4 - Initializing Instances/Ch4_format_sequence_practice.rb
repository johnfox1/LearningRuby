# Practicing formatting numbers (part of Ch4)
# 8th Sept, 2022

# Setting up a method to test number formatting
def test_format(format_string)

  # Print (no line break) a string, interpolating in the format string argument
  print "Testing '#{format_string}': "

  # Print the formatted number, interpolating in the formatted number (as per the argument)
  puts format(format_string, 12.3456)

end

test_format "%7.3f"
# Expected result: Testing '%7.3f':  12.346

test_format "%7.2f"
# Expected result: Testing '%7.2f':   12.35

test_format "%7.1f"
# Expected result: Testing '%7.1f':    12.4

test_format "%.1f"
# Expected result: Testing '%.1f': 12.3

test_format "%.2f"
# Expected result: Testing '%.2f': 12.35



# To recap, in the example format sequence: %5.2f,
# %: representd a start of a format sequence
# 5: represents the width of the entire number. If less than 5 characters, padding will be added to the left of the first character
# 2: represents the width after the decimal point. 2 represents 2 decimal places
# f: represents the type (f means float)