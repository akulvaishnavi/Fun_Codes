PROGRAM CircleArea
  IMPLICIT NONE
  REAL :: radius, area
  REAL, PARAMETER :: pi = 3.14159

  PRINT *, 'Enter the radius of the circle:'
  READ *, radius

  area = pi * radius * radius

  PRINT *, 'The area of the circle is:', area

END PROGRAM CircleArea
