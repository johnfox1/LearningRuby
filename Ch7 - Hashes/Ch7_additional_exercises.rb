# Ch7 Hashes - Additional exercises on the HRF website
# 30th Sept, 2022

def english_date(iso_date)    # Setting up a method with iso_date (string) as a parameter.

  month_names = {
    "01" => "January",
    "02" => "Febuary",
    "03" => "March",
    "04" => "April",
    "05" => "May",
    "06" => "June",
    "07" => "July",
    "08" => "August",
    "09" => "September",
    "10" => "October",
    "11" => "November",
    "12" => "December"
  }

  date_parts = iso_date.split("-")  # Sets up an array by converting the iso_date parameter using split.
  year = date_parts[0]  # Pulls the year out of the date_parts array, at index 0. Integer object.
  month = date_parts[1]  # Pulls the month out of the date_parts array at index 1. Integer object.
  day = date_parts[2]  # Pulls the day out of the date_parts arrary at index 2. Integer object.
  "#{month_names[month]} #{day}, #{year}"  # Prints a string, interpolating in the variables
end

# Should print "June 20, 2002"
puts english_date("2002-06-20")
# Should print "December 13, 1974"
puts english_date("1974-12-13")

