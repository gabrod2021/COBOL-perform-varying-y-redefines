      ******************************************************************
      * Author: GABRIELA RODRIGUEZ
      * Date: 03/10/2023
      * Purpose:EJEMPLO 2 : TIMES, UNTIL, VARYING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CL17EJEM2.
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

       01 WS-TABLA                          OCCURS 5 TIMES.
           05 WS-NUMERO                     PIC 9.

       77  WS-INDICE                        PIC 9(02).

      *----------------------------------------------------------------*
       PROCEDURE DIVISION.

           MOVE 1                           TO WS-INDICE.

           PERFORM 2000-INGRESAR-VALORES
              THRU 2000-INGRESAR-VALORES-FIN
             UNTIL WS-INDICE > 5

           DISPLAY "--------------------------------------------------".
           DISPLAY "ASCENDENTE".

           PERFORM 2100-MOSTRAR-VALORES
              THRU 2100-MOSTRAR-VALORES-FIN
           VARYING WS-INDICE
              FROM 1 BY 1
             UNTIL WS-INDICE > 5.

           DISPLAY "--------------------------------------------------".
           DISPLAY "DESCENDENTE".

           PERFORM 2200-MOSTRAR-VALORES-DESC
              THRU 2200-MOSTRAR-VALORES-DESC-FIN.

           STOP RUN.
      *----------------------------------------------------------------*
       2000-INGRESAR-VALORES.

           DISPLAY "INGRESA UN VALOR".
           ACCEPT WS-NUMERO(WS-INDICE).

           ADD 1                            TO WS-INDICE.

       2000-INGRESAR-VALORES-FIN.
           EXIT.
      *----------------------------------------------------------------*
       2100-MOSTRAR-VALORES.

           DISPLAY "VALOR " WS-INDICE ": " WS-NUMERO(WS-INDICE).

       2100-MOSTRAR-VALORES-FIN.
           EXIT.
      *----------------------------------------------------------------*
       2200-MOSTRAR-VALORES-DESC.

           PERFORM VARYING WS-INDICE FROM 5 BY -1 UNTIL WS-INDICE = 0

             DISPLAY "VALOR " WS-INDICE ": " WS-NUMERO(WS-INDICE)

           END-PERFORM.

       2200-MOSTRAR-VALORES-DESC-FIN.
           EXIT.
      *----------------------------------------------------------------*

       END PROGRAM CL17EJEM2.
