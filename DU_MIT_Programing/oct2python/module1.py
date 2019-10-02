# Problem:
# In two differnt modules, write two functions named FindNumbers(n) and RemoveVowels(). Write a third module that utilizes these two functions.
# Also, use list comprehnsion to write codes inside the functions. The functions do the following things:
#
#
# FindNumbers(n): Find all of the numbers from 1-n that have a 3 in them
#
# RemoveVowels(): Remove all of the vowels in a string


def FindNumbers(n):
    return [data for data in range(int(n)+1) if "3" in str(data)]


#print(FindNumbers(100))