!This program writes two text files "x_values.txt" and "y_values.txt"
!The purpose of this program was to attempt to produce values in FORTRAN that could be accesed by a python program (read-and-plot.py)
program xyvals
implicit none
real:: x, y
open(10, file="x_values.txt")
open(11, file="y_values.txt")
do x=0,5,0.1
	write(10,*) x
	y = x**2
	write(11, *) y
end do
end program xyvals
