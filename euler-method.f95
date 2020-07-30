!-------------------------------
! Introduction
!-------------------------------
!This program approximately solves a first-order differtential equation using Euler's method
!we first define our ODE: dy/dx = f(x,y), then we execute Euler's Method [y_n+1 = y_n + dx*(dy/dx (x_n,y_n)) ]
!The result is two arrays (x-values and y-values) that are then written to text files ('x_vals.txt' and 'y_vals.,txt')
! A corresponding python program may be written to plot the results using matplotlib

!Written by Andrew Murphy, 2020

!-------------------------------
! Define dy/dx = f(x,y)
!-------------------------------
function dy_dx(x,y)
implicit none
real :: x, y, dy_dx
dy_dx = -y 				!Here we define our ODE, this may be changed as necessary 
end function dy_dx

!-------------------------------
! Main Part of Code
!-------------------------------
program euler
implicit none
real, parameter:: x_0 = 0 , y_0 = 1, dx = 0.01	! Define initial x-value (x_0), initial y-value (y_0), and differential step (dx)
integer, parameter :: N_max = 1000				! Define number of steps in Euler's Method
real, dimension(N_max) :: x_vals , y_vals		! Set up our arrays that contane our x-values and y-values
integer:: i
real :: x, y, dy_dx 

x_vals(1) = x_0		!Set first x-value to be x_0
y_vals(1) = y_0		!Set first y-value to be y_0


do i = 2,N_max			! Here we begin the algorithm for Euler's Method
	x = x_vals(i - 1)
	y = y_vals(i - 1)
	
	x_vals(i) = x + dx
	y_vals(i) = y + dx * dy_dx(x,y)
end do

!-------------------------------
! Writing Results to Text Files
!-------------------------------
open(10, file="x_vals.txt") !'x_vals.txt' contains x-values
open(11, file="y_vals.txt")	!'y_vals.txt' contains y-values

do i =1,N_max
	write (10,*) x_vals(i)
	write (11,*) y_vals(i)
end do
end program euler

!----------------------------
!		END
!-----------------------------
	
