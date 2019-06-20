# A local sports event broadcasting company wants to build an automated display to show how contestants stack up.
# Each contestant has 3 metrics: an age, height and weight.
# They want to store the data of each contestant in a structure that allows them to easily get
# the order of the contestant based on any of the 3 metrics. Help the broadcasting company out
# by writing a multi-handle linked list. Implement the following:
#
# Level 1:
#
# An add method add(name, age, height, weight), that adds a contestant, with their metrics, to the list in O(n) time.
# A sorted method sorted(metric), that takes in either 'A', 'H', or 'W' and returns a list of competitors names sorted in ascending order by that metric. It should run in O(n) time.
# Level 2:
#
# Add a delete method to remove a contestant by name (delete(name)), which removes an item from the list.
# Add another param called asc to the sorted method (sorted(metric, asc)) as a boolean flag indicating whether the sorting should be ascending (asc = true) or descending (asc = false). It should still run in O(n) time.
# Level 3:
#
# Extend this data structure to allow for any arbitrary metric.
# Add a method ranking(name) that takes a name and returns the position of that contestant in each metric category.
# Sample Input
# Psuedocode
#
# list = new ContestantList()
# list.add("Alexander",  33, 74, 190)
# list.add("Stella",     45, 66, 115)
# list.add("Marc",       38, 79, 165)
# list.add("Donnatella", 60, 72, 167)
#
# list.sorted("A")  -> ["Alexander", "Marc", "Stella", "Donnatella"]
# list.sorted("H")  -> ["Stella", "Donnatella", "Alexander", "Marc"]
# list.sorted("W")  -> ["Stella", "Marc", "Donnatella", "Alexander"]
