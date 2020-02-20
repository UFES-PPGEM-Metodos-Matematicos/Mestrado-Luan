      PROGRAM MAIN
C
C	PROGRAMA COM ELEMENTOS LINEARES PARA INTERPOLA��O DO PROBLEMA DE HELMHOTZ
C	VERS�O COM CALCULO DE NOVA ESTRAT�GIA SEM TERMO REGULARIZADOR MECIC
C     USAM-SE NOVAS FUN�OES, A SOLU��O FUNDAMENTAL E O TENSOR DE GALERKIN
C     PROBLEMA DE RESPOSTA COM SOLU��O ANALITICA IMPLEMENTADA 
      
	IMPLICIT NONE
	INTEGER NX,NY,NPX,NPY,CC1,CC2,CC3,CC4
	REAL NUM_PON_EXTE_RED,NUM_PON_EXTE_TOT,NUM_PON_INTE
	CHARACTER ARQOUT*20,NOME_PROB
	
	write(*,'(A\)')' INFORME NOME DO PROBLEMA-->'
      read(*,'(A20)')NOME_PROB

	write(*,'(A\)')' INFORME A QUANTIDADE DE PONTOS EM X-->'
      read(*,*)NX
	write(*,'(A\)')' INFORME A QUANTIDADE DE PONTOS EM Y-->'
      read(*,*)NY
	write(*,'(A\)')' INFORME A QUANTIDADE DE PONTOS INTERNOS EM X-->'
      read(*,*)NPX
	write(*,'(A\)')' INFORME A QUANTIDADE DE PONTOS INTERNOS EM Y-->'
      read(*,*)NPY
	write(*,'(A\)')' INFORME A CONDICAO DE CONT. EM X = 0 (L.ESQ)>'
      read(*,*)CC1
	write(*,'(A\)')' INFORME A CONDICAO DE CONT. EM Y = 0 (L.SUP)>'
      read(*,*)CC2	
	write(*,'(A\)')' INFORME A CONDICAO DE CONT. EM X = 1 (L.DIR)>'
      read(*,*)CC3
	write(*,'(A\)')' INFORME A CONDICAO DE CONT. EM Y = 1 (L.INF)>'
      read(*,*)CC4

	NUM_PON_EXTE_RED=(NX*NY)-4
	NUM_PON_EXTE_TOT=NX*NY
	NUM_PON_INTE=NPX*NPY
	WRITE(*,*) 'NUMERO DE N�S REDUZIDOS:',NUM_PON_EXTE_RED


      WRITE(*,'(A\)')' INFORME NOME DO ARQUIVO DE SAIDA --->'
      READ(*,'(A20)')ARQOUT

      OPEN(6,FILE=ARQOUT//".TXT")
	WRITE(6,100)NOME_PROB
100   FORMAT(' ',A11)

C  	write(6,554)J
C554	format(3X,I4)

      !CALL OUTPUT (X,Y,FI,DFI,NX)


      STOP
      END