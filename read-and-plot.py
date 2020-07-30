#This program reads two files generated by write-xy.f95 and plots the values using matplotlib

import matplotlib.pyplot as plt

x_file = open('x_values.txt')
x_values = x_file.readlines()
x_file.close()

y_file = open('y_values.txt')
y_values = y_file.readlines()
y_file.close

for i in range(len(x_values)):
    x_values[i] = float(x_values[i].strip())

for i in range(len(y_values)):
    y_values[i] = float(y_values[i].strip())
    
plt.plot(x_values,y_values)
plt.show()