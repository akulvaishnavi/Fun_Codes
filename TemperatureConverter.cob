       IDENTIFICATION DIVISION.
       PROGRAM-ID. TemperatureConverter.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TEMPERATURE        PIC 999V99.
       01 WS-CONVERTED-TEMP     PIC 999V99.
       01 WS-CHOICE             PIC X.
       01 WS-VALID-CHOICE       PIC X.
       01 WS-REPEAT             PIC X VALUE 'Y'.

       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM UNTIL WS-REPEAT NOT = 'Y'
               DISPLAY "Temperature Converter"
               DISPLAY "Enter temperature: "
               ACCEPT WS-TEMPERATURE
               DISPLAY "Convert to (C)elsius or (F)ahrenheit? (Enter C or F): "
               ACCEPT WS-CHOICE
               MOVE FUNCTION UPPER-CASE(WS-CHOICE) TO WS-VALID-CHOICE
               IF WS-VALID-CHOICE = 'C'
                   PERFORM FAHRENHEIT-TO-CELSIUS
               ELSE IF WS-VALID-CHOICE = 'F'
                   PERFORM CELSIUS-TO-FAHRENHEIT
               ELSE
                   DISPLAY "Invalid choice. Please enter C or F."
               END-IF
               DISPLAY "Converted Temperature: " WS-CONVERTED-TEMP
               DISPLAY "Do you want to convert another temperature? (Y/N): "
               ACCEPT WS-REPEAT
               MOVE FUNCTION UPPER-CASE(WS-REPEAT) TO WS-REPEAT
           END-PERFORM
           DISPLAY "Thank you for using the Temperature Converter."
           STOP RUN.

       FAHRENHEIT-TO-CELSIUS.
           COMPUTE WS-CONVERTED-TEMP = (WS-TEMPERATURE - 32) * 5 / 9.

       CELSIUS-TO-FAHRENHEIT.
           COMPUTE WS-CONVERTED-TEMP = (WS-TEMPERATURE * 9 / 5) + 32.
