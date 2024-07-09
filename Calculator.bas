10 PRINT "Simple BASIC Calculator"
20 PRINT "Enter the first number: "
30 INPUT A
40 PRINT "Enter the operator (+, -, *, /): "
50 INPUT O$
60 PRINT "Enter the second number: "
70 INPUT B

80 IF O$ = "+" THEN PRINT "Result: "; A + B
90 IF O$ = "-" THEN PRINT "Result: "; A - B
100 IF O$ = "*" THEN PRINT "Result: "; A * B
110 IF O$ = "/" THEN IF B = 0 THEN PRINT "Error: Division by zero" ELSE PRINT "Result: "; A / B

120 PRINT "Do you want to perform another calculation? (Y/N)"
130 INPUT A$
140 IF A$ = "Y" OR A$ = "y" THEN GOTO 20

150 PRINT "Thank you for using the calculator!"
160 END
