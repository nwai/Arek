FasdUAS 1.101.10   ��   ��    k             l     ��  ��    "  AttemptToRepair.applescript     � 	 	 8   A t t e m p t T o R e p a i r . a p p l e s c r i p t   
  
 l     ��  ��      GNE Mac Status     �      G N E   M a c   S t a t u s      l     ��������  ��  ��        l     ��  ��    4 . Created by Zack Smith and Arek Sokol 7/21/11.     �   \   C r e a t e d   b y   Z a c k   S m i t h   a n d   A r e k   S o k o l   7 / 2 1 / 1 1 .      l     ��  ��    5 / Copyright 2011 Genentech. All rights reserved.     �   ^   C o p y r i g h t   2 0 1 1   G e n e n t e c h .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l      ��   ��    ( " We expect the script to be called      � ! ! D   W e   e x p e c t   t h e   s c r i p t   t o   b e   c a l l e d   " # " l     �� $ %��   $   repair<TestName>.sh    % � & & (   r e p a i r < T e s t N a m e > . s h #  ' ( ' j     �� )�� 0 repairscript repairScript ) m      * * � + +   (  , - , j    �� .�� "0 scriptdirectory scriptDirectory . m     / / � 0 0   -  1 2 1 j    �� 3�� 0 returnvalue returnValue 3 m     4 4 � 5 5 J N o   r e p a i r s   a r e   n e c e s s a r y   a t   t h i s   t i m e 2  6 7 6 l     �� 8 9��   8 ) # All Repairs completed successfully    9 � : : F   A l l   R e p a i r s   c o m p l e t e d   s u c c e s s f u l l y 7  ; < ; l     ��������  ��  ��   <  = > = h   	 �� ?�� "0 attempttorepair AttemptToRepair ? k       @ @  A B A l     C���� C O      D E D r     F G F c     H I H n     J K J m   	 ��
�� 
ctnr K l   	 L���� L I   	�� M��
�� .earsffdralis        afdr M  f    ��  ��  ��   I m    ��
�� 
ctxt G o      ���� "0 scriptdirectory scriptDirectory E m      N N�                                                                                  MACS  alis    t  Macintosh HD               ��GpH+   
��
Finder.app                                                      � �k"        ����  	                CoreServices    ���      �͒     
�� 
�� 
��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   B  O P O l    Q���� Q r     R S R n     T U T 1    ��
�� 
psxp U m     V V � W W  / t m p / g s a . p l i s t S o      ���� 0 theplistpath thePListPath��  ��   P  X�� X l  & Y���� Y O   & Z [ Z k   % \ \  ] ^ ] l   ��������  ��  ��   ^  _ ` _ r    " a b a m      c c � d d  / t m p / g s a . p l i s t b l      e���� e o      ���� 0 
plist_path  ��  ��   `  f g f r   # ) h i h 4   # '�� j
�� 
plif j o   % &���� 0 
plist_path   i l      k���� k o      ���� 0 
plist_file  ��  ��   g  l m l l  * *��������  ��  ��   m  n o n r   * 2 p q p n   * 0 r s r 2  . 0��
�� 
plii s n   * . t u t 4   + .�� v
�� 
plii v m   , - w w � x x " g l o b a l S t a t u s A r r a y u o   * +���� 0 
plist_file   q o      ���� 0 	itemnodes 	itemNodes o  y z y Z   3 K { |���� { =  3 : } ~ } n   3 8  �  m   6 8��
�� 
nmbr � n  3 6 � � � 2  4 6��
�� 
cobj � o   3 4���� 0 	itemnodes 	itemNodes ~ m   8 9����   | k   = G � �  � � � r   = D � � � m   = > � � � � � J N o   r e p a i r s   a r e   n e c e s s a r y   a t   t h i s   t i m e � o      ���� 0 returnvalue returnValue �  ��� � L   E G����  ��  ��  ��   z  � � � Y   L# ��� � ��� � k   [ � �  � � � l  [ [��������  ��  ��   �  � � � r   [ a � � � n   [ _ � � � 4   \ _�� �
�� 
cobj � o   ] ^���� 0 i   � o   [ \���� 0 	itemnodes 	itemNodes � o      ���� 0 itemnode itemNode �  � � � l  b b��������  ��  ��   �  � � � r   b l � � � c   b j � � � n   b h � � � 1   f h��
�� 
valL � n   b f � � � 4   c f�� �
�� 
plii � m   d e � � � � �  d i s c r i p t i o n � o   b c���� 0 itemnode itemNode � m   h i��
�� 
ctxt � o      ���� 0 discription   �  � � � r   m y � � � c   m w � � � n   m u � � � 1   s u��
�� 
valL � n   m s � � � 4   n s�� �
�� 
plii � m   o r � � � � �  m e t r i c � o   m n���� 0 itemnode itemNode � m   u v��
�� 
ctxt � o      ���� 
0 metric   �  � � � r   z � � � � c   z � � � � n   z � � � � 1   � ���
�� 
valL � n   z � � � � 4   { ��� �
�� 
plii � m   |  � � � � �  r e a s o n � o   z {���� 0 itemnode itemNode � m   � ���
�� 
ctxt � o      ���� 
0 reason   �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
valL � n   � � � � � 4   � ��� �
�� 
plii � m   � � � � � � �  s t a t u s � o   � ����� 0 itemnode itemNode � m   � ���
�� 
ctxt � o      ���� 
0 status   �  � � � l  � ��� � ���   �   DEBUG: Show Items    � � � � $   D E B U G :   S h o w   I t e m s �  � � � l  � ��� � ���   �   display dialog �    � � � � "   d i s p l a y   d i a l o g   � �  � � � l  � ��� � ���   � 1 + 	"discription:" & discription & return & �    � � � � V   	 " d i s c r i p t i o n : "   &   d i s c r i p t i o n   &   r e t u r n   &   � �  � � � l  � ��� � ���   � &  	"metric:" & metric & return & �    � � � � @ 	 " m e t r i c : "   &   m e t r i c   &   r e t u r n   &   � �  � � � l  � ��� � ���   � &  	"reason:" & reason & return & �    � � � � @ 	 " r e a s o n : "   &   r e a s o n   &   r e t u r n   &   � �  � � � l  � ��� � ���   �  	"status:" & status    � � � � & 	 " s t a t u s : "   &   s t a t u s �  ��� � Z   � � ����� � >  � � � � � o   � ����� 
0 status   � m   � � � � � � �  P a s s e d � k   � � �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  r e p a i r � o   � ����� 0 discription   � m   � �   �  . s h � o      ���� $0 repairscriptname repairScriptName �  r   � � n   � � 1   � ���
�� 
posx l  � ����� c   � �	
	 l  � ����� b   � � o   � ����� "0 scriptdirectory scriptDirectory o   � ����� $0 repairscriptname repairScriptName��  ��  
 m   � ���
�� 
alis��  ��   o      ���� $0 repairscriptpath repairScriptPath  r   � � n   � � 1   � ���
�� 
strq o   � ����� $0 repairscriptpath repairScriptPath o      ���� 0 repairscript repairScript  l  � �����   !  DEBUG: Show path to script    � 6   D E B U G :   S h o w   p a t h   t o   s c r i p t  l  � �����   "  display dialog repairScript    � 8   d i s p l a y   d i a l o g   r e p a i r S c r i p t  l  � ��� !��       Prompt for authentication   ! �"" 4   P r o m p t   f o r   a u t h e n t i c a t i o n #$# I  � ���%&
�� .sysoexecTEXT���     TEXT% m   � �'' �((  :& ��)��
�� 
badm) m   � ���
�� boovtrue��  $ *+* l  � ���,-��  , &   Activate the Please Wait window   - �.. @   A c t i v a t e   t h e   P l e a s e   W a i t   w i n d o w+ /0/ I  � ��1�~
� .GURLGURLnull��� ��� TEXT1 m   � �22 �33 $ m a c d n a : / / ? a c t i v a t e�~  0 4�}4 Q   �5675 k   � �88 9:9 I  � ��|;<
�| .sysoexecTEXT���     TEXT; o   � ��{�{ 0 repairscript repairScript< �z=�y
�z 
badm= m   � ��x
�x boovtrue�y  : >�w> r   � �?@? m   � �AA �BB D A l l   r e p a i r s   c o m p l e t e d   s u c c e s s f u l l y@ o      �v�v 0 returnvalue returnValue�w  6 R      �u�t�s
�u .ascrerr ****      � ****�t  �s  7 k   �CC DED r   �FGF b   �HIH b   �JKJ b   �	LML b   �NON b   �PQP m   � �RR �SS $ U n a b l e d   t o   r e p a i r :Q 1   ��r
�r 
spacO o  �q�q 0 discription  M 1  �p
�p 
spacK o  	�o
�o 
ret I m  TT �UU * R e p a i r   s c r i p t   f a i l e d .G o      �n�n 0 returnvalue returnValueE V�mV L  �l�l  �m  �}  ��  ��  ��  �� 0 i   � m   O P�k�k  � n   P VWXW m   S U�j
�j 
nmbrX n  P SYZY 2  Q S�i
�i 
cobjZ o   P Q�h�h 0 	itemnodes 	itemNodes��   � [�g[ l $$�f�e�d�f  �e  �d  �g   [ m    \\�                                                                                  sevs  alis    �  Macintosh HD               ��GpH+   
��System Events.app                                               !.��Y        ����  	                CoreServices    ���      ���     
�� 
�� 
��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��   > ]^] l    	_�c�b_ I    	�a`�`
�a .aevtoappnull  �   � ****` o     �_�_ "0 attempttorepair AttemptToRepair�`  �c  �b  ^ a�^a l  
 b�]�\b L   
 cc o   
 �[�[ 0 returnvalue returnValue�]  �\  �^       �Zd * / 4ef�Z  d �Y�X�W�V�U�Y 0 repairscript repairScript�X "0 scriptdirectory scriptDirectory�W 0 returnvalue returnValue�V "0 attempttorepair AttemptToRepair
�U .aevtoappnull  �   � ****e �T ?  g�T "0 attempttorepair AttemptToRepairg  hih �S
�S .aevtoappnull  �   � ****i �Rj�Q�Pkl�O
�R .aevtoappnull  �   � ****j k    &mm  Ann  Ooo  X�N�N  �Q  �P  k �M�L�K�J�I�H�G�F�E�D�C�B�M 0 theplistpath thePListPath�L 0 
plist_path  �K 0 
plist_file  �J 0 	itemnodes 	itemNodes�I 0 i  �H 0 itemnode itemNode�G 0 discription  �F 
0 metric  �E 
0 reason  �D 
0 status  �C $0 repairscriptname repairScriptName�B $0 repairscriptpath repairScriptPathl % N�A�@�? V�>\ c�=�< w�;�: � ��9 � � � � � �8�7�6'�5�42�3A�2�1R�0�/T
�A .earsffdralis        afdr
�@ 
ctnr
�? 
ctxt
�> 
psxp
�= 
plif
�< 
plii
�; 
cobj
�: 
nmbr
�9 
valL
�8 
alis
�7 
posx
�6 
strq
�5 
badm
�4 .sysoexecTEXT���     TEXT
�3 .GURLGURLnull��� ��� TEXT�2  �1  
�0 
spac
�/ 
ret �O'� )j �,�&Ec  UO��,E�O��E�O*�/E�O���/�-E�O��-�,j  �Ec  OhY hO �k��-�,Ekh ��/E�O���/�,�&E�O��a /�,�&E�O��a /�,�&E�O��a /�,�&E�O�a  �a �%a %E�Ob  �%a &a ,E�O�a ,Ec   Oa a el Oa j O b   a el Oa Ec  W %X   a !_ "%�%_ "%_ #%a $%Ec  OhY h[OY�7OPUf �.p�-�,qr�+
�. .aevtoappnull  �   � ****p k     ss ]tt a�*�*  �-  �,  q  r �)
�) .aevtoappnull  �   � ****�+ b  j  Ob  ascr  ��ޭ