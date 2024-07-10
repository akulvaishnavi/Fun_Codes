PROGRAM CircleArea
  IMPLICIT NONE
  REAL :: radius, area
  REAL, PARAMETER :: pi = 3.14159

  ! Prompt the user to enter the radius of the circle
  PRINT *, 'Enter the radius of the circle:'
  READ *, radius

  ! Calculate the area of the circle
  area = pi * radius * radius

  ! Display the result
  PRINT *, 'The area of the circle is:', area

END PROGRAM CircleArea
