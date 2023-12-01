      ******************************************************************
      * Author: GABRIELA RODRIGUEZ
      * Date: 03/10/2023
      * Purpose: EJEMPLO 1 : TIMES, UNTIL, VARYING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CL17EJEM1.
      *----------------------------------------------------------------*
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.

       FILE-CONTROL.

      *----------------------------------------------------------------*
       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.

       77  WS-INDICE                        PIC 9(02).

      *----------------------------------------------------------------*
       PROCEDURE DIVISION.

           DISPLAY "PERFORM TIMES".

           PERFORM 2000-MOSTRAR-MENSAJE
              THRU 2000-MOSTRAR-MENSAJE-FIN
                 5 TIMES.

           DISPLAY "--------------------------------------------------".
           DISPLAY "PERFORM UNTIL".

           MOVE 1                           TO WS-INDICE.

           PERFORM 2100-MOSTRAR-MENSAJE
              THRU 2100-MOSTRAR-MENSAJE-FIN
             UNTIL WS-INDICE > 5

           DISPLAY "--------------------------------------------------".
           DISPLAY "PERFORM VARYING - ASCENDENTE".

           PERFORM 2200-MOSTRAR-MENSAJE
              THRU 2200-MOSTRAR-MENSAJE-FIN
           VARYING WS-INDICE
              FROM 1 BY 1
             UNTIL WS-INDICE > 5.

           DISPLAY "--------------------------------------------------".
           DISPLAY "PERFORM VARYING - DESCENDENTE".

           PERFORM 2200-MOSTRAR-MENSAJE
              THRU 2200-MOSTRAR-MENSAJE-FIN
           VARYING WS-INDICE
              FROM 5 BY -1
             UNTIL WS-INDICE = 0.

           DISPLAY "--------------------------------------------------".

           STOP RUN.
      *----------------------------------------------------------------*
       2000-MOSTRAR-MENSAJE.

           DISPLAY "HOLA".

       2000-MOSTRAR-MENSAJE-FIN.
           EXIT.
      *----------------------------------------------------------------*
       2100-MOSTRAR-MENSAJE.

           DISPLAY "HOLA - INDICE: " WS-INDICE.

           ADD 1                            TO WS-INDICE.

       2100-MOSTRAR-MENSAJE-FIN.
           EXIT.
      *----------------------------------------------------------------*
       2200-MOSTRAR-MENSAJE.

           DISPLAY "HOLA - INDICE: " WS-INDICE.

       2200-MOSTRAR-MENSAJE-FIN.
           EXIT.
      *----------------------------------------------------------------*

       END PROGRAM CL17EJEM1.
