.DATA
chaine DW "Lea Cecchi, je vous hais."

.CODE

LEA SP, STACK
	
	LD R0,0
	OUT R0,5 ;Pour effacer l'�cran
	LEA R0,chaine ;adresse de la chaine
	LD R1,50 ;coord x
	LD R2,100 ;coord y
	CALL affichageChaine
	LD R2,105 ;Nouvelle coodon�e Y pour afficher la ligne juste sous le texte
	IN R3,1 ; On r�cup�re la coordon�e x de la derni�re lettre affich�e
	OUT R1,1 ; coord x d�part de la ligne
	OUT R2,2 ; coord y d�part de la ligne
	OUT R3,3 ; coord x d'arriv�e de la ligne
	OUT R2,4 ; coord y d'arriv�e de la ligne
	LD R1,%11100010 ;Commande d'affichage (trait jaune)
	OUT R1,5 ;Affichage
	HLT

affichageChaine:

	LD R3,'.'
	OUT R1,1 ;Coordon�e x de la chaine dans le port 1
	OUT R2,2 ;Coordon�e y de la chaine dans le port 2

	; Comme les coordon�es x et y sont automatiquement mises � jour on
	; ne les int�gre pas dans la boucle

	boucle:
	CMP R3, [R0] ;Si le caract�re point� par R0 est '.', on sort
	BEQ finAffichage
	OUT [R0],3 ;Caract�re de la chaine � afficher dans port 3
	LD R4, %11100111 ;Commande d'affichage (caract�re jaune)
	OUT R4,5 ; affichage du caract�re
	INC R0
	JMP boucle

	finAffichage:
	RET

.STACK 15