testsort
========

Test Sort was an experiment in creating my own sorting algorithm using the same data structure. The function itself generates an array of predetermined size, and populates that array with integers from 1-100. Then using the same data structure, it creates a feature vector which tests for each possible value and appends the corresponding values to the bottom of the array. If the values of the array are unknown it is half as efficient as a traditional bubble sort. However, assuming you have a limit to the possible values as you might find in a survey, it only needs a linear increase in resources relative to the size of the array.
