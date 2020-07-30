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