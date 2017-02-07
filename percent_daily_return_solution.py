""" Percent Daily Return Exercise

In this exercise, you are given the stock values for several consecutive days 
for acme corporation. Your job is to calculate the "percent daily return" for 
each day. The percent daily return is the percentage that the stock changes 
each compared to the day before.

Below you are given the stock prices (there are only 4 days in this example). 
Use slicing a numeric operations to calculate the percent daily return 
(no for loops!). Refer back to the video lecture for inspiration.
"""

from numpy import array

acme = array([10, 11.5, 11, 10, 12])


# Solution 1
#
# There are multiple ways to write this solution. The first that you will 
# likely see from someone comfortable with slicing notation might look like 
# this. In a single line, you have the entire calculation (aside from the 
# print statement). Here we are slicing off the "second day" values, 
# subtracting the "first day" values and then dividing by the first day values. 
# It is a quite clean description of the algorithm once you are comfortable 
# with slicing.

pdr = (acme[1:] - acme[:-1])/acme[:-1]
print pdr * 100

# Solution 2
# 
# This example will produce excatly the same results, but is, perhaps, a 
# bit more readable. We are using a couple of intermediate variables to 
# explicitly name slices out of the array as the first and second day. It is 
# a little bit longer, but it also is more readable. There is no difference 
# in calculation speed.
#
# The better approach will often depend upon the problem. I find myself 
# writing equations as shown in solution 1 until they become difficult to 
# read and then switching to named intermediate variables to provide clarity.
first_day = acme[:-1]
second_day = acme[1:]
pdr = (second_day - first_day) / first_day
print pdr * 100
