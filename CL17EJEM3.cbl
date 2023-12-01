      ******************************************************************
      * Author: GABRIELA RODRIGUEZ
      * Date: 03/10/2023
      * Purpose:  EJEMPLO 3 : REDEFINES
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CL17EJEM3.
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

       01 WS-FECHA-TXT                      PIC X(10).

       01 WS-FECHA-NUM                      REDEFINES WS-FECHA-TXT.
          05 WS-ANIO                        PIC 9(04).
          05 WS-SEPARADOR-1                 PIC X(01).
          05 WS-MES                         PIC 9(02).
          05 WS-SEPARADOR-2                 PIC X(01).
          05 WS-DIA                         PIC 9(02).

      *----------------------------------------------------------------*
       PROCEDURE DIVISION.

           PERFORM 2000-INGRESAR-VALOR
              THRU 2000-INGRESAR-VALOR-FIN.

           PERFORM 2100-VALIDAR-FECHA
              THRU 2100-VALIDAR-FECHA-FIN.

           STOP RUN.
      *----------------------------------------------------------------*
       2000-INGRESAR-VALOR.

           DISPLAY "INGRESAR FECHA EN FORMATO AAAA-MM-DD"
           ACCEPT WS-FECHA-TXT.

           DISPLAY "--------------------------------------------------".

       2000-INGRESAR-VALOR-FIN.
           EXIT.
      *----------------------------------------------------------------*
       2100-VALIDAR-FECHA.

           IF WS-ANIO IS NOT NUMERIC
              DISPLAY "EL anio ingresaro no es numerico"
           ELSE
              DISPLAY "Anio: " WS-ANIO
           END-IF.

           IF WS-SEPARADOR-1 NOT EQUAL "-"
              DISPLAY "EL primer separador no es guion"
           END-IF.

           IF WS-MES IS NOT NUMERIC
              DISPLAY "EL mes ingresaro no es numerico"
           ELSE
              DISPLAY "Mes: " WS-MES
           END-IF.

           IF WS-SEPARADOR-2 NOT EQUAL "-"
              DISPLAY "EL segundo separador no es guion"
           END-IF.

           IF WS-DIA IS NOT NUMERIC
              DISPLAY "EL dia ingresaro no es numerico"
           ELSE
              DISPLAY "Dia: " WS-DIA
           END-IF.

       2100-VALIDAR-FECHA-FIN.
           EXIT.
      *----------------------------------------------------------------*

       END PROGRAM CL17EJEM3.
