FasdUAS 1.101.10   ��   ��    k             l     ��  ��      NAME: 			Mac AD Utility     � 	 	 0   N A M E :   	 	 	 M a c   A D   U t i l i t y   
  
 l     ��������  ��  ��        l     ��  ��    . ( PROJECT: 			Mac Authentication Project      �   P   P R O J E C T :   	 	 	 M a c   A u t h e n t i c a t i o n   P r o j e c t        l     ��������  ��  ��        l     ��  ��    u o DESCRIPTION:		This utility performs as series of tests and scripted tasks to bind the Mac to  Active Directory     �   �   D E S C R I P T I O N : 	 	 T h i s   u t i l i t y   p e r f o r m s   a s   s e r i e s   o f   t e s t s   a n d   s c r i p t e d   t a s k s   t o   b i n d   t h e   M a c   t o     A c t i v e   D i r e c t o r y      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    + % AUTHOR:			Arek Sokol (arek@gene.com)     �     J   A U T H O R : 	 	 	 A r e k   S o k o l   ( a r e k @ g e n e . c o m )   ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % ( " CREATE DATE:		09/26/2010 11:35 AM    & � ' ' D   C R E A T E   D A T E : 	 	 0 9 / 2 6 / 2 0 1 0   1 1 : 3 5   A M $  ( ) ( l     �� * +��   * ) # LAST MODIFIED: 	04/24/2013 9:59 PM    + � , , F   L A S T   M O D I F I E D :   	 0 4 / 2 4 / 2 0 1 3   9 : 5 9   P M )  - . - l     ��������  ��  ��   .  / 0 / l     ��������  ��  ��   0  1 2 1 j     �� 3�� 0 scriptversion ScriptVersion 3 m      4 4 � 5 5  6 . 0 2  6 7 6 j    �� 8�� &0 myrequiredversion myRequiredVersion 8 m     9 9 � : :  1 0 . 6 . 0 7  ; < ; l      = > ? = j    �� @�� 0 debug Debug @ m    ��
�� boovfals > 9 3 Warning may display passwords in clear in Log file    ? � A A f   W a r n i n g   m a y   d i s p l a y   p a s s w o r d s   i n   c l e a r   i n   L o g   f i l e <  B C B l     ��������  ��  ��   C  D E D l      �� F G��   F 1 + External Commands used by this Application    G � H H V   E x t e r n a l   C o m m a n d s   u s e d   b y   t h i s   A p p l i c a t i o n E  I J I j   	 �� K�� 0 adcheck   K m   	 
 L L � M M B / u s r / s h a r e / c e n t r i f y d c / b i n / a d c h e c k J  N O N j    �� P�� 0 dscl   P m     Q Q � R R  / u s r / b i n / d s c l O  S T S j    �� U�� 	0 touch   U m     V V � W W  / u s r / b i n / t o u c h T  X Y X j    �� Z�� 0 opencmd   Z m     [ [ � \ \  / u s r / b i n / o p e n Y  ] ^ ] j    �� _�� 	0 sleep   _ m     ` ` � a a  / b i n / s l e e p ^  b c b j    �� d�� 0 killall   d m     e e � f f  k i l l a l l c  g h g j    �� i�� 0 shutdown   i m     j j � k k  / s b i n / s h u t d o w n h  l m l j     $�� n�� 
0 logger   n m     # o o � p p  / u s r / b i n / l o g g e r m  q r q j   % )�� s�� 	0 idcmd   s m   % ( t t � u u  / u s r / b i n / i d r  v w v j   * .�� x�� 	0 pmset   x m   * - y y � z z  / u s r / b i n / p m s e t w  { | { j   / 3�� }�� 0 grep   } m   / 2 ~ ~ �    / u s r / b i n / g r e p |  � � � j   4 8�� ��� 0 openssl   � m   4 7 � � � � �   / u s r / b i n / o p e n s s l �  � � � j   9 =�� ��� 0 sw_vers   � m   9 < � � � � �   / u s r / b i n / s w _ v e r s �  � � � j   > D�� ��� 0 sudo   � m   > A � � � � �  / u s r / b i n / s u d o �  � � � j   E K�� ��� 
0 whoami   � m   E H � � � � �  / u s r / b i n / w h o a m i �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � . (External Icons Used by this Application     � � � � P E x t e r n a l   I c o n s   U s e d   b y   t h i s   A p p l i c a t i o n   �  � � � j   L R�� ���  0 verifyiconpath VerifyIconPath � m   L O � � � � � � / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p / C o n t e n t s / R e s o u r c e s / i n f o . i c n s �  � � � j   S Y�� ��� 0 issueiconpath IssueIconPath � m   S V � � � � � � / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p / C o n t e n t s / R e s o u r c e s / i n f o . i c n s �  � � � j   Z `�� ��� 0 dockiconpath DockIconPath � m   Z ] � � � � � � / S y s t e m / L i b r a r y / C o r e S e r v i c e s / D o c k . a p p / C o n t e n t s / R e s o u r c e s / D o c k . i c n s �  � � � j   a g�� ��� &0 criticalerroricon CriticalErrorIcon � m   a d � � � � � � / S y s t e m / L i b r a r y / C o r e S e r v i c e s / P r o b l e m   R e p o r t e r . a p p / C o n t e n t s / R e s o u r c e s / P r o b l e m R e p o r t e r . i c n s �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �  Configuration Parameters     � � � � 2 C o n f i g u r a t i o n   P a r a m e t e r s   �  � � � j   h n�� ��� 0 defaultdomain DefaultDomain � m   h k � � � � �   �  � � � j   o u�� ��� &0 defaultauthdomain DefaultAuthDomain � m   o r � � � � �   �  � � � j   v |�� ��� $0 defaultcontainer DefaultContainer � m   v y � � � � �   �  � � � j   } ��� ��� &0 defaultcontroller DefaultController � m   } � � � � � �   �  � � � j   � ��� ��� (0 defaultdomainvalue DefaultDomainValue � m   � � � � � � �   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 The Active Directory domain test connectivity to    � � � � b   T h e   A c t i v e   D i r e c t o r y   d o m a i n   t e s t   c o n n e c t i v i t y   t o �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � > 8 encode new passwords with (Note use of single quotes):     � � � � p   e n c o d e   n e w   p a s s w o r d s   w i t h   ( N o t e   u s e   o f   s i n g l e   q u o t e s ) :   �  � � � l     �� � ���   � , & echo '<newpassword>' | openssl base64    � � � � L   e c h o   ' < n e w p a s s w o r d > '   |   o p e n s s l   b a s e 6 4 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Default Bind Account Credentials    � � � � B   D e f a u l t   B i n d   A c c o u n t   C r e d e n t i a l s �  � � � j   � ��� ��� 0 
adbindacct 
ADBindAcct � m   � � � � � � �   �  � � � j   � ��� ��� 0 
adbindpass 
ADBindPass � m   � � � � � � �   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � j   � ��� ���  0 thereceiptfile theReceiptFile � m   � �   � J / L i b r a r y / R e c e i p t s / M a c A D U t i l i t y R U N . p k g �  l     ����   G A The Bread Crum file casper is using for smart group association     � �   T h e   B r e a d   C r u m   f i l e   c a s p e r   i s   u s i n g   f o r   s m a r t   g r o u p   a s s o c i a t i o n    j   � ���	�� &0 configurationfile configurationFile	 m   � �

 �    l     ����   $  Our nested configuration file    � <   O u r   n e s t e d   c o n f i g u r a t i o n   f i l e  j   � ����� "0 thisapplication thisApplication m   � � �    l     ����   !  init the Applications Path    � 6   i n i t   t h e   A p p l i c a t i o n s   P a t h  j   � �����  0 theoriginaluid theOriginalUID m   � � �    !  l     ��������  ��  ��  ! "#" l     ��������  ��  ��  # $%$ l      ��&'��  &   Interal Commands    ' �(( $   I n t e r a l   C o m m a n d s  % )*) j   � ���+�� &0 uninstallcentrify uninstallCentrify+ m   � �,, �--  * ./. l     ��01��  0 0 * Check to determine the appropriate domain   1 �22 T   C h e c k   t o   d e t e r m i n e   t h e   a p p r o p r i a t e   d o m a i n/ 343 j   � ���5�� 0 domaincheck domainCheck5 m   � �66 �77  4 898 l     ��:;��  : 5 / Check to see if Centrify needs to be installed   ; �<< ^   C h e c k   t o   s e e   i f   C e n t r i f y   n e e d s   t o   b e   i n s t a l l e d9 =>= j   � ���?�� 0 netcheck netCheck? m   � �@@ �AA  > BCB l     ��DE��  D ; 5 Check to see if computer is connected to the network   E �FF j   C h e c k   t o   s e e   i f   c o m p u t e r   i s   c o n n e c t e d   t o   t h e   n e t w o r kC GHG j   � ���I�� 0 adjoin adJoinI m   � �JJ �KK  H LML l     ��NO��  N / ) Adds computer to the default AD Mac Zone   O �PP R   A d d s   c o m p u t e r   t o   t h e   d e f a u l t   A D   M a c   Z o n eM QRQ j   � ���S�� 0 	addtodock 	addToDockS m   � �TT �UU  R VWV l     ��XY��  X / ) If deferred, adds utility to user's dock   Y �ZZ R   I f   d e f e r r e d ,   a d d s   u t i l i t y   t o   u s e r ' s   d o c kW [\[ j   � ���]�� 0 	sendemail 	sendEmail] m   � �^^ �__  \ `a` l     ��bc��  b F @ Email template for issue/success notifications to administrator   c �dd �   E m a i l   t e m p l a t e   f o r   i s s u e / s u c c e s s   n o t i f i c a t i o n s   t o   a d m i n i s t r a t o ra efe j   � ���g�� "0 applicationpath applicationPathg m   � �hh �ii  f jkj l     ��lm��  l !  Path to the Mac AD Utility   m �nn 6   P a t h   t o   t h e   M a c   A D   U t i l i t yk opo j   � ���q�� 0 movekerberos moveKerberosq m   � �rr �ss  p tut l     ��vw��  v < 6 Renames default Kerberos configuration file if exists   w �xx l   R e n a m e s   d e f a u l t   K e r b e r o s   c o n f i g u r a t i o n   f i l e   i f   e x i s t su yzy j   � ��{�  0 migrateaccount migrateAccount{ m   � �|| �}}  z ~~ l     �~���~  � ' ! Performs account migration tasks   � ��� B   P e r f o r m s   a c c o u n t   m i g r a t i o n   t a s k s ��� j   � ��}��} 0 cachead cacheAD� m   � ��� ���  � ��� l     �|���|  �    Caches the AD credentials   � ��� 4   C a c h e s   t h e   A D   c r e d e n t i a l s� ��� j   ��{��{ 0 fixperms fixPerms� m   � ��� ���  � ��� l     �z���z  � ( " Fixes user permissions on machine   � ��� D   F i x e s   u s e r   p e r m i s s i o n s   o n   m a c h i n e� ��� j  �y��y (0 changekeychainpass changeKeychainPass� m  �� ���  � ��� l     �x���x  � B < Attempts to update the login KeyChain password for the user   � ��� x   A t t e m p t s   t o   u p d a t e   t h e   l o g i n   K e y C h a i n   p a s s w o r d   f o r   t h e   u s e r� ��� j  	�w��w &0 createmactempuser createMacTempUser� m  	�� ���  � ��� l     �v���v  � , & Create the "backup" account macuthtmp   � ��� L   C r e a t e   t h e   " b a c k u p "   a c c o u n t   m a c u t h t m p� ��� j  �u��u  0 removedockicon removeDockIcon� m  �� ���  � ��� l     �t���t  � K E Removes the Dock icon passed to it ( in this case this application )   � ��� �   R e m o v e s   t h e   D o c k   i c o n   p a s s e d   t o   i t   (   i n   t h i s   c a s e   t h i s   a p p l i c a t i o n   )� ��� j  �s��s 0 	checkuser 	checkUser� m  �� ���  � ��� l     �r���r  � 2 , Check if user is already a Centrify Account   � ��� X   C h e c k   i f   u s e r   i s   a l r e a d y   a   C e n t r i f y   A c c o u n t� ��� j  $�q��q  0 checkfilevault checkFileVault� m  !�� ���  � ��� l     �p���p  � 2 , Check if FileVault is still encrypting disk   � ��� X   C h e c k   i f   F i l e V a u l t   i s   s t i l l   e n c r y p t i n g   d i s k� ��� j  %+�o��o  0 getuserpicture getUserPicture� m  %(�� ���  � ��� l     �n���n  � > 8 download and format users LDAP picture for this utility   � ��� p   d o w n l o a d   a n d   f o r m a t   u s e r s   L D A P   p i c t u r e   f o r   t h i s   u t i l i t y� ��� j  ,2�m��m 0 	checkbind 	checkBind� m  ,/�� ���  � ��� l     �l���l  � + % script used to test unix credentials   � ��� J   s c r i p t   u s e d   t o   t e s t   u n i x   c r e d e n t i a l s� ��� j  39�k��k 0 checkforhint checkForHint� m  36�� ���  � ��� l     �j���j  � * $ Check authentication authority hint   � ��� H   C h e c k   a u t h e n t i c a t i o n   a u t h o r i t y   h i n t� ��� j  :@�i��i 0 copylogs copyLogs� m  :=�� ���  � ��� l     �h���h  � ' ! script to copy logs to smb share   � ��� B   s c r i p t   t o   c o p y   l o g s   t o   s m b   s h a r e� ��� j  AG�g��g  0 genenair2setup GenenAir2setup� m  AD�� ���  � ��� l     �f���f  � %  Wireless profile import script   � ��� >   W i r e l e s s   p r o f i l e   i m p o r t   s c r i p t� ��� j  HN�e��e 0 pleasewaitapp PleaseWaitApp� m  HK�� ���  �    l     �d�d   H B The Cocoa application used to display progress bars while waiting    � �   T h e   C o c o a   a p p l i c a t i o n   u s e d   t o   d i s p l a y   p r o g r e s s   b a r s   w h i l e   w a i t i n g  j  OU�c�c 0 
cleanupapp 
CleanUpApp m  OR �		   

 l     �b�b   4 . The Cocoa application used to display Cleanup    � \   T h e   C o c o a   a p p l i c a t i o n   u s e d   t o   d i s p l a y   C l e a n u p  j  V\�a�a (0 processcompleteapp ProcessCompleteApp m  VY �    l     �`�`   = 7 The Cocoa application used to display Process complete    � n   T h e   C o c o a   a p p l i c a t i o n   u s e d   t o   d i s p l a y   P r o c e s s   c o m p l e t e  j  ]c�_�_ 0 addfilevault addFileVault m  ]` �    l     �^ !�^    M G Adds user to enabled user for decrypting applicable FileVault2 volumes   ! �"" �   A d d s   u s e r   t o   e n a b l e d   u s e r   f o r   d e c r y p t i n g   a p p l i c a b l e   F i l e V a u l t 2   v o l u m e s #$# j  dj�]%�]  0 restoreaccount restoreAccount% m  dg&& �''  $ ()( l     �\*+�\  * = 7 Restore original user as a local user is caching fails   + �,, n   R e s t o r e   o r i g i n a l   u s e r   a s   a   l o c a l   u s e r   i s   c a c h i n g   f a i l s) -.- j  kq�[/�[ 0 picturepath PicturePath/ m  kn00 �11 � / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y / M a c A D U t i l i t y . a p p / C o n t e n t s / R e s o u r c e s / p i c t u r e . i c n s. 232 j  rx�Z4�Z 0 powericonpath PowerIconPath4 m  ru55 �66 � / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y / M a c A D U t i l i t y . a p p / C o n t e n t s / R e s o u r c e s / p o w e r . i c n s3 787 j  y�Y9�Y "0 networkiconpath NetworkIconPath9 m  y|:: �;; � / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y / M a c A D U t i l i t y . a p p / C o n t e n t s / R e s o u r c e s / v p n . i c n s8 <=< j  ���X>�X *0 netpasswordiconpath NetPasswordIconPath> m  ��?? �@@ � / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y / M a c A D U t i l i t y . a p p / C o n t e n t s / R e s o u r c e s / n e t w o r k _ p a s s w o r d . i c n s= ABA j  ���WC�W *0 macpasswordiconpath MacPasswordIconPathC m  ��DD �EE � / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y / M a c A D U t i l i t y . a p p / C o n t e n t s / R e s o u r c e s / m a c _ p a s s w o r d . i c n sB FGF l     �V�U�T�V  �U  �T  G HIH l      �SJK�S  J   Run time declarations    K �LL .   R u n   t i m e   d e c l a r a t i o n s  I MNM j  ���RO�R 0 loggedinuser  O m  ��PP �QQ  N RSR l     �QTU�Q  T + % Capture the currently logged in user   U �VV J   C a p t u r e   t h e   c u r r e n t l y   l o g g e d   i n   u s e rS WXW j  ���PY�P 0 olduid oldUIDY m  ��ZZ �[[  X \]\ l     �O^_�O  ^ 1 + Capture the currently logged in user's UID   _ �`` V   C a p t u r e   t h e   c u r r e n t l y   l o g g e d   i n   u s e r ' s   U I D] aba l    c�N�Mc r     ded I    �Lf�K
�L .sysoexecTEXT���     TEXTf m     gg �hh  / u s r / b i n / w h o a m i�K  e o      �J�J 0 loggedinuser  �N  �M  b iji l     �Ikl�I  k / ) The current user name running the script   l �mm R   T h e   c u r r e n t   u s e r   n a m e   r u n n i n g   t h e   s c r i p tj non l   'p�H�Gp r    'qrq I   !�Fs�E
�F .sysoexecTEXT���     TEXTs b    tut b    vwv b    xyx b    z{z o    �D�D 	0 idcmd  { 1    �C
�C 
spacy m    || �}}  - uw 1    �B
�B 
spacu o    �A�A 0 loggedinuser  �E  r o      �@�@ 0 olduid oldUID�H  �G  o ~~ l     �?���?  � 1 + Capture the currently logged in user's UID   � ��� V   C a p t u r e   t h e   c u r r e n t l y   l o g g e d   i n   u s e r ' s   U I D ��� l  ( 7��>�=� r   ( 7��� l  ( 1��<�;� n   ( 1��� 1   / 1�:
�: 
psxp� l  ( /��9�8� I  ( /�7��
�7 .earsffdralis        afdr�  f   ( )� �6��5
�6 
rtyp� m   * +�4
�4 
TEXT�5  �9  �8  �<  �;  � o      �3�3 "0 thisapplication thisApplication�>  �=  � ��� l     �2���2  � , & Dynamically set the Applications path   � ��� L   D y n a m i c a l l y   s e t   t h e   A p p l i c a t i o n s   p a t h� ��� l     ���� j  ���1��1 0 
scriptname 
ScriptName� m  ���� ���  �   Name of this application   � ��� 2   N a m e   o f   t h i s   a p p l i c a t i o n� ��� l  8 O��0�/� O  8 O��� r   < N��� c   < H��� n   < F��� 1   D F�.
�. 
pnam� 4   < D�-�
�- 
file� l  > C��,�+� I  > C�*��)
�* .earsffdralis        afdr�  f   > ?�)  �,  �+  � m   F G�(
�( 
ctxt� o      �'�' 0 
scriptname 
ScriptName� m   8 9���                                                                                  MACS  alis    `  SSDee                      �˨H+     0
Finder.app                                                      �	�\2        ����  	                CoreServices    ���      �\��       0   *   )  /SSDee:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D e e  &System/Library/CoreServices/Finder.app  / ��  �0  �/  � ��� l     �&���&  �   Not currently used   � ��� &   N o t   c u r r e n t l y   u s e d� ��� l  P k��%�$� r   P k��� I  P e�#��"
�# .sysoexecTEXT���     TEXT� l  P a��!� � b   P a��� b   P _��� b   P Y��� b   P W��� o   P U�� 	0 idcmd  � 1   U V�
� 
spac� m   W X�� ���  `� o   Y ^�� 
0 whoami  � m   _ `�� ���  `�!  �   �"  � o      ��  0 theoriginaluid theOriginalUID�%  �$  � ��� l     ����  �  �  � ��� l  l y���� r   l y��� l  l s���� b   l s��� o   l q�� "0 thisapplication thisApplication� m   q r�� ��� @ C o n t e n t s / R e s o u r c e s / . m a c a u t h . c o n f�  �  � o      �� &0 configurationfile configurationFile�  �  � ��� l     ����  � Y S /Library/gInstall/MacADUtility/Mac_AD_Utility.app/Contents/Resources/.macauth.conf   � ��� �   / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y / M a c _ A D _ U t i l i t y . a p p / C o n t e n t s / R e s o u r c e s / . m a c a u t h . c o n f� ��� l     ����  �  �  � ��� l      ����  �   Static declarations    � ��� *   S t a t i c   d e c l a r a t i o n s  � ��� j  ����� 0 macauthtmpuser  � m  ���� ���  x x x x x x x x x� ��� j  ����� 0 macauthtmpuserpass  � m  ���� ���  x x x x x x x x x� ��� l     ����  � !  Our temp user account name   � ��� 6   O u r   t e m p   u s e r   a c c o u n t   n a m e� ��� l     �
�	��
  �	  �  � ��� l      ����  �    Provided by the End User    � ��� 4   P r o v i d e d   b y   t h e   E n d   U s e r  � ��� j  ����� 
0 unixid  � m  ���� ���  � ��� l     ����  � . ( Stores the "unix" username for the user   � ��� P   S t o r e s   t h e   " u n i x "   u s e r n a m e   f o r   t h e   u s e r� ��� j  ����� 0 unixpass  � m  ���� �    �  l     ��   . ( Stores the "unix" password for the user    � P   S t o r e s   t h e   " u n i x "   p a s s w o r d   f o r   t h e   u s e r  j  ���� 0 userslocalpassword   m  ��		 �

    l     ��   ) # Used to store local users password    � F   U s e d   t o   s t o r e   l o c a l   u s e r s   p a s s w o r d  l     � �����   ��  ��    l     ��������  ��  ��    l      ����   + % Resources in the Application Bundle     � J   R e s o u r c e s   i n   t h e   A p p l i c a t i o n   B u n d l e    l     ����   ? 9 Instantiate the scripts paths in the application bundle.    � r   I n s t a n t i a t e   t h e   s c r i p t s   p a t h s   i n   t h e   a p p l i c a t i o n   b u n d l e .  l     ��������  ��  ��    !  l  z �"����" r   z �#$# n   z �%&% 1   � ���
�� 
strq& l  z �'����' n   z �()( 1    ���
�� 
psxp) l  z *����* I  z ��+��
�� .sysorpthalis        TEXT+ m   z {,, �--  d o m a i n C h e c k . s h��  ��  ��  ��  ��  $ o      ���� 0 domaincheck domainCheck��  ��  ! ./. l  � �0����0 r   � �121 n   � �343 1   � ���
�� 
strq4 l  � �5����5 n   � �676 1   � ���
�� 
psxp7 l  � �8����8 I  � ���9��
�� .sysorpthalis        TEXT9 m   � �:: �;;  n e t C h e c k . s h��  ��  ��  ��  ��  2 o      ���� 0 netcheck netCheck��  ��  / <=< l  � �>����> r   � �?@? n   � �ABA 1   � ���
�� 
strqB l  � �C����C n   � �DED 1   � ���
�� 
psxpE l  � �F����F I  � ���G��
�� .sysorpthalis        TEXTG m   � �HH �II  a d d T o D o c k . s h��  ��  ��  ��  ��  @ o      ���� 0 	addtodock 	addToDock��  ��  = JKJ l  � �L����L r   � �MNM n   � �OPO 1   � ���
�� 
strqP l  � �Q����Q n   � �RSR 1   � ���
�� 
psxpS l  � �T����T I  � ���U��
�� .sysorpthalis        TEXTU m   � �VV �WW  s e n d E m a i l . s h��  ��  ��  ��  ��  N o      ���� 0 	sendemail 	sendEmail��  ��  K XYX l  � �Z����Z r   � �[\[ n   � �]^] 1   � ���
�� 
strq^ l  � �_����_ n   � �`a` 1   � ���
�� 
psxpa l  � �b����b I  � ���c��
�� .sysorpthalis        TEXTc m   � �dd �ee  a d J o i n . s h��  ��  ��  ��  ��  \ o      ���� 0 adjoin adJoin��  ��  Y fgf l  � �h����h r   � �iji n   � �klk 1   � ���
�� 
strql l  � �m����m n   � �non 1   � ���
�� 
psxpo l  � �p����p I  � ���q��
�� .sysorpthalis        TEXTq m   � �rr �ss  m o v e K e r b e r o s . s h��  ��  ��  ��  ��  j o      ���� 0 movekerberos moveKerberos��  ��  g tut l  �v����v r   �wxw n   � �yzy 1   � ���
�� 
strqz l  � �{����{ n   � �|}| 1   � ���
�� 
psxp} l  � �~����~ I  � �����
�� .sysorpthalis        TEXT m   � ��� ��� " m i g r a t e A c c o u n t . s h��  ��  ��  ��  ��  x o      ����  0 migrateaccount migrateAccount��  ��  u ��� l ������ r  ��� n  ��� 1  ��
�� 
strq� l ������ n  ��� 1  ��
�� 
psxp� l ������ I �����
�� .sysorpthalis        TEXT� m  �� ���  c a c h e A D . s h��  ��  ��  ��  ��  � o      ���� 0 cachead cacheAD��  ��  � ��� l +������ r  +��� n  %��� 1  !%��
�� 
strq� l !������ n  !��� 1  !��
�� 
psxp� l ������ I �����
�� .sysorpthalis        TEXT� m  �� ���  f i x P e r m s . s h��  ��  ��  ��  ��  � o      ���� 0 fixperms fixPerms��  ��  � ��� l ,?������ r  ,?��� n  ,9��� 1  59��
�� 
strq� l ,5������ n  ,5��� 1  35��
�� 
psxp� l ,3������ I ,3�����
�� .sysorpthalis        TEXT� m  ,/�� ��� ( c r e a t e M a c T e m p U s e r . s h��  ��  ��  ��  ��  � o      ���� &0 createmactempuser createMacTempUser��  ��  � ��� l @S������ r  @S��� n  @M��� 1  IM��
�� 
strq� l @I������ n  @I��� 1  GI��
�� 
psxp� l @G������ I @G���~
� .sysorpthalis        TEXT� m  @C�� ��� * c h a n g e K e y c h a i n P a s s . s h�~  ��  ��  ��  ��  � o      �}�} (0 changekeychainpass changeKeychainPass��  ��  � ��� l Tg��|�{� r  Tg��� n  Ta��� 1  ]a�z
�z 
strq� l T]��y�x� n  T]��� 1  []�w
�w 
psxp� l T[��v�u� I T[�t��s
�t .sysorpthalis        TEXT� m  TW�� ��� " r e m o v e D o c k I c o n . s h�s  �v  �u  �y  �x  � o      �r�r  0 removedockicon removeDockIcon�|  �{  � ��� l h{��q�p� r  h{��� n  hu��� 1  qu�o
�o 
strq� l hq��n�m� n  hq��� 1  oq�l
�l 
psxp� l ho��k�j� I ho�i��h
�i .sysorpthalis        TEXT� m  hk�� ���  c h e c k U s e r . s h�h  �k  �j  �n  �m  � o      �g�g 0 	checkuser 	checkUser�q  �p  � ��� l |���f�e� r  |���� n  |���� 1  ���d
�d 
strq� l |���c�b� n  |���� 1  ���a
�a 
psxp� l |���`�_� I |��^��]
�^ .sysorpthalis        TEXT� m  |�� ��� " c h e c k F i l e V a u l t . s h�]  �`  �_  �c  �b  � o      �\�\  0 checkfilevault checkFileVault�f  �e  � ��� l ����[�Z� r  ����� n  ����� 1  ���Y
�Y 
strq� l ����X�W� n  ����� 1  ���V
�V 
psxp� l ����U�T� I ���S��R
�S .sysorpthalis        TEXT� m  ���� ��� ( c h e c k U s e r C e n t r i f y . s h�R  �U  �T  �X  �W  � o      �Q�Q &0 checkusercentrify checkUserCentrify�[  �Z  � ��� l ����P�O� r  ����� n  ����� 1  ���N
�N 
strq� l ����M�L� n  ����� 1  ���K
�K 
psxp� l ����J�I� I ���H��G
�H .sysorpthalis        TEXT� m  ���� ��� " g e t U s e r P i c t u r e . s h�G  �J  �I  �M  �L  � o      �F�F  0 getuserpicture getUserPicture�P  �O  �    l ���E�D r  �� n  �� 1  ���C
�C 
strq l ���B�A n  ��	 1  ���@
�@ 
psxp	 l ��
�?�>
 I ���=�<
�= .sysorpthalis        TEXT m  �� �  P l e a s e W a i t . a p p�<  �?  �>  �B  �A   o      �;�; 0 pleasewaitapp PleaseWaitApp�E  �D    l ���:�9 r  �� l ���8�7 n  �� 1  ���6
�6 
psxp l ���5�4 I ���3�2
�3 .sysorpthalis        TEXT m  �� � & P r o c e s s C o m p l e t e . a p p�2  �5  �4  �8  �7   o      �1�1 (0 processcompleteapp ProcessCompleteApp�:  �9    l ���0�/ r  �� l ���.�- n  �� !  1  ���,
�, 
psxp! l ��"�+�*" I ���)#�(
�) .sysorpthalis        TEXT# m  ��$$ �%%  P l e a s e W a i t . a p p�(  �+  �*  �.  �-   o      �'�' 0 
cleanupapp 
CleanUpApp�0  �/   &'& l ��(�&�%( r  ��)*) n  ��+,+ 1  ���$
�$ 
strq, l ��-�#�"- n  ��./. 1  ���!
�! 
psxp/ l ��0� �0 I ���1�
� .sysorpthalis        TEXT1 m  ��22 �33  c h e c k B i n d . s h�  �   �  �#  �"  * o      �� 0 	checkbind 	checkBind�&  �%  ' 454 l �6��6 r  �787 n  �9:9 1  �
� 
strq: l �;��; n  �<=< 1  �
� 
psxp= l �>��> I ��?�
� .sysorpthalis        TEXT? m  �@@ �AA  c h e c k F o r H i n t . s h�  �  �  �  �  8 o      �� 0 checkforhint checkForHint�  �  5 BCB l %D��D r  %EFE n  GHG 1  �
� 
strqH l I��I n  JKJ 1  �
� 
psxpK l L�
�	L I �M�
� .sysorpthalis        TEXTM m  NN �OO " G e n e n A i r 2 s e t u p . s h�  �
  �	  �  �  F o      ��  0 genenair2setup GenenAir2setup�  �  C PQP l &9R��R r  &9STS n  &3UVU 1  /3�
� 
strqV l &/W��W n  &/XYX 1  -/� 
�  
psxpY l &-Z����Z I &-��[��
�� .sysorpthalis        TEXT[ m  &)\\ �]] " r e s t o r e A c c o u n t . s h��  ��  ��  �  �  T o      ����  0 restoreaccount restoreAccount�  �  Q ^_^ l :M`����` r  :Maba n  :Gcdc 1  CG��
�� 
strqd l :Ce����e n  :Cfgf 1  AC��
�� 
psxpg l :Ah����h I :A��i��
�� .sysorpthalis        TEXTi m  :=jj �kk  a d d F i l e V a u l t . s h��  ��  ��  ��  ��  b o      ���� 0 addfilevault addFileVault��  ��  _ lml l Nwn����n Q  Nwop��o r  Qnqrq c  Qjsts l Qfu����u b  Qfvwv l Qbx����x I Qb��yz
�� .earsffdralis        afdry m  QT��
�� afdrdlibz ��{|
�� 
from{ m  WZ��
�� fldmfldu| ��}��
�� 
rtyp} m  [\��
�� 
ctxt��  ��  ��  w m  be~~ �  L o g s��  ��  t m  fi��
�� 
alisr o      ���� $0 userslibrarylogs UsersLibraryLogsp R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  m ��� l x������� Q  x������ r  {���� n  {���� 1  ~���
�� 
psxp� o  {~���� $0 userslibrarylogs UsersLibraryLogs� o      ���� (0 nonauthloglocation NonAuthLogLocation� R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �   Main Routine    � ���    M a i n   R o u t i n e  � ��� l     ��������  ��  ��  � ��� l     ������  �   Kick starts the process   � ��� 0   K i c k   s t a r t s   t h e   p r o c e s s� ��� l     ��������  ��  ��  � ��� l �������� I  ��������� 0 	statusmsg 	StatusMSG� ��� o  ������ 0 
scriptname 
ScriptName� ���� l �������� b  ����� m  ���� ��� " S t a r t i n g   N e w   R U N :� o  ������ 0 scriptversion ScriptVersion��  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l ������ n ����� I  ���������� 0 sanitychecks SanityChecks��  ��  �  f  ��� #  Check if user is local admin   � ��� :   C h e c k   i f   u s e r   i s   l o c a l   a d m i n� ��� l     ��������  ��  ��  � ��� l �������� Z  �������� I  ����������  0 checkosversion checkOSVersion��  ��  � n ����� I  ��������� 0 	statusmsg 	StatusMSG� ��� m  ���� ���  c h e c k O S V e r s i o n� ���� m  ���� ���  C o m p l e t e d��  ��  �  f  ����  � n ����� I  ���������� 
0 die Die��  ��  �  f  ����  ��  � ��� l     ������  � U O CheckIfRun(): Checks to see if this utility has been run successfully before.    � ��� �   C h e c k I f R u n ( ) :   C h e c k s   t o   s e e   i f   t h i s   u t i l i t y   h a s   b e e n   r u n   s u c c e s s f u l l y   b e f o r e .  � ��� l     ������  � 2 ,		If it has, it notifies the user and exits.   � ��� X 	 	 I f   i t   h a s ,   i t   n o t i f i e s   t h e   u s e r   a n d   e x i t s .� ��� l     ������  � 1 +		If it has not, proceeds to StartUtility()   � ��� V 	 	 I f   i t   h a s   n o t ,   p r o c e e d s   t o   S t a r t U t i l i t y ( )� ��� l �������� Z  �������� I  ���������� 0 
checkifrun 
CheckIfRun��  ��  � n ����� I  ��������� 0 	statusmsg 	StatusMSG� ��� m  ���� ���  C h e c k I f R u n� ���� m  ���� ���  C o m p l e t e d��  ��  �  f  ����  � n ����� I  ���������� 
0 die Die��  ��  �  f  ����  ��  � ��� l     ������  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������ Z  �������� I  ���������� ,0 createmactempusernow createMacTempUserNow��  ��  � n ����� I  ��������� 0 	statusmsg 	StatusMSG� ��� m  ���� ��� ( c r e a t e M a c T e m p U s e r N o w� ���� m  ���� ���  C o m p l e t e d��  ��  �  f  ����  � n ��� � I  ���������� $0 addtodockandquit AddToDockAndQuit��  ��     f  ���   createMacTempUserNow()    � � 0   c r e a t e M a c T e m p U s e r N o w ( )  �  l � I  ������� &0 removedockiconnow removeDockIconNow �� o  ����� 0 loggedinuser  ��  ��     Remove Dock Icon Now    �		 *   R e m o v e   D o c k   I c o n   N o w 

 l     ����   , &--------------------------------------    � L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ��������  ��  ��    l  Z  �� I  ������� &0 checkfilevaultnow checkFileVaultNow��  �   k    l �~�~   a [ If the checkFileVault.sh script exited successfully then drive is not currently encrypting    � �   I f   t h e   c h e c k F i l e V a u l t . s h   s c r i p t   e x i t e d   s u c c e s s f u l l y   t h e n   d r i v e   i s   n o t   c u r r e n t l y   e n c r y p t i n g �} r   !  m  �|
�| boovfals! o      �{�{ (0 computerencrypting computerEncrypting�}  ��   k  "" #$# l �z%&�z  % U O If the checkFileVault.sh script exited in error then drive is still encrypting   & �'' �   I f   t h e   c h e c k F i l e V a u l t . s h   s c r i p t   e x i t e d   i n   e r r o r   t h e n   d r i v e   i s   s t i l l   e n c r y p t i n g$ ()( r  *+* m  �y
�y boovtrue+ o      �x�x (0 computerencrypting computerEncrypting) ,�w, l �v�u�t�v  �u  �t  �w     checkFileVaultNow()    �-- (   c h e c k F i l e V a u l t N o w ( ) ./. l     �s01�s  0 , &--------------------------------------   1 �22 L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -/ 343 l :5675 Z  :89�r:8 I  $�q�p�o�q 0 startutility StartUtility�p  �o  9 n '2;<; I  (2�n=�m�n 0 	statusmsg 	StatusMSG= >?> m  (+@@ �AA  S t a r t U t i l i t y? B�lB m  +.CC �DD  C o m p l e t e d�l  �m  <  f  '(�r  : l 5:EFGE n 5:HIH I  6:�k�j�i�k $0 addtodockandquit AddToDockAndQuit�j  �i  I  f  56F   StartUtility()   G �JJ    S t a r t U t i l i t y ( )6   StartUtility()   7 �KK    S t a r t U t i l i t y ( )4 LML l     �hNO�h  N , &--------------------------------------   O �PP L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -M QRQ l ;VSTUS Z  ;VVW�gXV I  ;@�f�e�d�f 0 networkcheck NetworkCheck�e  �d  W n CNYZY I  DN�c[�b�c 0 	statusmsg 	StatusMSG[ \]\ m  DG^^ �__  N e t w o r k C h e c k] `�a` m  GJaa �bb  C o m p l e t e d�a  �b  Z  f  CD�g  X l QVcdec l QVfghf I  QV�`�_�^�` (0 networkcheckfailed NetworkCheckFailed�_  �^  g   User Decides from here   h �ii .   U s e r   D e c i d e s   f r o m   h e r ed   NetworkCheck()    e �jj     N e t w o r k C h e c k ( )  T   NetworkCheck()    U �kk     N e t w o r k C h e c k ( )  R lml l     �]no�]  n , &--------------------------------------   o �pp L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -m qrq l Wrs�\�[s Z  Wrtu�Zvt I  W\�Y�X�W�Y 0 checkbattery checkBattery�X  �W  u n _jwxw I  `j�Vy�U�V 0 	statusmsg 	StatusMSGy z{z m  `c|| �}}  c h e c k B a t t e r y{ ~�T~ m  cf ���  C o m p l e t e d�T  �U  x  f  _`�Z  v n mr��� I  nr�S�R�Q�S $0 addtodockandquit AddToDockAndQuit�R  �Q  �  f  mn�\  �[  r ��� l     �P���P  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l s����� Z  s����O�� I  sx�N�M�L�N  0 domainchecknow DomainCheckNow�M  �L  � n {���� I  |��K��J�K 0 	statusmsg 	StatusMSG� ��� m  |�� ���  D o m a i n C h e c k N o w� ��I� m  ��� ���  C o m p l e t e d�I  �J  �  f  {|�O  � n ����� I  ���H�G�F�H $0 addtodockandquit AddToDockAndQuit�G  �F  �  f  ���  DomainCheckNow    � ���  D o m a i n C h e c k N o w  � ��� l     �E���E  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������ Z  �����D�� I  ���C�B�A�C 00 promptforlocalpassword promptForLocalPassword�B  �A  � n ����� I  ���@��?�@ 0 	statusmsg 	StatusMSG� ��� m  ���� ��� * G e t U s e r s L o c a l P a s s w o r d� ��>� m  ���� ���  C o m p l e t e d�>  �?  �  f  ���D  � n ����� I  ���=�<�;�= $0 addtodockandquit AddToDockAndQuit�<  �;  �  f  ���  promptForLocalPassword()    � ��� 2 p r o m p t F o r L o c a l P a s s w o r d ( )  � ��� l     �:���:  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������ Z  �����9�� I  ���8�7�6�8 "0 promptforunixid promptForUnixID�7  �6  � n ����� I  ���5��4�5 0 	statusmsg 	StatusMSG� ��� m  ���� ���  p r o m p t F o r U n i x I D� ��3� m  ���� ���  C o m p l e t e d�3  �4  �  f  ���9  � n ����� I  ���2�1�0�2 $0 addtodockandquit AddToDockAndQuit�1  �0  �  f  ���   promptForUnixID()   � ��� $   p r o m p t F o r U n i x I D ( )� ��� l     �/���/  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ����.�-� Z  �����,�� I  ���+��*�+ &0 changescreensaver ChangeScreenSaver� ��)� m  ���� ���  d i s a b l e�)  �*  � n ����� I  ���(��'�( 0 	statusmsg 	StatusMSG� ��� m  ���� ��� " C h a n g e S c r e e n S a v e r� ��&� m  ���� ���  C o m p l e t e d�&  �'  �  f  ���,  � n ����� I  ���%�$�#�% $0 addtodockandquit AddToDockAndQuit�$  �#  �  f  ���.  �-  � ��� l     �"���"  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ���!� � Z  ������ I  ������ 0 makechanges MakeChanges�  �  � k  ���� ��� n ����� I  ������ 0 	statusmsg 	StatusMSG� ��� m  ���� ���  M a k e C h a n g e s�  �  m  �� �  C o m p l e t e d�  �  �  f  ��� � n �� I  ������ 0 	rebootnow 	RebootNow�  �    f  ���  �  �  �!  �   �  l     �	�   # -----------------------------   	 �

 : - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l      ��     Handler Declarations     � ,   H a n d l e r   D e c l a r a t i o n s    l     ����  �  �    i  �� I      ��� "0 checkconfigfile checkConfigFile � o      �� 0 thefile theFile�  �   k     `  I     �
�	�
 0 	statusmsg 	StatusMSG  m     �  c h e c k C o n f i g F i l e  �  m    !! �""  S t a r t i n g�  �	   #$# r    %&% b    '(' o    	�
� 
ret ( m   	 
)) �** F T h i s   u t i l i t y   h a s   b e e n   b e e n   d i s a b l e d& o      ��  0 myerrormessage myErrorMessage$ +,+ l   �-.�  - 5 / Define the error message for the function here   . �// ^   D e f i n e   t h e   e r r o r   m e s s a g e   f o r   t h e   f u n c t i o n   h e r e, 0�0 Q    `1231 k    '44 565 I   $�7�
� .sysoexecTEXT���     TEXT7 b     898 b    :;: b    <=< b    >?> m    @@ �AA  t e s t? 1    �
� 
spac= m    BB �CC  - f; 1    � 
�  
spac9 l   D����D n    EFE 1    ��
�� 
strqF o    ���� &0 configurationfile configurationFile��  ��  �  6 G��G L   % 'HH m   % &��
�� boovtrue��  2 R      ������
�� .ascrerr ****      � ****��  ��  3 k   / `II JKJ I  / 4������
�� .sysobeepnull��� ��� long��  ��  K LML I  5 :������
�� .miscactvnull��� ��� null��  ��  M NON r   ; ZPQP I  ; X��RS
�� .sysodisAaleR        TEXTR m   ; <TT �UU  M a c A D U t i l i t yS ��VW
�� 
mesSV o   = >����  0 myerrormessage myErrorMessageW ��XY
�� 
btnsX J   A FZZ [��[ m   A D\\ �]]  E x i t��  Y ��^_
�� 
dflt^ m   I L`` �aa  E x i t_ ��b��
�� 
as Ab m   O R��
�� EAlTwarN��  Q o      ���� 40 configurationfilemissing configurationFileMissingO c��c n  [ `ded I   \ `�������� 
0 die Die��  ��  e  f   [ \��  �   fgf l     ��������  ��  ��  g hih l     ��jk��  j   Check OS Version   k �ll "   C h e c k   O S   V e r s i o ni mnm l     ��op��  o 4 . Requires myRequiredVersion in format "10.7.1"   p �qq \   R e q u i r e s   m y R e q u i r e d V e r s i o n   i n   f o r m a t   " 1 0 . 7 . 1 "n rsr l     ��tu��  t   Requires sw_vers   u �vv "   R e q u i r e s   s w _ v e r ss wxw l     ��������  ��  ��  x yzy i  ��{|{ I      ��������  0 checkosversion checkOSVersion��  ��  | k     S}} ~~ Q     ���� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    
��� o    ���� 0 sw_vers  � 1    	��
�� 
spac� m   
 �� ���  - p r o d u c t V e r s i o n��  � o      ���� 0 	myversion 	myVersion� R      ������
�� .ascrerr ****      � ****��  ��  � r    ��� m    �� ��� 
 0 . 0 . 0� o      ���� 0 	myversion 	myVersion ��� P    -����� r   # ,��� l  # *������ ?   # *��� o   # $���� 0 	myversion 	myVersion� o   $ )���� &0 myrequiredversion myRequiredVersion��  ��  � o      ���� (0 versioncheckpassed versionCheckPassed� ����
�� consnume��  ��  � ���� Z   . S������ o   . /���� (0 versioncheckpassed versionCheckPassed� k   2 :�� ��� I  2 7�����
�� .ascrcmnt****      � ****� m   2 3�� ��� < O p e r a t i n g   S y s t e m   C h e c k   P a s s e d !��  � ���� L   8 :�� m   8 9��
�� boovtrue��  ��  � k   = S�� ��� I  = P����
�� .sysodisAaleR        TEXT� m   = >�� ��� < O p e r a t i n g   S y s t e m   N o t   S u p p o r t e d� �����
�� 
mesS� b   ? L��� b   ? J��� b   ? H��� b   ? F��� b   ? D��� b   ? B��� m   ? @�� ��� : Y o u r   o p e r a t i n g   s y s t e m   v e r s i o n� 1   @ A��
�� 
spac� m   B C�� ���  (� o   D E���� 0 	myversion 	myVersion� m   F G�� ���  )� 1   H I��
�� 
spac� m   J K�� ��� � i s   c u r r e n t l y   n o t   s u p p o r t e d   b y   t h i s   t o o l ,   p l e a s e   c o n t a c t   t h e   H e l p   D e s k   t o   u p g r a d e .��  � ���� L   Q S�� m   Q R��
�� boovfals��  ��  z ��� l     ��������  ��  ��  � ��� l      ������  �   Secondary Routine    � ��� &   S e c o n d a r y   R o u t i n e  � ��� l     ������  � v p MakeChanges(): Asks for the user's username and password and triggers all the necessary Mac Auth change scripts   � ��� �   M a k e C h a n g e s ( ) :   A s k s   f o r   t h e   u s e r ' s   u s e r n a m e   a n d   p a s s w o r d   a n d   t r i g g e r s   a l l   t h e   n e c e s s a r y   M a c   A u t h   c h a n g e   s c r i p t s� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 makechanges MakeChanges��  ��  � k     ��� ��� l     ��������  ��  ��  � ��� I     ������� 0 	statusmsg 	StatusMSG� ��� o    ���� 0 
scriptname 
ScriptName� ���� m    �� ��� \ R u n n i n g   A c t i v e   D i r e c t o r y   C o n f i g u r a t i o n   S c r i p t s��  ��  � ��� l   ��������  ��  ��  � ��� I    ������� 0 	statusmsg 	StatusMSG� ��� o    ���� 0 
scriptname 
ScriptName� ���� m    �� ��� 2 R u n n i n g   a d j o i n N o w   h a n d l e r��  ��  � ��� n   ��� I    �������� 0 	adjoinnow 	adjoinNow��  ��  �  f    � ��� l   ��������  ��  ��  � ��� I    )������� 0 	statusmsg 	StatusMSG� ��� o    $���� 0 
scriptname 
ScriptName� ���� m   $ %�� ��� B R u n n i n g   C h a n g e S c r e e n S a v e r   h a n d l e r��  ��  � ��� n  * 0   I   + 0������ &0 changescreensaver ChangeScreenSaver �� m   + , �  d i s a b l e��  ��    f   * +�  l  1 1��������  ��  ��   	 I   1 <��
���� 0 	statusmsg 	StatusMSG
  o   2 7���� 0 
scriptname 
ScriptName �� m   7 8 � > R u n n i n g   m o v e K e r b e r o s N o w   h a n d l e r��  ��  	  n  = B I   > B����~�� "0 movekerberosnow moveKerberosNow�  �~    f   = >  l  C C�}�|�{�}  �|  �{    I   C N�z�y�z 0 	statusmsg 	StatusMSG  o   D I�x�x 0 
scriptname 
ScriptName �w m   I J � < R u n n i n g   U s e r   M i g r a t i o n   S c r i p t s�w  �y    l  O O�v�u�t�v  �u  �t    !  I   O Z�s"�r�s 0 	statusmsg 	StatusMSG" #$# o   P U�q�q 0 
scriptname 
ScriptName$ %�p% m   U V&& �'' B R u n n i n g   m i g r a t e A c c o u n t N o w   h a n d l e r�p  �r  ! ()( n  [ `*+* I   \ `�o�n�m�o &0 migrateaccountnow migrateAccountNow�n  �m  +  f   [ \) ,-, l  a a�l�k�j�l  �k  �j  - ./. I   a l�i0�h�i 0 	statusmsg 	StatusMSG0 121 o   b g�g�g 0 
scriptname 
ScriptName2 3�f3 m   g h44 �55 4 R u n n i n g   c a c h e A D N o w   h a n d l e r�f  �h  / 676 n  m r898 I   n r�e�d�c�e 0 
cacheadnow 
cacheADNow�d  �c  9  f   m n7 :;: l  s s�b�a�`�b  �a  �`  ; <=< I   s ~�_>�^�_ 0 	statusmsg 	StatusMSG> ?@? o   t y�]�] 0 
scriptname 
ScriptName@ A�\A m   y zBB �CC J R u n n i n g   c h a n g e K e y c h a i n P a s s N o w   h a n d l e r�\  �^  = DED n   �FGF I   � ��[�Z�Y�[ .0 changekeychainpassnow changeKeychainPassNow�Z  �Y  G  f    �E HIH l  � ��X�W�V�X  �W  �V  I JKJ I   � ��UL�T�U 0 	statusmsg 	StatusMSGL MNM o   � ��S�S 0 
scriptname 
ScriptNameN O�RO m   � �PP �QQ 8 R u n n i n g   a d d F i l e V a u l t   h a n d l e r�R  �T  K RSR n  � �TUT I   � ��Q�P�O�Q "0 addfilevaultnow addFileVaultNow�P  �O  U  f   � �S VWV l  � ��N�M�L�N  �M  �L  W XYX I   � ��KZ�J�K 0 	statusmsg 	StatusMSGZ [\[ o   � ��I�I 0 
scriptname 
ScriptName\ ]�H] m   � �^^ �__ > R u n n i n g   r u n F i n a l R o u t i n e   h a n d l e r�H  �J  Y `a` n  � �bcb I   � ��G�F�E�G "0 runfinalroutine runFinalRoutine�F  �E  c  f   � �a ded l  � ��D�C�B�D  �C  �B  e fgf I   � ��Ah�@�A 0 	statusmsg 	StatusMSGh iji o   � ��?�? 0 
scriptname 
ScriptNamej k�>k m   � �ll �mm @ R u n n i n g   C l e a n u p   &   R e b o o t   S c r i p t s�>  �@  g non l   � ��=pq�=  p } w	
	try
		my removeDockIconNow(unixid)
	on error
		StatusMSG("MakeChanges", "Error running removeDockIconNow")
	end try    q �rr � 	 
 	 t r y 
 	 	 m y   r e m o v e D o c k I c o n N o w ( u n i x i d ) 
 	 o n   e r r o r 
 	 	 S t a t u s M S G ( " M a k e C h a n g e s " ,   " E r r o r   r u n n i n g   r e m o v e D o c k I c o n N o w " ) 
 	 e n d   t r y  o sts l  � ��<�;�:�<  �;  �:  t uvu l  � ��9wx�9  w ' ! Moved Reboot message to function   x �yy B   M o v e d   R e b o o t   m e s s a g e   t o   f u n c t i o nv z�8z L   � �{{ m   � ��7
�7 boovtrue�8  � |}| l     �6�5�4�6  �5  �4  } ~~ l     �3���3  � , &StatusMSG(FunctionName, StatusMessage)   � ��� L S t a t u s M S G ( F u n c t i o n N a m e ,   S t a t u s M e s s a g e ) ��� l     �2���2  � � � StatusMSG(FunctionName, StatusMessage) : Main Status Message Function, Logs to /Library/Logs/Genentech/,or ~/Library/Logs or system.log conditionally    � ���.   S t a t u s M S G ( F u n c t i o n N a m e ,   S t a t u s M e s s a g e )   :   M a i n   S t a t u s   M e s s a g e   F u n c t i o n ,   L o g s   t o   / L i b r a r y / L o g s / G e n e n t e c h / , o r   ~ / L i b r a r y / L o g s   o r   s y s t e m . l o g   c o n d i t i o n a l l y  � ��� l     �1���1  � 6 0 Added Try Error to fail over to macauthtmp user   � ��� `   A d d e d   T r y   E r r o r   t o   f a i l   o v e r   t o   m a c a u t h t m p   u s e r� ��� l     �0�/�.�0  �/  �.  � ��� i  ����� I      �-��,�- 0 	statusmsg 	StatusMSG� ��� o      �+�+ 0 functionname FunctionName� ��*� o      �)�) 0 statusmessage StatusMessage�*  �,  � k    =�� ��� r     ��� m     �� ���  M a c _ A D _ A u t h . l o g� o      �(�( 0 logname LogName� ��� l   �'���'  � M G Added as fall back if /Library/Logs/gInstall has incorrect permissions   � ��� �   A d d e d   a s   f a l l   b a c k   i f   / L i b r a r y / L o g s / g I n s t a l l   h a s   i n c o r r e c t   p e r m i s s i o n s� ��� r    	��� b    ��� m    �� ��� . / L i b r a r y / L o g s / g I n s t a l l /� o    �&�& 0 logname LogName� o      �%�% 0 logfile LogFile� ��� Q   
+���� Q    ~���� k    A�� ��� I   ?�$��
�$ .sysoexecTEXT���     TEXT� b    -��� b    +��� b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� b    ��� b    ��� m    �� ���  e c h o� 1    �#
�# 
spac� m    �� ���  ` / b i n / d a t e `� 1    �"
�" 
spac� l   ��!� � n    ��� 1    �
� 
strq� m    �� ���  - - >�!  �   � o     �� 0 
scriptname 
ScriptName� 1   ! "�
� 
spac� o   # $�� 0 functionname FunctionName� 1   % &�
� 
spac� o   ' (�� 0 statusmessage StatusMessage� m   ) *�� ���  > >� o   + ,�� 0 logfile LogFile� ���
� 
RAun� o   . 3�� 0 macauthtmpuser  � ���
� 
RApw� o   4 9�� 0 macauthtmpuserpass  � ���
� 
badm� m   : ;�
� boovtrue�  � ��� l  @ @����  � 6 0 May fail over if user has not authenticated yet   � ��� `   M a y   f a i l   o v e r   i f   u s e r   h a s   n o t   a u t h e n t i c a t e d   y e t�  � R      ���
� .ascrerr ****      � ****�  �  � I  I ~���
� .sysoexecTEXT���     TEXT� b   I l��� b   I j��� b   I f��� b   I d��� b   I b��� b   I `��� b   I ^��� b   I X��� b   I R��� b   I P��� b   I L��� m   I J�� ���  e c h o� 1   J K�
� 
spac� m   L O�� ���  ` / b i n / d a t e `� 1   P Q�

�
 
spac� l  R W��	�� n   R W� � 1   U W�
� 
strq  m   R U �  - - >�	  �  � o   X ]�� 0 
scriptname 
ScriptName� 1   ^ _�
� 
spac� o   ` a�� 0 functionname FunctionName� 1   b c�
� 
spac� o   d e�� 0 statusmessage StatusMessage� m   f i �  > >� o   j k�� 0 logfile LogFile� � 
�  
RAun o   m r���� 0 macauthtmpuser   ����
�� 
RApw o   s x���� 0 macauthtmpuserpass  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   �+	
 k   � �  l  � �����   : 4 Try the same operation with the alternate credtials    � h   T r y   t h e   s a m e   o p e r a t i o n   w i t h   t h e   a l t e r n a t e   c r e d t i a l s �� I  � ���
�� .sysoexecTEXT���     TEXT b   � � b   � � b   � � b   � � b   � � b   � � b   � � !  b   � �"#" b   � �$%$ b   � �&'& b   � �()( m   � �** �++  e c h o) 1   � ���
�� 
spac' m   � �,, �--  ` / b i n / d a t e `% 1   � ���
�� 
spac# l  � �.����. n   � �/0/ 1   � ���
�� 
strq0 m   � �11 �22  - - >��  ��  ! o   � ����� 0 
scriptname 
ScriptName 1   � ���
�� 
spac o   � ����� 0 functionname FunctionName 1   � ���
�� 
spac o   � ����� 0 statusmessage StatusMessage m   � �33 �44  > > o   � ����� 0 logfile LogFile ��56
�� 
RAun5 o   � ����� 0 loggedinuser  6 ��78
�� 
RApw7 o   � ����� 0 userslocalpassword  8 ��9��
�� 
badm9 m   � ���
�� boovtrue��  ��  	 R      ������
�� .ascrerr ****      � ****��  ��  
 k   �+:: ;<; l  � ���=>��  = G A Fail back to Log in Users home folder in the worst case scenerio   > �?? �   F a i l   b a c k   t o   L o g   i n   U s e r s   h o m e   f o l d e r   i n   t h e   w o r s t   c a s e   s c e n e r i o< @��@ Q   �+ABCA I  � ���D��
�� .sysoexecTEXT���     TEXTD b   � �EFE b   � �GHG o   � ����� 
0 logger  H 1   � ���
�� 
spacF n   � �IJI 1   � ���
�� 
strqJ l  � �K����K b   � �LML b   � �NON b   � �PQP b   � �RSR b   � �TUT b   � �VWV 1   � ���
�� 
spacW l  � �X����X n   � �YZY 1   � ���
�� 
strqZ m   � �[[ �\\  - - >��  ��  U o   � ����� 0 
scriptname 
ScriptNameS 1   � ���
�� 
spacQ o   � ����� 0 functionname FunctionNameO 1   � ���
�� 
spacM o   � ����� 0 statusmessage StatusMessage��  ��  ��  B R      ������
�� .ascrerr ****      � ****��  ��  C k   �+]] ^_^ l  � ���`a��  ` C = Fail back to the system log in the worst worst case scenerio   a �bb z   F a i l   b a c k   t o   t h e   s y s t e m   l o g   i n   t h e   w o r s t   w o r s t   c a s e   s c e n e r i o_ c��c I  �+��d��
�� .sysoexecTEXT���     TEXTd b   �'efe b   �ghg b   �iji b   �klk b   �mnm b   �opo b   �qrq b   �sts b   �uvu b   � �wxw b   � �yzy m   � �{{ �||  e c h oz 1   � ���
�� 
spacx m   � �}} �~~  ` / b i n / d a t e `v 1   � ��
�� 
spact l ���� n  ��� 1  ��
�� 
strq� m  �� ���  - - >��  ��  r o  ���� 0 
scriptname 
ScriptNamep 1  ��
�� 
spacn o  ���� 0 functionname FunctionNamel 1  ��
�� 
spacj o  ���� 0 statusmessage StatusMessageh m  �� ���  > >f n  &��� 1  $&��
�� 
strq� l $������ b  $��� b   ��� o  ���� (0 nonauthloglocation NonAuthLogLocation� o  ���� 0 
scriptname 
ScriptName� m   #�� ���  . l o g��  ��  ��  ��  ��  � ���� I ,=�����
�� .ascrcmnt****      � ****� b  ,9��� b  ,7��� b  ,5��� b  ,3��� o  ,1���� 0 
scriptname 
ScriptName� 1  12��
�� 
spac� o  34���� 0 functionname FunctionName� 1  56��
�� 
spac� o  78���� 0 statusmessage StatusMessage��  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      ������� *0 displayerrormessage DisplayErrorMessage� ���� o      ���� 0 
errorvalue 
errorValue��  ��  � k     %�� ��� n    	��� I    	������� 0 	statusmsg 	StatusMSG� ��� m    �� ��� & D i s p l a y E r r o r M e s s a g e� ���� l   ������ b    ��� m    �� ��� , S h o w i n g   E r r o r   M e s s a g e  � o    ���� 0 
errorvalue 
errorValue��  ��  ��  ��  �  f     � ��� I  
 ������
�� .sysobeepnull��� ��� long��  ��  � ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ���� I   %����
�� .sysodlogaskr        TEXT� b    ��� b    ��� m    �� ��� � A n   e r r o r   h a s   o c c u r r e d .   
 	 
 P l e a s e   c o n t a c t   t h e   H e l p   D e s k   i m m e d i a t e l y   f o r   a s s i s t a n c e . 
 
 ( E r r o r   c o d e   =  � o    ���� 0 
errorvalue 
errorValue� m    �� ���  )� ����
�� 
btns� J    �� ���� m    �� ���  O K��  � �����
�� 
dflt� m     !�� ���  O K��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  	 on Die()   � ���    o n   D i e ( )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 
0 die Die��  ��  � k     k�� ��� l     ��������  ��  ��  � ��� l     ������  � . ( Kill the Cocoa progress bar application   � ��� P   K i l l   t h e   C o c o a   p r o g r e s s   b a r   a p p l i c a t i o n� ��� n    ��� I    ������� 0 	statusmsg 	StatusMSG� ��� m    �� ���  D i e� ���� m    �� ��� < R u n n i n g   K i l l P l e a s e W a i t   H a n d l e r��  ��  �  f     � ��� n   ��� I   	 ��~�}�  0 killpleasewait KillPleaseWait�~  �}  �  f    	� ��� l   �|���|  � ( " Attempt the standard Quit message   � ��� D   A t t e m p t   t h e   s t a n d a r d   Q u i t   m e s s a g e� ��� O   ��� I   �{�z�y
�{ .aevtquitnull��� ��� null�z  �y  �  f    � ��� l   �x���x  � / ) Cease all execution of running functions   � ��� R   C e a s e   a l l   e x e c u t i o n   o f   r u n n i n g   f u n c t i o n s� 	 		  R    �w�v	
�w .ascrerr ****      � ****�v  	 �u	�t
�u 
errn	 m    �s�s���t  	 			 l     �r		�r  	  Overkill just in case   	 �		 * O v e r k i l l   j u s t   i n   c a s e	 		�q		 Q     k	
			
 I  # 6�p	�o
�p .sysoexecTEXT���     TEXT	 b   # 2			 b   # *			 o   # (�n�n 0 killall  	 1   ( )�m
�m 
spac	 l  * 1	�l�k	 n   * 1			 1   / 1�j
�j 
strq	 o   * /�i�i 0 
scriptname 
ScriptName�l  �k  �o  	 R      �h�g�f
�h .ascrerr ****      � ****�g  �f  	 Q   > k		�e	 l  A b				 I  A b�d		
�d .sysoexecTEXT���     TEXT	 b   A P			 b   A H			 o   A F�c�c 0 killall  	 1   F G�b
�b 
spac	 l  H O	 �a�`	  n   H O	!	"	! 1   M O�_
�_ 
strq	" o   H M�^�^ 0 
scriptname 
ScriptName�a  �`  	 �]	#	$
�] 
RAun	# o   Q V�\�\ 0 macauthtmpuser  	$ �[	%	&
�[ 
RApw	% o   W \�Z�Z 0 macauthtmpuserpass  	& �Y	'�X
�Y 
badm	' m   ] ^�W
�W boovtrue�X  	 + % Do not display any errors on failure   	 �	(	( J   D o   n o t   d i s p l a y   a n y   e r r o r s   o n   f a i l u r e	 R      �V�U�T
�V .ascrerr ****      � ****�U  �T  �e  �q  � 	)	*	) l     �S�R�Q�S  �R  �Q  	* 	+	,	+ l     �P	-	.�P  	-  AddToDockAndQuit()   	. �	/	/ $ A d d T o D o c k A n d Q u i t ( )	, 	0	1	0 l     �O�N�M�O  �N  �M  	1 	2	3	2 l     �L�K�J�L  �K  �J  	3 	4	5	4 l     �I�H�G�I  �H  �G  	5 	6	7	6 i  ��	8	9	8 I      �F�E�D�F $0 addtodockandquit AddToDockAndQuit�E  �D  	9 k     �	:	: 	;	<	; n    	=	>	= I    �C	?�B�C 0 	statusmsg 	StatusMSG	? 	@	A	@ m    	B	B �	C	C   A d d T o D o c k A n d Q u i t	A 	D�A	D m    	E	E �	F	F B R u n n i n g   a d d T o D o c k . s h   s h e l l   s c r i p t�A  �B  	>  f     	< 	G	H	G Q    5	I	J	K	I I   &�@	L�?
�@ .sysoexecTEXT���     TEXT	L b    "	M	N	M b    	O	P	O b    	Q	R	Q b    	S	T	S o    �>�> 0 	addtodock 	addToDock	T 1    �=
�= 
spac	R o    �<�< 0 loggedinuser  	P 1    �;
�; 
spac	N n    !	U	V	U 1    !�:
�: 
strq	V o    �9�9 "0 thisapplication thisApplication�?  	J R      �8�7�6
�8 .ascrerr ****      � ****�7  �6  	K k   . 5	W	W 	X	Y	X l  . .�5	Z	[�5  	Z B < Die should kill us of, no error condition for this scenario   	[ �	\	\ x   D i e   s h o u l d   k i l l   u s   o f ,   n o   e r r o r   c o n d i t i o n   f o r   t h i s   s c e n a r i o	Y 	]�4	] I   . 5�3	^�2�3 0 	statusmsg 	StatusMSG	^ 	_	`	_ m   / 0	a	a �	b	b   A d d T o D o c k A n d Q u i t	` 	c�1	c m   0 1	d	d �	e	e J a n   e r r o r   o c c u r e d   r u n n i n g   s h e l l   s c r i p t�1  �2  �4  	H 	f	g	f l  6 6�0�/�.�0  �/  �.  	g 	h	i	h n  6 =	j	k	j I   7 =�-	l�,�- 0 	statusmsg 	StatusMSG	l 	m	n	m m   7 8	o	o �	p	p   A d d T o D o c k A n d Q u i t	n 	q�+	q m   8 9	r	r �	s	s < R u n n i n g   K i l l P l e a s e W a i t   H a n d l e r�+  �,  	k  f   6 7	i 	t	u	t n  > C	v	w	v I   ? C�*�)�(�*  0 killpleasewait KillPleaseWait�)  �(  	w  f   > ?	u 	x	y	x Q   D �	z	{	|	z t   G �	}	~	} k   I �		 	�	�	� l  I I�'	�	��'  	� &   Below make the dock icon bounce   	� �	�	� @   B e l o w   m a k e   t h e   d o c k   i c o n   b o u n c e	� 	�	�	� I  I N�&�%�$
�& .miscactvnull��� ��� null�%  �$  	� 	�	�	� l  O O�#	�	��#  	� A ; The Following will make the Dock Icon Bounce once or twice   	� �	�	� v   T h e   F o l l o w i n g   w i l l   m a k e   t h e   D o c k   I c o n   B o u n c e   o n c e   o r   t w i c e	� 	�	�	� Q   O e	�	��"	� O  R \	�	�	� I  V [�!� �
�! .miscactvnull��� ��� null�   �  	� m   R S	�	��                                                                                  dock  alis    X  SSDee                      �˨H+     0Dock.app                                                        �	�n��        ����  	                CoreServices    ���      �o#B       0   *   )  -SSDee:System: Library: CoreServices: Dock.app     D o c k . a p p    S S D e e  $System/Library/CoreServices/Dock.app  / ��  	� R      ���
� .ascrerr ****      � ****�  �  �"  	� 	�	�	� Q   f �	�	��	� I  i ��	��
� .sysoexecTEXT���     TEXT	� b   i �	�	�	� b   i �	�	�	� b   i �	�	�	� b   i �	�	�	� b   i �	�	�	� b   i �	�	�	� b   i �	�	�	� b   i |	�	�	� b   i z	�	�	� b   i v	�	�	� b   i t	�	�	� b   i p	�	�	� o   i n�� 	0 sleep  	� 1   n o�
� 
spac	� m   p s	�	� �	�	�  2	� 1   t u�
� 
spac	� m   v y	�	� �	�	�  ;	� 1   z {�
� 
spac	� o   | ��� 0 opencmd  	� 1   � ��
� 
spac	� l  � �	���	� n   � �	�	�	� 1   � ��
� 
strq	� o   � ��� "0 thisapplication thisApplication�  �  	� 1   � ��
� 
spac	� m   � �	�	� �	�	�  & > / d e v / n u l l	� 1   � ��
� 
spac	� m   � �	�	� �	�	�  &�  	� R      ���

� .ascrerr ****      � ****�  �
  �  	� 	��		� I  � ��	�	�
� .sysodlogaskr        TEXT	� b   � �	�	�	� b   � �	�	�	� b   � �	�	�	� m   � �	�	� �	�	� l A n   a l i a s   o f   t h e   M a c A D U t i l i t y   w i l l   r e m a i n   o n   y o u r   d o c k .	� o   � ��
� 
ret 	� o   � ��
� 
ret 	� m   � �	�	� �	�	� p P l e a s e   f e e l   f r e e   t o   r u n   i t   a t   y o u r   e a r l i e s t   c o n v e n i e n c e .	� �	�	�
� 
btns	� J   � �	�	� 	��	� m   � �	�	� �	�	�  O K�  	� �	�	�
� 
dflt	� m   � �	�	� �	�	�  O K	� �	��
� 
disp	� 4   � �� 	�
�  
alis	� l  � �	�����	� 4   � ���	�
�� 
psxf	� o   � ����� 0 dockiconpath DockIconPath��  ��  �  �	  	~ m   G H���� 	{ R      ������
�� .ascrerr ****      � ****��  ��  	| n  � �	�	�	� I   � ��������� 
0 die Die��  ��  	�  f   � �	y 	�	�	� n  � �	�	�	� I   � ���	����� 0 	statusmsg 	StatusMSG	� 	�	�	� m   � �	�	� �	�	�   A d d T o D o c k A n d Q u i t	� 	���	� m   � �	�	� �	�	� & R u n n i n g   D i e   H a n d l e r��  ��  	�  f   � �	� 	���	� n  � �	�	�	� I   � ��������� 
0 die Die��  ��  	�  f   � ���  	7 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  ��	�	�	� I      �������� 0 sanitychecks SanityChecks��  ��  	� Z     $	�	�����	� l    	�����	� H     	�	� E    	�	�	� l    	�����	� I    ��	���
�� .sysoexecTEXT���     TEXT	� m     	�	� �	�	� 
 i d   - G��  ��  ��  	� m    	�	� �	�	�  8 0��  ��  	� k     	�	� 	�	�	� r    	�	�	� I   ��	�	�
�� .sysodisAaleR        TEXT	� m    
 
  �

  M a c A D U t i l i t y	� ��


�� 
mesS
 m    

 �

 d 
 	 	 T h i s   u t i l i t y   r e q u i r e s   a d m i n i s t r a t i v e   p r i v i l e g e s
 ��


�� 
btns
 J    

 
	��
	 m    



 �

  E x i t��  
 ��
��
�� 
dflt
 m    

 �

  E x i t��  	� o      ���� &0 notanadminwarning notAnAdminWarning	� 


 l   ��

��  
 G A Changed Text to display User Account rather then "Computer" term   
 �

 �   C h a n g e d   T e x t   t o   d i s p l a y   U s e r   A c c o u n t   r a t h e r   t h e n   " C o m p u t e r "   t e r m
 
��
 n    


 I     �������� 
0 die Die��  ��  
  f    ��  ��  ��  	� 


 l     ��������  ��  ��  
 


 i  ��


 I      �������� 0 checkbattery checkBattery��  ��  
 k     �

 


 r     
 
!
  b     
"
#
" b     
$
%
$ b     
&
'
& b     
(
)
( b     
*
+
* b     
,
-
, b     	
.
/
. b     
0
1
0 o     ���� 	0 pmset  
1 1    ��
�� 
spac
/ m    
2
2 �
3
3  - g   b a t t   |
- 1   	 
��
�� 
spac
+ o    ���� 0 grep  
) 1    ��
�� 
spac
' m    
4
4 �
5
5  - c
% 1    ��
�� 
spac
# n    
6
7
6 1    ��
�� 
strq
7 m    
8
8 �
9
9  A C   P o w e r
! o      ���� *0 checkbatterycommand checkBatteryCommand
 
:
;
: n   )
<
=
< I    )��
>���� 0 	statusmsg 	StatusMSG
> 
?
@
? m     
A
A �
B
B  c h e c k B a t t e r y
@ 
C��
C l    %
D����
D b     %
E
F
E b     #
G
H
G m     !
I
I �
J
J  R u n n i n g   c o m m a n d
H 1   ! "��
�� 
spac
F o   # $���� *0 checkbatterycommand checkBatteryCommand��  ��  ��  ��  
=  f    
; 
K
L
K Q   * �
M
N
O
M l  - 4
P
Q
R
P r   - 4
S
T
S I  - 2��
U��
�� .sysoexecTEXT���     TEXT
U o   - .���� *0 checkbatterycommand checkBatteryCommand��  
T o      ����  0 onbatterypower onBatteryPower
Q ( " grep exits non-zero on no matches   
R �
V
V D   g r e p   e x i t s   n o n - z e r o   o n   n o   m a t c h e s
N R      ������
�� .ascrerr ****      � ****��  ��  
O k   < �
W
W 
X
Y
X I  < A������
�� .sysobeepnull��� ��� long��  ��  
Y 
Z
[
Z I  B G������
�� .miscactvnull��� ��� null��  ��  
[ 
\
]
\ r   H k
^
_
^ I  H i��
`
a
�� .sysodlogaskr        TEXT
` m   H I
b
b �
c
c v P l e a s e   c o n n e c t   t o   A C   ( W a l l   O u t l e t )   p o w e r   b e f o r e   c o n t i n u i n g .
a ��
d
e
�� 
btns
d J   J P
f
f 
g
h
g m   J K
i
i �
j
j  Q u i t
h 
k��
k m   K N
l
l �
m
m  C o n t i n u e��  
e ��
n
o
�� 
dflt
n m   S V
p
p �
q
q  C o n t i n u e
o ��
r��
�� 
disp
r l  Y c
s����
s 4   Y c��
t
�� 
psxf
t o   ] b���� 0 powericonpath PowerIconPath��  ��  ��  
_ o      ���� 0 powermessage powerMessage
] 
u
v
u Z   l �
w
x����
w =  l u
y
z
y n   l q
{
|
{ 1   m q��
�� 
bhit
| o   l m���� 0 powermessage powerMessage
z m   q t
}
} �
~
~  C o n t i n u e
x k   x �

 
�
�
� n  x �
�
�
� I   y ���
����� 0 	statusmsg 	StatusMSG
� 
�
�
� m   y |
�
� �
�
�  c h e c k B a t t e r y
� 
���
� m   | 
�
� �
�
� * U s e r   c l i c k e d   c o n t i n u e��  ��  
�  f   x y
� 
�
�
� l  � ���
�
���  
� - ' Give time for the power system to init   
� �
�
� N   G i v e   t i m e   f o r   t h e   p o w e r   s y s t e m   t o   i n i t
� 
�
�
� I  � ���
���
�� .sysodelanull��� ��� nmbr
� m   � �
�
� ?�      ��  
� 
���
� L   � �
�
� I   � ��������� 0 checkbattery checkBattery��  ��  ��  ��  ��  
v 
���
� Z   � �
�
�����
� =  � �
�
�
� n   � �
�
�
� 1   � ���
�� 
bhit
� o   � ����� 0 powermessage powerMessage
� m   � �
�
� �
�
�  Q u i t
� k   � �
�
� 
�
�
� n  � �
�
�
� I   � ���
����� 0 	statusmsg 	StatusMSG
� 
�
�
� m   � �
�
� �
�
�  c h e c k B a t t e r y
� 
���
� m   � �
�
� �
�
� " U s e r   c l i c k e d   q u i t��  ��  
�  f   � �
� 
���
� L   � �
�
� m   � ���
�� boovfals��  ��  ��  ��  
L 
�
�
� l  � ���
�
���  
� - ' Return true if the command exited zero   
� �
�
� N   R e t u r n   t r u e   i f   t h e   c o m m a n d   e x i t e d   z e r o
� 
�
�
� n  � �
�
�
� I   � ���
����� 0 	statusmsg 	StatusMSG
� 
�
�
� m   � �
�
� �
�
�  c h e c k B a t t e r y
� 
���
� m   � �
�
� �
�
� * A C   P o w e r   C h e c k   P a s s e d��  ��  
�  f   � �
� 
���
� L   � �
�
� m   � ���
�� boovtrue��  
 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   CheckIfRun():   
� �
�
�    C h e c k I f R u n ( ) :
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     �������  ��  �  
� 
�
�
� l     �~�}�|�~  �}  �|  
� 
�
�
� i  ��
�
�
� I      �{�z�y�{ 0 
checkifrun 
CheckIfRun�z  �y  
� k     �
�
� 
�
�
� I    �x�w�v
�x .miscactvnull��� ��� null�w  �v  
� 
�
�
� n   
�
�
� I    �u
��t�u 0 	statusmsg 	StatusMSG
� 
�
�
� m    
�
� �
�
�  C h e c k I f R u n
� 
��s
� m    	
�
� �
�
� 8 R u n n i n g   c h e c k U s e r N o w   H a n d l e r�s  �t  
�  f    
� 
�
�
� l   !
�
�
�
� Z    !
�
��r
�
� I    �q�p�o�q 0 checkusernow checkUserNow�p  �o  
� k    
�
� 
�
�
� l   �n
�
��n  
� W Q If the checkUser.sh script exited successfully then user is NOT already complete   
� �
�
� �   I f   t h e   c h e c k U s e r . s h   s c r i p t   e x i t e d   s u c c e s s f u l l y   t h e n   u s e r   i s   N O T   a l r e a d y   c o m p l e t e
� 
��m
� r    
�
�
� m    �l
�l boovfals
� o      �k�k .0 userisalreadycomplete userIsAlreadyComplete�m  �r  
� k    !
�
� 
�
�
� l   �j
�
��j  
� N H If thecheckUser.sh script exited in error then user is already complete   
� �
�
� �   I f   t h e c h e c k U s e r . s h   s c r i p t   e x i t e d   i n   e r r o r   t h e n   u s e r   i s   a l r e a d y   c o m p l e t e
� 
�
�
� r    
�
�
� m    �i
�i boovtrue
� o      �h�h .0 userisalreadycomplete userIsAlreadyComplete
� 
��g
� l     �f�e�d�f  �e  �d  �g  
�   checkUserNow()   
� �
�
�    c h e c k U s e r N o w ( )
� 
� 
� l  " "�c�c   * $ Added kill code for our status apps    � H   A d d e d   k i l l   c o d e   f o r   o u r   s t a t u s   a p p s   Q   " ;�b I  % 2�a�`
�a .sysoexecTEXT���     TEXT b   % .	
	 b   % , o   % *�_�_ 0 killall   1   * +�^
�^ 
spac
 m   , - �  P r o c e s s C o m p l e t e�`   R      �]�\�[
�] .ascrerr ****      � ****�\  �[  �b    Q   < U�Z I  ? L�Y�X
�Y .sysoexecTEXT���     TEXT b   ? H b   ? F o   ? D�W�W 0 killall   1   D E�V
�V 
spac m   F G �  C l e a n U p�X   R      �U�T�S
�U .ascrerr ****      � ****�T  �S  �Z    Q   V o�R I  Y f�Q�P
�Q .sysoexecTEXT���     TEXT b   Y b  b   Y `!"! o   Y ^�O�O 0 killall  " 1   ^ _�N
�N 
spac  m   ` a## �$$  P l e a s e W a i t�P   R      �M�L�K
�M .ascrerr ****      � ****�L  �K  �R   %&% l  p p�J�I�H�J  �I  �H  & '(' Z   p �)*�G+) I   p u�F�E�D�F ,0 checkusercentrifynow checkUserCentrifyNow�E  �D  * r   x {,-, m   x y�C
�C boovtrue- o      �B�B .0 userisalreadycentrify userIsAlreadyCentrify�G  + r   ~ �./. m   ~ �A
�A boovfals/ o      �@�@ .0 userisalreadycentrify userIsAlreadyCentrify( 010 l  � ��?�>�=�?  �>  �=  1 232 Z   � �45�<64 o   � ��;�; .0 userisalreadycomplete userIsAlreadyComplete5 k   � �77 898 r   � �:;: I  � ��:<=
�: .sysodisAaleR        TEXT< m   � �>> �??  M a c A D U t i l i t y= �9@A
�9 
mesS@ m   � �BB �CC � 
 	 	 
 T h i s   u t i l i t y   h a s   a l r e a d y   b e e n   s u c c e s s f u l l y   r u n   o n   t h i s   u s e r   a c c o u n t .   N o   a d d i t i o n a l   a c t i o n   i s   n e e d e d .A �8DE
�8 
btnsD J   � �FF G�7G m   � �HH �II  E x i t�7  E �6J�5
�6 
dfltJ m   � �KK �LL  E x i t�5  ; o      �4�4  0 successwarning SuccessWarning9 MNM l  � ��3�2�1�3  �2  �1  N O�0O n  � �PQP I   � ��/�.�-�/ 
0 die Die�.  �-  Q  f   � ��0  �<  6 L   � �RR m   � ��,
�, boovtrue3 S�+S l  � ��*�)�(�*  �)  �(  �+  
� TUT l     �'�&�%�'  �&  �%  U VWV l     �$XY�$  X   domainCheck():   Y �ZZ    d o m a i n C h e c k ( ) :W [\[ l     �#�"�!�#  �"  �!  \ ]^] l     � ���   �  �  ^ _`_ l     ����  �  �  ` aba i  ��cdc I      ����  0 domainchecknow DomainCheckNow�  �  d k    �ee fgf n    hih I    ���� $0 launchpleasewait LaunchPleaseWait�  �  i  f     g jkj Q    )lm�l I  	  �no
� .sysoexecTEXT���     TEXTn o   	 �� 0 domaincheck domainChecko �pq
� 
RAunp o    �� 0 macauthtmpuser  q �rs
� 
RApwr o    �� 0 macauthtmpuserpass  s �t�
� 
badmt m    �
� boovtrue�  m R      �
�	�
�
 .ascrerr ****      � ****�	  �  �  k uvu Q   * Owx�w r   - Fyzy I  - @�{|
� .sysoexecTEXT���     TEXT{ m   - .}} �~~   c a t   / t m p / . d o m a i n| ��
� 
RAun o   / 4�� 0 macauthtmpuser  � ���
� 
RApw� o   5 :�� 0 macauthtmpuserpass  � ��� 
� 
badm� m   ; <��
�� boovtrue�   z o      ���� (0 defaultdomainvalue DefaultDomainValuex R      ������
�� .ascrerr ****      � ****��  ��  �  v ���� Q   P������ k   S��� ��� Z   S������� =  S Z��� o   S X���� (0 defaultdomainvalue DefaultDomainValue� m   X Y�� ���  E M E A� k   ] ��� ��� r   ] d��� m   ] ^�� ���  x x x x x x x x x x� o      ���� 0 defaultdomain DefaultDomain� ��� r   e l��� m   e f�� ���  x x x x x x x x x x� o      ���� &0 defaultauthdomain DefaultAuthDomain� ��� r   m t��� m   m n�� ��� R O U = C o m p u t e r s M a c , D C = x x x x , D C = x x x x x , D C = x x x x x� o      ���� $0 defaultcontainer DefaultContainer� ��� r   u |��� m   u v�� ���  x x x x x x x x x x� o      ���� &0 defaultcontroller DefaultController� ��� r   } ���� m   } ~�� ���  x x x x x x x x x x� o      ���� *0 secondarycontroller SecondaryController� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� &0 tertiarycontoller TertiaryContoller� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� 0 
adbindacct 
ADBindAcct� ���� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� 0 
adbindpass 
ADBindPass��  � ��� =  � ���� o   � ����� (0 defaultdomainvalue DefaultDomainValue� m   � ��� ���  N A L A� ��� k   � ��� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� 0 defaultdomain DefaultDomain� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� &0 defaultauthdomain DefaultAuthDomain� ��� r   � ���� m   � ��� ��� R O U = C o m p u t e r s M a c , D C = x x x x , D C = x x x x x , D C = x x x x x� o      ���� $0 defaultcontainer DefaultContainer� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� &0 defaultcontroller DefaultController� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� *0 secondarycontroller SecondaryController� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� &0 tertiarycontoller TertiaryContoller� ��� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� 0 
adbindacct 
ADBindAcct� ���� r   � ���� m   � ��� ���  x x x x x x x x x x� o      ���� 0 
adbindpass 
ADBindPass��  � ��� =  � ���� o   � ����� (0 defaultdomainvalue DefaultDomainValue� m   � ��� ���  A S I A� � � k   �D  r   � m   �  �  x x x x x x x x x x o      ���� 0 defaultdomain DefaultDomain 	 r  

 m  
 �  x x x x x x x x x x o      ���� &0 defaultauthdomain DefaultAuthDomain	  r   m   � R O U = C o m p u t e r s M a c , D C = x x x x , D C = x x x x x , D C = x x x x x o      ���� $0 defaultcontainer DefaultContainer  r  $ m   �  x x x x x x x x x x o      ���� &0 defaultcontroller DefaultController  r  %* m  %( �  x x x x x x x x x x o      ���� *0 secondarycontroller SecondaryController  !  r  +0"#" m  +.$$ �%%  x x x x x x x x x x# o      ���� &0 tertiarycontoller TertiaryContoller! &'& r  1:()( m  14** �++  x x x x x x x x x x) o      ���� 0 
adbindacct 
ADBindAcct' ,��, r  ;D-.- m  ;>// �00  x x x x x x x x x x. o      ���� 0 
adbindpass 
ADBindPass��    121 = GP343 o  GL���� (0 defaultdomainvalue DefaultDomainValue4 m  LO55 �66  G N E2 787 k  S�99 :;: r  S\<=< m  SV>> �??  x x x x x x x x x x= o      ���� 0 defaultdomain DefaultDomain; @A@ r  ]fBCB m  ]`DD �EE  x x x x x x x x x xC o      ���� &0 defaultauthdomain DefaultAuthDomainA FGF r  gpHIH m  gjJJ �KK R O U = C o m p u t e r s M a c , D C = x x x x , D C = x x x x x , D C = x x x x xI o      ���� $0 defaultcontainer DefaultContainerG LML r  qzNON m  qtPP �QQ  x x x x x x x x x xO o      ���� &0 defaultcontroller DefaultControllerM RSR r  {�TUT m  {~VV �WW  x x x x x x x x x xU o      ���� *0 secondarycontroller SecondaryControllerS XYX r  ��Z[Z m  ��\\ �]]  x x x x x x x x x x[ o      ���� &0 tertiarycontoller TertiaryContollerY ^_^ r  ��`a` m  ��bb �cc  x x x x x x x x x xa o      ���� 0 
adbindacct 
ADBindAcct_ d��d r  ��efe m  ��gg �hh  x x x x x x x x x xf o      ���� 0 
adbindpass 
ADBindPass��  8 iji = ��klk o  ������ (0 defaultdomainvalue DefaultDomainValuel m  ������ j m��m k  ��nn opo I  ����q���� 0 	statusmsg 	StatusMSGq rsr m  ��tt �uu  D o m a i n C h e c ks v��v m  ��ww �xx & N o   D o m a i n   S p e c i f i e d��  ��  p y��y L  ��zz m  ����
�� boovfals��  ��  ��  � {��{ L  ��|| m  ����
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  b }~} l     ��������  ��  ��  ~ � l     ������  � r l StartUtility(): Begins the Mac AD Authentication process with a description and Not Now and Proceed buttons   � ��� �   S t a r t U t i l i t y ( ) :   B e g i n s   t h e   M a c   A D   A u t h e n t i c a t i o n   p r o c e s s   w i t h   a   d e s c r i p t i o n   a n d   N o t   N o w   a n d   P r o c e e d   b u t t o n s� ��� l     ������  � � z			Not Now: 	Creates a entry of the Mac AD Utility in the dock and notifies the user to run at their earliest convenience.   � ��� � 	 	 	 N o t   N o w :   	 C r e a t e s   a   e n t r y   o f   t h e   M a c   A D   U t i l i t y   i n   t h e   d o c k   a n d   n o t i f i e s   t h e   u s e r   t o   r u n   a t   t h e i r   e a r l i e s t   c o n v e n i e n c e .� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 startutility StartUtility��  ��  � k     K�� ��� I    ������
�� .miscactvnull��� ��� null��  ��  � ���� Q    K���� t   	 >��� k    =�� ��� I   ������
�� .sysobeepnull��� ��� long��  ��  � ��� I   ����
�� .sysodisAaleR        TEXT� m    �� ��� . W e l c o m e   t o   M a c A D U t i l i t y� ����
�� 
mesS� m    �� ���� 
 
 T h i s   u t i l i t y   i s   u s e d   t o   u p d a t e   y o u r   c u r r e n t   M a c   a c c o u n t   t o   u s e   y o u r   G e n e n t e c h   o r   R o c h e   U s e r I D   a n d   P a s s w o r d   f o r   l o g o n   a n d   f o r   a u t h e n t i c a t i o n .   T h i s   p r o c e s s   w i l l   u s u a l l y   t a k e   1 0 - 1 5   m i n u t e s   a n d   R E Q U I R E S   a   r e b o o t .     Y o u   S H O U L D   s a v e   a n y   o p e n   d o c u m e n t s   a n d   c l o s e   a n y   o p e n   a p p l i c a t i o n s   b e f o r e   p r o c e e d i n g . 
 
 N O T   N O W :   C l i c k   i f   y o u   w o u l d   l i k e   t o   p o s t p o n e   t h i s   c h a n g e   f o r   o n e   d a y .     I t   w i l l   b e   a d d e d   t o   y o u r   d o c k   a n d   c a n   b e   r u n   s o o n e r   a t   y o u r   e a r l i e s t   c o n v e n i e n c e . 
 
 P R O C E E D :   C l i c k   i f   y o u   w o u l d   l i k e   t o   c o n t i n u e   n o w .� ����
�� 
btns� J    �� ��� m    �� ���  N o t   N o w� ���� m    �� ���  P r o c e e d��  � �����
�� 
dflt� m    �� ���  P r o c e e d��  � ���� Z     =������ =     %��� n     #��� 1   ! #��
�� 
bhit� 1     !��
�� 
rslt� m   # $�� ���  N o t   N o w� l  ( *���� L   ( *�� m   ( )��
�� boovfals�   Do not continue   � ���     D o   n o t   c o n t i n u e� ��� =   - 4��� n   - 0��� 1   . 0��
�� 
bhit� 1   - .��
�� 
rslt� m   0 3�� ���  P r o c e e d� ���� l  7 9���� L   7 9�� m   7 8��
�� boovtrue�   Continue with script   � ��� *   C o n t i n u e   w i t h   s c r i p t��  ��  ��  � m   	 
���� � R      ������
�� .ascrerr ****      � ****��  ��  � I   F K�������� $0 addtodockandquit AddToDockAndQuit��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � G A NetworkCheck(): Checks to see if the computer is on the  network   � ��� �   N e t w o r k C h e c k ( ) :   C h e c k s   t o   s e e   i f   t h e   c o m p u t e r   i s   o n   t h e     n e t w o r k� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� 0 networkcheck NetworkCheck��  ��  � k     K�� ��� Q     ���� n   ��� I    �������� $0 launchpleasewait LaunchPleaseWait��  ��  �  f    � R      ������
�� .ascrerr ****      � ****��  ��  � I    ������� 0 	statusmsg 	StatusMSG� ��� m    �� ���  N e t w o r k C h e c k� ��� m    �� ��� L L a u n c h P l e a s e W a i t   H a n l d e r   l a u n c h   F a i l e d�  ��  � ��� Q    H���� I   2�~��
�~ .sysoexecTEXT���     TEXT� o     �}�} 0 netcheck netCheck� �|��
�| 
RAun� o   ! &�{�{ 0 macauthtmpuser  � �z��
�z 
RApw� o   ' ,�y�y 0 macauthtmpuserpass  � �x��w
�x 
badm� m   - .�v
�v boovtrue�w  � R      �u�t�s
�u .ascrerr ****      � ****�t  �s  � k   : H�� � � n  : ? I   ; ?�r�q�p�r (0 networkcheckfailed NetworkCheckFailed�q  �p    f   : ;   n  @ E I   A E�o�n�m�o  0 killpleasewait KillPleaseWait�n  �m    f   @ A �l L   F H m   F G�k
�k boovfals�l  � 	
	 l  I I�j�j   	 try    �  t r y
  l  I I�i�i    	my KillPleaseWait()    � ( 	 m y   K i l l P l e a s e W a i t ( )  l  I I�h�h    on error    �  o n   e r r o r  l  I I�g�g   H B	StatusMSG("NetworkCheck", "KillPleaseWait handler launch Failed")    � � 	 S t a t u s M S G ( " N e t w o r k C h e c k " ,   " K i l l P l e a s e W a i t   h a n d l e r   l a u n c h   F a i l e d " )  l  I I�f �f    end try     �!!  e n d   t r y "�e" l  I K#$%# L   I K&& m   I J�d
�d boovtrue$  	 continue   % �''    c o n t i n u e�e  � ()( l     �c�b�a�c  �b  �a  ) *+* l     �`,-�`  , J D NetworkCheckFailed(): Display Error dialog if Network check failed.   - �.. �   N e t w o r k C h e c k F a i l e d ( ) :   D i s p l a y   E r r o r   d i a l o g   i f   N e t w o r k   c h e c k   f a i l e d .+ /0/ l     �_12�_  1 j d		If it is not, notifies the user with instructions on what to do with Not Now and Try Again buttons   2 �33 � 	 	 I f   i t   i s   n o t ,   n o t i f i e s   t h e   u s e r   w i t h   i n s t r u c t i o n s   o n   w h a t   t o   d o   w i t h   N o t   N o w   a n d   T r y   A g a i n   b u t t o n s0 454 l     �^67�^  6 � z			Not Now: 	Creates a alias of the Mac_AD_Utility in the dock and notifies the user to run at their earliest convenience.   7 �88 � 	 	 	 N o t   N o w :   	 C r e a t e s   a   a l i a s   o f   t h e   M a c _ A D _ U t i l i t y   i n   t h e   d o c k   a n d   n o t i f i e s   t h e   u s e r   t o   r u n   a t   t h e i r   e a r l i e s t   c o n v e n i e n c e .5 9:9 l     �];<�]  ; * $ 			Try Again: 	Loops NetworkCheck()   < �== H   	 	 	 T r y   A g a i n :   	 L o o p s   N e t w o r k C h e c k ( ): >?> l     �\@A�\  @  	   A �BB  	? CDC l     �[EF�[  E ; 5		If it is, proceeds to VerifyCentrifyConfigInstall()   F �GG j 	 	 I f   i t   i s ,   p r o c e e d s   t o   V e r i f y C e n t r i f y C o n f i g I n s t a l l ( )D HIH i  ��JKJ I      �Z�Y�X�Z (0 networkcheckfailed NetworkCheckFailed�Y  �X  K k     rLL MNM I     �W�V�U�W  0 killpleasewait KillPleaseWait�V  �U  N OPO Q    :QRSQ t   	 -TUT l   ,VWXV k    ,YY Z[Z I   �T�S�R
�T .sysobeepnull��� ��� long�S  �R  [ \�Q\ r    ,]^] I   *�P_`
�P .sysodlogaskr        TEXT_ m    aa �bbx T o   c o n t i n u e ,   y o u   M U S T   f i r s t   b e   c o n n e c t e d   t o   t h e   R o c h e   o r   G e n e n t e c h   n e t w o r k . 
 
 O N - S I T E   ( R o c h e   o r   G e n e n t e c h   C a m p u s ) :   
 
 P l e a s e   c o n n e c t   t o   C a m p u s ; W L A N - 0 0 1   o r   G e n e n A i r 2   o r   p l u g   i n t o   t h e   c o r p o r a t e   n e t w o r k   v i a   a n   e t h e r n e t   c a b l e . 
 	 	 
 O F F - S I T E   ( O f f   C a m p u s   o r   R e m o t e ) :   
 
 P l e a s e   c o n n e c t   u s i n g   V P N   ( R A N G E   o r   g C o n n e c t )   t o   c o n t i n u e .` �Ocd
�O 
btnsc J    ee fgf m    hh �ii  N o t   N o wg j�Nj m    kk �ll  T r y   A g a i n�N  d �Mmn
�M 
dfltm m    oo �pp  T r y   A g a i nn �Lq�K
�L 
dispq 4    &�Jr
�J 
alisr l   %s�I�Hs 4    %�Gt
�G 
psxft o    #�F�F "0 networkiconpath NetworkIconPath�I  �H  �K  ^ o      �E�E *0 displaynetworkerror displayNetworkError�Q  W $  May be at this screen a while   X �uu <   M a y   b e   a t   t h i s   s c r e e n   a   w h i l eU m   	 
�D�D R R      �C�B�A
�C .ascrerr ****      � ****�B  �A  S l  5 :vwxv n  5 :yzy I   6 :�@�?�>�@ $0 addtodockandquit AddToDockAndQuit�?  �>  z  f   5 6w M G on timeout , quit and add to Dock rather then show AppleScript Message   x �{{ �   o n   t i m e o u t   ,   q u i t   a n d   a d d   t o   D o c k   r a t h e r   t h e n   s h o w   A p p l e S c r i p t   M e s s a g eP |�=| Z   ; r}~�<} =   ; D��� n   ; @��� 1   < @�;
�; 
bhit� o   ; <�:�: *0 displaynetworkerror displayNetworkError� m   @ C�� ���  N o t   N o w~ n  G L��� I   H L�9�8�7�9 $0 addtodockandquit AddToDockAndQuit�8  �7  �  f   G H ��� =   O X��� n   O T��� 1   P T�6
�6 
bhit� o   O P�5�5 *0 displaynetworkerror displayNetworkError� m   T W�� ���  T r y   A g a i n� ��4� k   [ n�� ��� n  [ `��� I   \ `�3�2�1�3 $0 launchpleasewait LaunchPleaseWait�2  �1  �  f   [ \� ��� l  a a�0�/�.�0  �/  �.  � ��� I  a h�-��,
�- .sysodelanull��� ��� nmbr� m   a d�+�+ 
�,  � ��*� n  i n��� I   j n�)�(�'�) 0 networkcheck NetworkCheck�(  �'  �  f   i j�*  �4  �<  �=  I ��� l     �&�%�$�&  �%  �$  � ��� l     �#���#  � @ : LaunchCleanUpWait() : Launch the Cocoa Helper Application   � ��� t   L a u n c h C l e a n U p W a i t ( )   :   L a u n c h   t h e   C o c o a   H e l p e r   A p p l i c a t i o n� ��� l     �"�!� �"  �!  �   � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i  ���� I      ���� &0 launchcleanupwait LaunchCleanUpWait�  �  � k     ��� ��� I     ���� 0 	statusmsg 	StatusMSG� ��� m    �� ���   L a u n c h P l e a s e W a i t� ��� m    �� ��� @ S h o w i n g   P r o g r e s s   B a r   A p p l i c a t i o n�  �  � ��� Q    ����� Q    F���� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    ��� o    �� 0 opencmd  � 1    �
� 
spac� o    �� 0 
cleanupapp 
CleanUpApp�  � R      ���
� .ascrerr ****      � ****�  �  � I  ' F���
� .sysoexecTEXT���     TEXT� b   ' 4��� b   ' .��� o   ' ,�
�
 0 opencmd  � 1   , -�	
�	 
spac� o   . 3�� 0 
cleanupapp 
CleanUpApp� ���
� 
RAun� o   5 :�� 0 macauthtmpuser  � ���
� 
RApw� o   ; @�� 0 macauthtmpuserpass  � ���
� 
badm� m   A B�
� boovtrue�  � R      � ����
�  .ascrerr ****      � ****��  ��  � Q   N ����� I  Q b�����
�� .sysoexecTEXT���     TEXT� b   Q ^��� b   Q \��� b   Q Z��� b   Q X��� o   Q V���� 0 opencmd  � 1   V W��
�� 
spac� m   X Y�� ���  - b� 1   Z [��
�� 
spac� m   \ ]�� ���   c o m . g e n e . C l e a n U p��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   j ����� I  m �����
�� .sysoexecTEXT���     TEXT� b   m z��� b   m x��� b   m v��� b   m t��� o   m r���� 0 opencmd  � 1   r s��
�� 
spac� m   t u�� ���  - b� 1   v w��
�� 
spac� m   x y�� ���   c o m . g e n e . C l e a n U p� ����
�� 
RAun� o   { ����� 0 macauthtmpuser  � ����
�� 
RApw� o   � ����� 0 macauthtmpuserpass  � �����
�� 
badm� m   � ���
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � I   � �������� 0 	statusmsg 	StatusMSG� ��� m   � ��� ��� " L a u n c h C l e a n U p W a i t� ���� m   � ��� ��� F E r r o r   l a u n c h i n g   C l e a n U p   A p p l i c a t i o n��  ��  �  ��  L   � � m   � ���
�� boovtrue��  �  l     ��������  ��  ��    l     ����   ? 9 LaunchPleaseWait() : Launch the Cocoa Helper Application    � r   L a u n c h P l e a s e W a i t ( )   :   L a u n c h   t h e   C o c o a   H e l p e r   A p p l i c a t i o n 	
	 l     ��������  ��  ��  
  l     ��������  ��  ��    l     ��������  ��  ��    i   I      �������� $0 launchpleasewait LaunchPleaseWait��  ��   k     �  I     ������ 0 	statusmsg 	StatusMSG  m     �   L a u n c h P l e a s e W a i t �� m     � @ S h o w i n g   P r o g r e s s   B a r   A p p l i c a t i o n��  ��    Q    � !"  Q    F#$%# I   ��&��
�� .sysoexecTEXT���     TEXT& b    '(' b    )*) o    ���� 0 opencmd  * 1    ��
�� 
spac( o    ���� 0 pleasewaitapp PleaseWaitApp��  $ R      ������
�� .ascrerr ****      � ****��  ��  % I  ' F��+,
�� .sysoexecTEXT���     TEXT+ b   ' 4-.- b   ' ./0/ o   ' ,���� 0 opencmd  0 1   , -��
�� 
spac. o   . 3���� 0 pleasewaitapp PleaseWaitApp, ��12
�� 
RAun1 o   5 :���� 0 macauthtmpuser  2 ��34
�� 
RApw3 o   ; @���� 0 macauthtmpuserpass  4 ��5��
�� 
badm5 m   A B��
�� boovtrue��  ! R      ������
�� .ascrerr ****      � ****��  ��  " Q   N �6786 I  Q b��9��
�� .sysoexecTEXT���     TEXT9 b   Q ^:;: b   Q \<=< b   Q Z>?> b   Q X@A@ o   Q V���� 0 opencmd  A 1   V W��
�� 
spac? m   X YBB �CC  - b= 1   Z [��
�� 
spac; m   \ ]DD �EE & c o m . g e n e . P l e a s e W a i t��  7 R      ������
�� .ascrerr ****      � ****��  ��  8 Q   j �FGHF I  m ���IJ
�� .sysoexecTEXT���     TEXTI b   m zKLK b   m xMNM b   m vOPO b   m tQRQ o   m r���� 0 opencmd  R 1   r s��
�� 
spacP m   t uSS �TT  - bN 1   v w��
�� 
spacL m   x yUU �VV & c o m . g e n e . P l e a s e W a i tJ ��WX
�� 
RAunW o   { ����� 0 macauthtmpuser  X ��YZ
�� 
RApwY o   � ����� 0 macauthtmpuserpass  Z ��[��
�� 
badm[ m   � ���
�� boovtrue��  G R      ������
�� .ascrerr ****      � ****��  ��  H I   � ���\���� 0 	statusmsg 	StatusMSG\ ]^] m   � �__ �``   L a u n c h P l e a s e W a i t^ a��a m   � �bb �cc N E r r o r   l a u n c h i n g   P l e a s e   W a i t   A p p l i c a t i o n��  ��   d��d L   � �ee m   � ���
�� boovtrue��   fgf l     ��������  ��  ��  g hih l     ��jk��  j ; 5 KillPleaseWait() : Quit the Cocoa Helper application   k �ll j   K i l l P l e a s e W a i t ( )   :   Q u i t   t h e   C o c o a   H e l p e r   a p p l i c a t i o ni mnm l     ��op��  o ? 9 Added try statements to run as different user on failure   p �qq r   A d d e d   t r y   s t a t e m e n t s   t o   r u n   a s   d i f f e r e n t   u s e r   o n   f a i l u r en rsr l     ��������  ��  ��  s tut l     ��������  ��  ��  u vwv i  	xyx I      ��������  0 killpleasewait KillPleaseWait��  ��  y k     Izz {|{ I     ��}���� 0 	statusmsg 	StatusMSG} ~~ m    �� ���  K i l l P l e a s e W a i t ���� m    �� ��� H T e r m i n a t i n g   p r o g r e s s   b a r   a p p l i c a t i o n��  ��  | ���� Q    I����� Q    @���� l   ���� I   �����
�� .sysoexecTEXT���     TEXT� m    �� ��� $ k i l l a l l   P l e a s e W a i t��  � ( " Try as current console user first   � ��� D   T r y   a s   c u r r e n t   c o n s o l e   u s e r   f i r s t� R      ������
�� .ascrerr ****      � ****��  ��  � Q    @���� I   1����
�� .sysoexecTEXT���     TEXT� m    �� ��� $ k i l l a l l   P l e a s e W a i t� ����
�� 
RAun� o     %���� 0 macauthtmpuser  � ����
�� 
RApw� o   & +���� 0 macauthtmpuserpass  � �����
�� 
badm� m   , -�
� boovtrue��  � R      �~�}�|
�~ .ascrerr ****      � ****�}  �|  � I   9 @�{��z�{ 0 	statusmsg 	StatusMSG� ��� m   : ;�� ���  K i l l P l e a s e W a i t� ��y� m   ; <�� ��� ` E r r o r   r u n n i n g   k i l l a l l   a s   m a c a u t h t m p   u s e r   a c c o u n t�y  �z  � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  ��  ��  w ��� l     �u�t�s�u  �t  �s  � ��� l     �r���r  � 8 2 KillCleanUp() : Quit the Cocoa Helper application   � ��� d   K i l l C l e a n U p ( )   :   Q u i t   t h e   C o c o a   H e l p e r   a p p l i c a t i o n� ��� l     �q���q  � ? 9 Added try statements to run as different user on failure   � ��� r   A d d e d   t r y   s t a t e m e n t s   t o   r u n   a s   d i f f e r e n t   u s e r   o n   f a i l u r e� ��� l     �p�o�n�p  �o  �n  � ��� l     �m�l�k�m  �l  �k  � ��� i  
��� I      �j�i�h�j 0 killcleanup KillCleanUp�i  �h  � k     I�� ��� I     �g��f�g 0 	statusmsg 	StatusMSG� ��� m    �� ���  K i l l P l e a s e W a i t� ��e� m    �� ��� @ T e r m i n a t i n g   c l e a n   u p   a p p l i c a t i o n�e  �f  � ��d� Q    I���c� Q    @���� l   ���� I   �b��a
�b .sysoexecTEXT���     TEXT� m    �� ��� $ k i l l a l l   P l e a s e W a i t�a  � ( " Try as current console user first   � ��� D   T r y   a s   c u r r e n t   c o n s o l e   u s e r   f i r s t� R      �`�_�^
�` .ascrerr ****      � ****�_  �^  � Q    @���� I   1�]��
�] .sysoexecTEXT���     TEXT� m    �� ���  k i l l a l l   C l e a n U p� �\��
�\ 
RAun� o     %�[�[ 0 macauthtmpuser  � �Z��
�Z 
RApw� o   & +�Y�Y 0 macauthtmpuserpass  � �X��W
�X 
badm� m   , -�V
�V boovtrue�W  � R      �U�T�S
�U .ascrerr ****      � ****�T  �S  � I   9 @�R��Q�R 0 	statusmsg 	StatusMSG� ��� m   : ;�� ���  K i l l C l e a n U p� ��P� m   ; <�� ��� ` E r r o r   r u n n i n g   k i l l a l l   a s   m a c a u t h t m p   u s e r   a c c o u n t�P  �Q  � R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �c  �d  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I���I  � T N getLocalPicture() : Attempt to get local picture and add it to the dialog box   � ��� �   g e t L o c a l P i c t u r e ( )   :   A t t e m p t   t o   g e t   l o c a l   p i c t u r e   a n d   a d d   i t   t o   t h e   d i a l o g   b o x� ��� l     �H�G�F�H  �G  �F  � ��� l     �E�D�C�E  �D  �C  � ��� l     �B�A�@�B  �A  �@  � ��� l     �?�>�=�?  �>  �=  � ��� i  ��� I      �<�;�:�< "0 getlocalpicture getLocalPicture�;  �:  � k     L�� ��� n    ��� I    �9��8�9 0 	statusmsg 	StatusMSG� � � m     �  g e t L o c a l P i c t u r e  �7 m     � 0 P r o c e s s i n g   L o c a l   P i c t u r e�7  �8  �  f     �  Q    =	
 I   .�6�5
�6 .sysoexecTEXT���     TEXT b    * b    ( b    & b    $ b    " b      b     b     b     b     o    �4�4  0 getuserpicture getUserPicture 1    �3
�3 
spac m       �!!  - u 1    �2
�2 
spac l   "�1�0" n    #$# 1    �/
�/ 
strq$ o    �.�. 0 loggedinuser  �1  �0   1    �-
�- 
spac m     !%% �&&  - l 1   " #�,
�, 
spac m   $ %'' �((  - w 1   & '�+
�+ 
spac m   ( ))) �**  / t m p�5  	 R      �*�)�(
�* .ascrerr ****      � ****�)  �(  
 I   6 =�'+�&�' 0 	statusmsg 	StatusMSG+ ,-, m   7 8.. �//  g e t L o c a l P i c t u r e- 0�%0 m   8 911 �22 T A n   E r r o r   O c c u r e d   r u n n i n g   g e t U s e r P i c t u r e . s h�%  �&   343 l  > >�$56�$  5 h b Return the local path to the icon ( pre password prompt with no privilages , so we write to tmp )   6 �77 �   R e t u r n   t h e   l o c a l   p a t h   t o   t h e   i c o n   (   p r e   p a s s w o r d   p r o m p t   w i t h   n o   p r i v i l a g e s   ,   s o   w e   w r i t e   t o   t m p   )4 8�#8 L   > L99 c   > K:;: b   > G<=< b   > E>?> m   > ?@@ �AA 
 / t m p /? o   ? D�"�" 0 loggedinuser  = m   E FBB �CC  - L o c a l . i c n s; m   G J�!
�! 
TEXT�#  � DED l     � ���   �  �  E FGF l     �HI�  H J D on promptForLocalPassword(): Display a dialog to get local password   I �JJ �   o n   p r o m p t F o r L o c a l P a s s w o r d ( ) :   D i s p l a y   a   d i a l o g   t o   g e t   l o c a l   p a s s w o r dG KLK l     ����  �  �  L MNM l     ����  �  �  N OPO l     ����  �  �  P QRQ l     ����  �  �  R STS i  UVU I      ���� 00 promptforlocalpassword promptForLocalPassword�  �  V k     �WW XYX l    Z[\Z n    ]^] I    ����  0 killpleasewait KillPleaseWait�  �  ^  f     [ ' ! Close the PleaseWait Application   \ �__ B   C l o s e   t h e   P l e a s e W a i t   A p p l i c a t i o nY `a` I   �
�	�
�
 .miscactvnull��� ��� null�	  �  a bcb Q    Pdefd r    *ghg I   (�ij
� .sysodlogaskr        TEXTi m    kk �ll L P l e a s e   t y p e   y o u r   c u r r e n t   M a c   p a s s w o r d :j �mn
� 
dtxtm m    oo �pp  n �qr
� 
btnsq J    ss tut m    vv �ww  Q u i tu x�x m    yy �zz  C o n t i n u e�  r �{|
� 
dflt{ m    }} �~~  C o n t i n u e| ��
� 
disp l   "��� � 4    "���
�� 
psxf� o    !���� *0 macpasswordiconpath MacPasswordIconPath�  �   � �����
�� 
htxt� m   # $��
�� boovtrue��  h o      ����  0 askforpassword askForPassworde R      ������
�� .ascrerr ****      � ****��  ��  f r   2 P��� I  2 N����
�� .sysodlogaskr        TEXT� m   2 5�� ��� L P l e a s e   t y p e   y o u r   c u r r e n t   M a c   p a s s w o r d :� ����
�� 
dtxt� m   6 9�� ���  � ����
�� 
btns� J   : B�� ��� m   : =�� ���  Q u i t� ���� m   = @�� ���  C o n t i n u e��  � ����
�� 
dflt� m   C F�� ���  C o n t i n u e� �����
�� 
htxt� m   G H��
�� boovtrue��  � o      ����  0 askforpassword askForPasswordc ��� Z   Q f������� =  Q Z��� n   Q V��� 1   R V��
�� 
bhit� o   Q R����  0 askforpassword askForPassword� m   V Y�� ���  Q u i t� I   ] b�������� $0 addtodockandquit AddToDockAndQuit��  ��  ��  ��  � ��� l  g g��������  ��  ��  � ��� r   g v��� c   g p��� n   g l��� 1   h l��
�� 
ttxt� o   g h����  0 askforpassword askForPassword� m   l o��
�� 
TEXT� o      ���� 0 userslocalpassword  � ��� l  w w������  �   Check for empty entry   � ��� ,   C h e c k   f o r   e m p t y   e n t r y� ��� r   w ���� I  w ������
�� .corecnte****       ****� o   w |���� 0 userslocalpassword  ��  � o      ���� 00 validatepasswordlength validatePasswordLength� ��� Z   � �������� =  � ���� o   � ����� 00 validatepasswordlength validatePasswordLength� m   � �����  � n  � ���� I   � ��������� 00 promptforlocalpassword promptForLocalPassword��  ��  �  f   � ���  ��  � ��� l  � �������  � H B Validate the user's password against the local Directory Service    � ��� �   V a l i d a t e   t h e   u s e r ' s   p a s s w o r d   a g a i n s t   t h e   l o c a l   D i r e c t o r y   S e r v i c e  � ��� Q   � ����� k   � ��� ��� l  � �������  � M G Check the passwords validity against the local DirectoryService node.    � ��� �   C h e c k   t h e   p a s s w o r d s   v a l i d i t y   a g a i n s t   t h e   l o c a l   D i r e c t o r y S e r v i c e   n o d e .  � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 dscl  � 1   � ���
�� 
spac� m   � ��� ���  / S e a r c h� 1   � ���
�� 
spac� m   � ��� ���  - a u t h o n l y� 1   � ���
�� 
spac� o   � ����� 0 loggedinuser  � 1   � ���
�� 
spac� l  � ������� n   � ���� 1   � ���
�� 
strq� o   � ����� 0 userslocalpassword  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� I  � �������
�� .miscactvnull��� ��� null��  ��  � ��� r   � ���� I  � �����
�� .sysodisAaleR        TEXT� m   � ��� ��� , A u t h e n t i c a t i o n   F a i l e d :� ����
�� 
mesS� m   � ��� ��� T h e   c u r r e n t   M a c   p a s s w o r d   y o u   e n t e r e d   i s   i n c o r r e c t .     P l e a s e   b e   s u r e   y o u   a r e   e n t e r i n g   t h e   p a s s w o r d   t h a t   i s   u s e d   t o   l o g   i n t o   y o u r   M a c .� ����
�� 
btns� J   � ��� ���� m   � ��� �    T r y   A g a i n��  � ��
�� 
dflt m   � � �  T r y   A g a i n ����
�� 
as A m   � ���
�� EAlTwarN��  � o      ���� 80 askforlocalpasswordfailure askForLocalPasswordFailure� �� l  � �	 n  � �

 I   � ��������� 00 promptforlocalpassword promptForLocalPassword��  ��    f   � �   Restart Loop   	 �    R e s t a r t   L o o p��  � �� L   � � m   � ���
�� boovtrue��  T  l     ����   "  Updates for uppercase issue    � 8   U p d a t e s   f o r   u p p e r c a s e   i s s u e  i   I      ������ 0 	lowercase 	lowerCase �� o      ���� 0 s  ��  ��   k     =  r      m      �   4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z o      ���� 0 uc   !"! r    #$# m    %% �&& 4 a b c d e f g h i j k l m n o p q r s t u v w x y z$ o      ���� 0 lc  " '(' Y    4)��*+��) k    /,, -.- r    /0/ n    121 4    ��3
�� 
cha 3 o    ���� 0 i  2 o    ���� 0 uc  0 n     454 1    ��
�� 
txdl5 1    ��
�� 
ascr. 676 r     898 n    :;: 2   ��
�� 
citm; o    ���� 0 s  9 o      ���� 0 s  7 <=< r   ! )>?> n   ! %@A@ 4   " %��B
�� 
cha B o   # $���� 0 i  A o   ! "���� 0 lc  ? n     CDC 1   & (��
�� 
txdlD 1   % &��
�� 
ascr= E��E r   * /FGF c   * -HIH o   * +���� 0 s  I m   + ,��
�� 
ctxtG o      ���� 0 s  ��  �� 0 i  * m    ���� + m    ���� ��  ( JKJ r   5 :LML m   5 6NN �OO  M n     PQP 1   7 9��
�� 
txdlQ 1   6 7��
�� 
ascrK R��R L   ; =SS o   ; <���� 0 s  ��   TUT l     ��������  ��  ��  U VWV l     ��XY��  X : 4 promptForUnixID(): Display a dialog to get unix id    Y �ZZ h   p r o m p t F o r U n i x I D ( ) :   D i s p l a y   a   d i a l o g   t o   g e t   u n i x   i d  W [\[ l     ��������  ��  ��  \ ]^] l     ��������  ��  ��  ^ _`_ l     ��������  ��  ��  ` aba l     ��������  ��  ��  b cdc l     ��~�}�  �~  �}  d efe i  ghg I      �|�{�z�| "0 promptforunixid promptForUnixID�{  �z  h k     oii jkj l     �ylm�y  l "  Prompt the user for Unix ID   m �nn 8   P r o m p t   t h e   u s e r   f o r   U n i x   I Dk opo r     qrq I    �xst
�x .sysodlogaskr        TEXTs b     uvu m     ww �xx 6 P l e a s e   t y p e   i n   y o u r   U s e r I D :v l 
  y�w�vy o    �u
�u 
ret �w  �v  t �tz{
�t 
dtxtz m    || �}}  { �s~
�s 
btns~ J    
�� ��� m    �� ���  Q u i t� ��r� m    �� ���  C o n t i n u e�r   �q��
�q 
dflt� m    �� ���  C o n t i n u e� �p��o
�p 
disp� l   ��n�m� 4    �l�
�l 
psxf� o    �k�k 0 picturepath PicturePath�n  �m  �o  r o      �j�j 0 askforunixid askForUnixIDp ��� l   �i���i  � / ) Set the unixid property with their input   � ��� R   S e t   t h e   u n i x i d   p r o p e r t y   w i t h   t h e i r   i n p u t� ��� r    %��� n    ��� 1    �h
�h 
ttxt� o    �g�g 0 askforunixid askForUnixID� o      �f�f 
0 unixid  � ��� l  & &�e���e  � . ( Quit if they requested it at this point   � ��� P   Q u i t   i f   t h e y   r e q u e s t e d   i t   a t   t h i s   p o i n t� ��� l  & &�d���d  � 0 * Change the users input value to lowercase   � ��� T   C h a n g e   t h e   u s e r s   i n p u t   v a l u e   t o   l o w e r c a s e� ��� r   & 6��� I   & 0�c��b�c 0 	lowercase 	lowerCase� ��a� o   ' ,�`�` 
0 unixid  �a  �b  � o      �_�_ 
0 unixid  � ��� Z   7 J���^�]� =  7 >��� n   7 :��� 1   8 :�\
�\ 
bhit� o   7 8�[�[ 0 askforunixid askForUnixID� m   : =�� ���  Q u i t� I   A F�Z�Y�X�Z $0 addtodockandquit AddToDockAndQuit�Y  �X  �^  �]  � ��� l  K K�W���W  � &   Check for empty password string   � ��� @   C h e c k   f o r   e m p t y   p a s s w o r d   s t r i n g� ��� r   K V��� I  K T�V��U
�V .corecnte****       ****� o   K P�T�T 
0 unixid  �U  � o      �S�S ,0 validateunixidlength validateUnixIDLength� ��� Z   W f���R�Q� =  W Z��� o   W X�P�P ,0 validateunixidlength validateUnixIDLength� m   X Y�O�O  � l  ] b���� n  ] b��� I   ^ b�N�M�L�N "0 promptforunixid promptForUnixID�M  �L  �  f   ] ^�   Restart Loop   � ���    R e s t a r t   L o o p�R  �Q  � ��� l  g g�K�J�I�K  �J  �I  � ��� I   g l�H�G�F�H .0 promptforunixpassword promptForUnixPassword�G  �F  � ��E� L   m o�� m   m n�D
�D boovtrue�E  f ��� l     �C�B�A�C  �B  �A  � ��� l     �@���@  �    promptForUnixPassword() :   � ��� 4   p r o m p t F o r U n i x P a s s w o r d ( )   :� ��� l     �?�>�=�?  �>  �=  � ��� l     �<�;�:�<  �;  �:  � ��� l     �9�8�7�9  �8  �7  � ��� i  !��� I      �6�5�4�6 .0 promptforunixpassword promptForUnixPassword�5  �4  � k     ��� ��� l    ���� I     �3�2�1�3  0 killpleasewait KillPleaseWait�2  �1  �    Quit progress application   � ��� 4   Q u i t   p r o g r e s s   a p p l i c a t i o n� ��� I   �0�/�.
�0 .miscactvnull��� ��� null�/  �.  � ��� r    '��� I   %�-��
�- .sysodlogaskr        TEXT� m    �� ��� Z P l e a s e   t y p e   i n   y o u r   G e n e n t e c h / R o c h e   P a s s w o r d :� �,��
�, 
dtxt� m    �� ���  � �+��
�+ 
btns� J    �� ��� m    �� ���  Q u i t� ��*� m    �� ���  C o n t i n u e�*  � �) 
�) 
dflt  m     �  C o n t i n u e �(
�( 
disp l   �'�& 4    �%
�% 
psxf o    �$�$ *0 netpasswordiconpath NetPasswordIconPath�'  �&   �#�"
�# 
htxt m     !�!
�! boovtrue�"  � o      � �  (0 askforunixpassword askForUnixPassword� 	
	 l  ( (����  �  �  
  Z   ( ;�� =  ( / n   ( + 1   ) +�
� 
bhit o   ( )�� (0 askforunixpassword askForUnixPassword m   + . �  Q u i t I   2 7���� $0 addtodockandquit AddToDockAndQuit�  �  �  �    l  < <����  �  �    l  < <��   4 . Define the unix pass used later in the script    � \   D e f i n e   t h e   u n i x   p a s s   u s e d   l a t e r   i n   t h e   s c r i p t  r   < G n   < A !  1   = A�
� 
ttxt! o   < =�� (0 askforunixpassword askForUnixPassword o      �� 0 unixpass   "#" l  H H����  �  �  # $%$ l  H H�&'�  & h b Run real time LDAP bind request to validate password against our 1 of our 3 DCs in the .conf file   ' �(( �   R u n   r e a l   t i m e   L D A P   b i n d   r e q u e s t   t o   v a l i d a t e   p a s s w o r d   a g a i n s t   o u r   1   o f   o u r   3   D C s   i n   t h e   . c o n f   f i l e% )�
) Z   H �*+�	,* I   H \�-�� 0 checkbindnow checkBindNow- ./. o   I N�� 
0 unixid  / 010 o   N S�� 0 unixpass  1 2�2 o   S X�� &0 defaultauthdomain DefaultAuthDomain�  �  + L   _ a33 m   _ `�
� boovtrue�	  , k   d �44 565 l  d i7897 n  d i:;: I   e i�� ���  0 killpleasewait KillPleaseWait�   ��  ;  f   d e8    Quit progress application   9 �<< 4   Q u i t   p r o g r e s s   a p p l i c a t i o n6 =>= I  j o������
�� .miscactvnull��� ��� null��  ��  > ?@? r   p �ABA I  p ���CD
�� .sysodisAaleR        TEXTC m   p sEE �FF , A u t h e n t i c a t i o n   F a i l e d :D ��GH
�� 
mesSG m   v yII �JJ h T h e   U s e r I D   a n d / o r   P a s s w o r d   y o u   e n t e r e d   w a s   i n c o r r e c tH ��KL
�� 
btnsK J   z MM N��N m   z }OO �PP  T r y   A g a i n��  L ��QR
�� 
dfltQ m   � �SS �TT  T r y   A g a i nR ��U��
�� 
as AU m   � ���
�� EAlTwarN��  B o      ���� 60 askforunixpasswordfailure askForUnixPasswordFailure@ V��V l  � �WXYW n  � �Z[Z I   � ��������� "0 promptforunixid promptForUnixID��  ��  [  f   � �X   Restart Loop   Y �\\    R e s t a r t   L o o p��  �
  � ]^] l     ��������  ��  ��  ^ _`_ l     ��ab��  a e _ createMacTempUserNow() : Create the temp user as backup and privilage proxy for rest of script   b �cc �   c r e a t e M a c T e m p U s e r N o w ( )   :   C r e a t e   t h e   t e m p   u s e r   a s   b a c k u p   a n d   p r i v i l a g e   p r o x y   f o r   r e s t   o f   s c r i p t` ded l     ��������  ��  ��  e fgf l     ��������  ��  ��  g hih l     ��������  ��  ��  i jkj i  "%lml I      �������� ,0 createmactempusernow createMacTempUserNow��  ��  m k     Knn opo n    qrq I    ��s���� 0 	statusmsg 	StatusMSGs tut m    vv �ww ( c r e a t e M a c T e m p U s e r N o wu x��x m    yy �zz 8 R u n n i n g   c r e a t e M a c T e m p U s e r . s h��  ��  r  f     p {|{ Q    )}~} r    ��� l   ������ b    ��� b    ��� o    ���� &0 createmactempuser createMacTempUser� 1    ��
�� 
spac� o    ���� 0 macauthtmpuserpass  ��  ��  � o      ���� :0 createmactempusernowcommand createMacTempUserNowCommand~ R      ������
�� .ascrerr ****      � ****��  ��   n  " )��� I   # )������� 0 	statusmsg 	StatusMSG� ��� m   # $�� ��� ( c r e a t e M a c T e m p U s e r N o w� ���� m   $ %�� ��� 6 U n a b l e   t o   g e n e r a t e d   c o m m a n d��  ��  �  f   " #| ��� l  * *������  �   Run the command   � ���     R u n   t h e   c o m m a n d� ���� Q   * K���� k   - 9�� ��� r   - 6��� I  - 4����
�� .sysoexecTEXT���     TEXT� o   - .���� :0 createmactempusernowcommand createMacTempUserNowCommand� �����
�� 
badm� m   / 0��
�� boovtrue��  � o      ���� 0 
runcommand 
runCommand� ���� l  7 9���� L   7 9�� m   7 8��
�� boovtrue� , & If the script exited <0 then continue   � ��� L   I f   t h e   s c r i p t   e x i t e d   < 0   t h e n   c o n t i n u e��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   A K�� ��� n  A H��� I   B H������� 0 	statusmsg 	StatusMSG� ��� m   B C�� ��� " c r e a t e M a c T e m p U s e r� ���� m   C D�� ���  C o m m a n d   F a i l e d��  ��  �  f   A B� ���� l  I K���� L   I K�� m   I J��
�� boovfals� , & If the script exited >0 then continue   � ��� L   I f   t h e   s c r i p t   e x i t e d   > 0   t h e n   c o n t i n u e��  ��  k ��� l     ��������  ��  ��  � ��� l     ������  �    checkForFile(fileToCheck)   � ��� 4   c h e c k F o r F i l e ( f i l e T o C h e c k )� ��� l     ������  � Y S Simple sub handler base on shell code rather then more expensive Apple Script code   � ��� �   S i m p l e   s u b   h a n d l e r   b a s e   o n   s h e l l   c o d e   r a t h e r   t h e n   m o r e   e x p e n s i v e   A p p l e   S c r i p t   c o d e� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  &)��� I      ������� 0 checkforfile checkForFile� ���� o      ���� 0 filetocheck fileToCheck��  ��  � k     %�� ��� n    ��� I    ������� 0 	statusmsg 	StatusMSG� ��� m    �� ���  c h e c k F o r F i l e� ���� m    �� ���  R u n n i n g   t e s t   - f��  ��  �  f     � ���� Q    %���� k    �� ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� m    �� ���  t e s t� 1    ��
�� 
spac� m    �� ���  - f� 1    ��
�� 
spac� o    ���� 0 filetocheck fileToCheck��  � ���� L    �� m    ��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   # %�� m   # $��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� l     ������  � k e  DownloadGenePicture() : Gets the Gene picture address from ldap.gene.com and copies and converts it   � ��� �     D o w n l o a d G e n e P i c t u r e ( )   :   G e t s   t h e   G e n e   p i c t u r e   a d d r e s s   f r o m   l d a p . g e n e . c o m   a n d   c o p i e s   a n d   c o n v e r t s   i t� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  �    l     ��������  ��  ��    l     ��������  ��  ��    i  *- I      �������� *0 downloadgenepicture DownloadGenePicture��  ��   k     V 	
	 n     I    ������ 0 	statusmsg 	StatusMSG  m     � & D o w n l o a d G e n e P i c t u r e �� m     � 2 R u n n i n g   g e t U s e r P i c t u r e . s h��  ��    f     
  n    I   	 �������� $0 launchpleasewait LaunchPleaseWait��  ��    f    	  Q    G�� I   >��
�� .sysoexecTEXT���     TEXT b    ,  b    *!"! b    (#$# b    &%&% b    $'(' b    ")*) b    +,+ b    -.- b    /0/ o    ����  0 getuserpicture getUserPicture0 1    ��
�� 
spac. m    11 �22  - u, 1    ��
�� 
spac* o    !���� 
0 unixid  ( 1   " #��
�� 
spac& m   $ %33 �44  - r$ 1   & '�
� 
spac" m   ( )55 �66  - w  m   * +77 �88 < / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y �~9:
�~ 
RAun9 o   - 2�}�} 0 macauthtmpuser  : �|;<
�| 
RApw; o   3 8�{�{ 0 macauthtmpuserpass  < �z=�y
�z 
badm= m   9 :�x
�x boovtrue�y   R      �w�v�u
�w .ascrerr ****      � ****�v  �u  ��   >?> l  H H�t@A�t  @ K E This is where our script is going to drop the converted gene picture   A �BB �   T h i s   i s   w h e r e   o u r   s c r i p t   i s   g o i n g   t o   d r o p   t h e   c o n v e r t e d   g e n e   p i c t u r e? C�sC L   H VDD b   H UEFE b   H QGHG m   H KII �JJ > / L i b r a r y / g I n s t a l l / M a c A D U t i l i t y /H o   K P�r�r 
0 unixid  F m   Q TKK �LL 
 . i c n s�s   MNM l     �q�p�o�q  �p  �o  N OPO l     �nQR�n  Q 0 * checkBindNow(unixid, unixpass, domain) :    R �SS T   c h e c k B i n d N o w ( u n i x i d ,   u n i x p a s s ,   d o m a i n )   :  P TUT l     �m�l�k�m  �l  �k  U VWV l     �jXY�j  X = 7 Perform a LDAP bind to 1 of the 3 DCs ( Logical And )    Y �ZZ n   P e r f o r m   a   L D A P   b i n d   t o   1   o f   t h e   3   D C s   (   L o g i c a l   A n d   )  W [\[ l     �i�h�g�i  �h  �g  \ ]^] l     �f�e�d�f  �e  �d  ^ _`_ i  .1aba I      �cc�b�c 0 checkbindnow checkBindNowc ded o      �a�a 
0 unixid  e fgf o      �`�` 0 unixpass  g h�_h o      �^�^ &0 defaultauthdomain DefaultAuthDomain�_  �b  b k     Oii jkj n    lml I    �]�\�[�] $0 launchpleasewait LaunchPleaseWait�\  �[  m  f     k n�Zn Q    Oopqo k   	 =rr sts I  	 :�Yuv
�Y .sysoexecTEXT���     TEXTu b   	 (wxw b   	 &yzy b   	 ${|{ b   	 "}~} b   	  � b   	 ��� b   	 ��� b   	 ��� b   	 ��� b   	 ��� b   	 ��� b   	 ��� o   	 �X�X 0 	checkbind 	checkBind� 1    �W
�W 
spac� m    �� ���  - u� 1    �V
�V 
spac� o    �U�U 
0 unixid  � 1    �T
�T 
spac� m    �� ���  - p� 1    �S
�S 
spac� l   ��R�Q� n    ��� 1    �P
�P 
strq� o    �O�O 0 unixpass  �R  �Q  ~ 1     !�N
�N 
spac| m   " #�� ���  - dz 1   $ %�M
�M 
spacx o   & '�L�L &0 defaultauthdomain DefaultAuthDomainv �K��
�K 
RAun� o   ) .�J�J 0 macauthtmpuser  � �I��
�I 
RApw� o   / 4�H�H 0 macauthtmpuserpass  � �G��F
�G 
badm� m   5 6�E
�E boovtrue�F  t ��D� L   ; =�� m   ; <�C
�C boovtrue�D  p R      �B�A�@
�B .ascrerr ****      � ****�A  �@  q k   E O�� ��� I   E L�?��>�? 0 	statusmsg 	StatusMSG� ��� m   F G�� ���  c h e c k B i n d N o w� ��=� m   G H�� ���  C o m m a n d   F a i l e d�=  �>  � ��<� L   M O�� m   M N�;
�; boovfals�<  �Z  ` ��� l     �:�9�8�:  �9  �8  � ��� l     �7�6�5�7  �6  �5  � ��� l     �4���4  �   cacheADNow() :   � ���    c a c h e A D N o w ( )   :� ��� l     �3�2�1�3  �2  �1  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-�,�+�-  �,  �+  � ��� i  25��� I      �*�)�(�* "0 runfinalroutine runFinalRoutine�)  �(  � k    /�� ��� r     ��� m     �� ���  r u n F i n a l R o u t i n e� o      �'�' 0 functionname FunctionName� ��� I    �&��%�& 0 	statusmsg 	StatusMSG� ��� o    �$�$ 0 functionname FunctionName� ��#� m    �� ��� ( R u n n i n g   S h e l l   S c r i p t�#  �%  � ��� l   ���� n   ��� I    �"�!� �"  0 killpleasewait KillPleaseWait�!  �   �  f    �    Kill the bordeless window   � ��� 4   K i l l   t h e   b o r d e l e s s   w i n d o w� ��� l   ���� n   ��� I    ���� &0 launchcleanupwait LaunchCleanUpWait�  �  �  f    �   Launch the Final window   � ��� 0   L a u n c h   t h e   F i n a l   w i n d o w� ��� l   ����  �  �  � ��� Q    ����� k    L�� ��� l   ����  � < 6 fixPerms.sh fixes the user permissions on the machine   � ��� l   f i x P e r m s . s h   f i x e s   t h e   u s e r   p e r m i s s i o n s   o n   t h e   m a c h i n e� ��� I   J���
� .sysoexecTEXT���     TEXT� b    8��� b    2��� b    0��� b    *��� b    (��� b    "��� o     �� 0 fixperms fixPerms� 1     !�
� 
spac� o   " '�� 0 loggedinuser  � 1   ( )�
� 
spac� o   * /�� 
0 unixid  � 1   0 1�
� 
spac� o   2 7�� 0 olduid oldUID� ���
� 
RAun� o   9 >�� 0 macauthtmpuser  � ���
� 
RApw� o   ? D�� 0 macauthtmpuserpass  � ���
� 
badm� m   E F�

�
 boovtrue�  �  �	  l  K K����  �  �  �	  � R      ���
� .ascrerr ****      � ****�  �  � k   T �  I   T [��� 0 	statusmsg 	StatusMSG  o   U V� �  0 functionname FunctionName �� m   V W �		 4 C o m m a n d   f i x P e r m s . s h   f a i l e d��  �   

 r   \ _ m   \ ] � 2 F I X _ P E R M I S S I O N S _ A D _ F A I L E D o      ���� 0 errormsg    l  ` `����   W Q sendEmail.sh notifies administrators of errors and other significant information    � �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n �� Q   ` � I  c ���
�� .sysoexecTEXT���     TEXT b   c x b   c v b   c t  b   c n!"! b   c l#$# b   c j%&% o   c h���� 0 	sendemail 	sendEmail& 1   h i��
�� 
spac$ m   j k'' �(( 
 E R R O R" 1   l m��
�� 
spac  o   n s���� 
0 unixid   1   t u��
�� 
spac o   v w���� 0 errormsg   ��)*
�� 
RAun) o   y ~���� 0 macauthtmpuser  * ��+,
�� 
RApw+ o    ����� 0 macauthtmpuserpass  , ��-��
�� 
badm- m   � ���
�� boovtrue��   R      ������
�� .ascrerr ****      � ****��  ��   I   � ���.���� 0 	statusmsg 	StatusMSG. /0/ o   � ����� 0 functionname FunctionName0 1��1 m   � �22 �33 4 E r r o r   r u n n i n g   s e n d E m a i l . s h��  ��  ��  � 454 Q   � �67��6 I  � ���89
�� .sysoexecTEXT���     TEXT8 b   � �:;: b   � �<=< o   � ����� 	0 touch  = 1   � ���
�� 
spac; l  � �>����> n   � �?@? 1   � ���
�� 
strq@ o   � �����  0 thereceiptfile theReceiptFile��  ��  9 ��AB
�� 
RAunA o   � ����� 0 macauthtmpuser  B ��CD
�� 
RApwC o   � ����� 0 macauthtmpuserpass  D ��E��
�� 
badmE m   � ���
�� boovtrue��  7 R      ������
�� .ascrerr ****      � ****��  ��  ��  5 FGF Q   �HI��H I  � ���JK
�� .sysoexecTEXT���     TEXTJ b   � �LML b   � �NON b   � �PQP b   � �RSR b   � �TUT b   � �VWV o   � ����� 0 	sendemail 	sendEmailW 1   � ���
�� 
spacU m   � �XX �YY  S U C C E S SS 1   � ���
�� 
spacQ o   � ����� 
0 unixid  O 1   � ���
�� 
spacM m   � �ZZ �[[  N AK ��\]
�� 
RAun\ o   � ����� 0 macauthtmpuser  ] ��^_
�� 
RApw^ o   � ����� 0 macauthtmpuserpass  _ ��`��
�� 
badm` m   � ���
�� boovtrue��  I R      ������
�� .ascrerr ****      � ****��  ��  ��  G a��a Q  /bc��b I &��de
�� .sysoexecTEXT���     TEXTd n  fgf 1  ��
�� 
strqg l h����h b  iji o  ���� (0 processcompleteapp ProcessCompleteAppj m  kk �ll > / C o n t e n t s / M a c O S / P r o c e s s C o m p l e t e��  ��  e ��mn
�� 
RAunm o  ���� 0 macauthtmpuser  n ��op
�� 
RApwo o   ���� 0 macauthtmpuserpass  p ��q��
�� 
badmq m  !"��
�� boovtrue��  c R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � rsr l     ��������  ��  ��  s tut l     ��������  ��  ��  u vwv l     ��xy��  x   cacheADNow() :   y �zz    c a c h e A D N o w ( )   :w {|{ l     ��������  ��  ��  | }~} l     ��������  ��  ��  ~ � l     ��������  ��  ��  � ��� i  69��� I      �������� 0 
cacheadnow 
cacheADNow��  ��  � k     ��� ��� l     ��������  ��  ��  � ��� I     ������� 0 	statusmsg 	StatusMSG� ��� m    �� ���  c a c h e A D N o w� ���� m    �� ��� ( R u n n i n g   S h e l l   S c r i p t��  ��  � ���� Q    ����� k    4�� ��� l   ������  � z t cacheAD.sh caches the user's Genentech credentials for login after reboot if not plugged into the Genentech network   � ��� �   c a c h e A D . s h   c a c h e s   t h e   u s e r ' s   G e n e n t e c h   c r e d e n t i a l s   f o r   l o g i n   a f t e r   r e b o o t   i f   n o t   p l u g g e d   i n t o   t h e   G e n e n t e c h   n e t w o r k� ���� I   4����
�� .sysoexecTEXT���     TEXT� b    "��� b    ��� b    ��� b    ��� o    ���� 0 cachead cacheAD� 1    ��
�� 
spac� o    ���� 
0 unixid  � 1    ��
�� 
spac� l   !������ n    !��� 1    !��
�� 
strq� o    ���� 0 unixpass  ��  ��  � ����
�� 
RAun� o   # (���� 0 macauthtmpuser  � ����
�� 
RApw� o   ) .���� 0 macauthtmpuserpass  � �����
�� 
badm� m   / 0��
�� boovtrue��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   < ��� ��� I   < C������� 0 	statusmsg 	StatusMSG� ��� m   = >�� ���  c a c h e A D N o w� ���� m   > ?�� ��� 8 C o m m a n d   c a c h e A D N o w . s h   f a i l e d��  ��  � ��� r   D G��� m   D E�� ���  C A C H E _ A D _ F A I L E D� o      ���� 0 errormsg  � ��� l  H H����  � W Q sendEmail.sh notifies administrators of errors and other significant information   � ��� �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n� ��� Q   H ����� I  K r�~��
�~ .sysoexecTEXT���     TEXT� b   K `��� b   K ^��� b   K \��� b   K V��� b   K T��� b   K R��� o   K P�}�} 0 	sendemail 	sendEmail� 1   P Q�|
�| 
spac� m   R S�� ��� 
 E R R O R� 1   T U�{
�{ 
spac� o   V [�z�z 
0 unixid  � 1   \ ]�y
�y 
spac� o   ^ _�x�x 0 errormsg  � �w��
�w 
RAun� o   a f�v�v 0 macauthtmpuser  � �u��
�u 
RApw� o   g l�t�t 0 macauthtmpuserpass  � �s��r
�s 
badm� m   m n�q
�q boovtrue�r  � R      �p�o�n
�p .ascrerr ****      � ****�o  �n  � I   z ��m��l�m 0 	statusmsg 	StatusMSG� ��� m   { ~�� ���  c a c h e A D N o w� ��k� m   ~ ��� ��� 4 E r r o r   r u n n i n g   s e n d E m a i l . s h�k  �l  � ��� n  � ���� I   � ��j�i�h�j  0 killpleasewait KillPleaseWait�i  �h  �  f   � �� ��� n  � ���� I   � ��g��f�g *0 displayerrormessage DisplayErrorMessage� ��e� m   � ��� ���  c a c h e A D�e  �f  �  f   � �� ��� n  � ���� I   � ��d�c�b�d 
0 die Die�c  �b  �  f   � �� ��a� l  � ��`�_�^�`  �_  �^  �a  ��  � ��� l     �]�\�[�]  �\  �[  � ��� l     �Z���Z  �   restoreAccountNow()   � ��� (   r e s t o r e A c c o u n t N o w ( )� � � l     �Y�X�W�Y  �X  �W     l     �V�U�T�V  �U  �T    l     �S�R�Q�S  �R  �Q    i  := I      �P�O�N�P &0 restoreaccountnow restoreAccountNow�O  �N   k     �		 

 l     �M�L�K�M  �L  �K   �J Q     � k    4  n    I    �I�H�G�I $0 launchpleasewait LaunchPleaseWait�H  �G    f      l  	 	�F�F   c ] restoreAccount.sh attempts to restore the original account when there is an AD caching issue    � �   r e s t o r e A c c o u n t . s h   a t t e m p t s   t o   r e s t o r e   t h e   o r i g i n a l   a c c o u n t   w h e n   t h e r e   i s   a n   A D   c a c h i n g   i s s u e �E I  	 4�D
�D .sysoexecTEXT���     TEXT b   	 " b   	    b   	 !"! b   	 #$# b   	 %&% b   	 '(' o   	 �C�C  0 restoreaccount restoreAccount( 1    �B
�B 
spac& o    �A�A 0 userslocalpassword  $ 1    �@
�@ 
spac" o    �?�? 0 loggedinuser    1    �>
�> 
spac o     !�=�= 0 
olduiduser 
oldUIDuser �<)*
�< 
RAun) o   # (�;�; 0 macauthtmpuser  * �:+,
�: 
RApw+ o   ) .�9�9 0 macauthtmpuserpass  , �8-�7
�8 
badm- m   / 0�6
�6 boovtrue�7  �E   R      �5�4�3
�5 .ascrerr ****      � ****�4  �3   k   < �.. /0/ I   < C�21�1�2 0 	statusmsg 	StatusMSG1 232 m   = >44 �55 " r e s t o r e A c c o u n t N o w3 6�06 m   > ?77 �88 @ C o m m a n d   r e s t o r e A c c o u n t . s h   f a i l e d�0  �1  0 9:9 r   D G;<; m   D E== �>> , R E S T O R E _ A C C O U N T _ F A I L E D< o      �/�/ 0 errormsg  : ?@? l  H H�.AB�.  A W Q sendEmail.sh notifies administrators of errors and other significant information   B �CC �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n@ DED Q   H �FGHF I  K r�-IJ
�- .sysoexecTEXT���     TEXTI b   K `KLK b   K ^MNM b   K \OPO b   K VQRQ b   K TSTS b   K RUVU o   K P�,�, 0 	sendemail 	sendEmailV 1   P Q�+
�+ 
spacT m   R SWW �XX 
 E R R O RR 1   T U�*
�* 
spacP o   V [�)�) 
0 unixid  N 1   \ ]�(
�( 
spacL o   ^ _�'�' 0 errormsg  J �&YZ
�& 
RAunY o   a f�%�% 0 macauthtmpuser  Z �$[\
�$ 
RApw[ o   g l�#�# 0 macauthtmpuserpass  \ �"]�!
�" 
badm] m   m n� 
�  boovtrue�!  G R      ���
� .ascrerr ****      � ****�  �  H n  z �^_^ I   { ��`�� 0 	statusmsg 	StatusMSG` aba m   { |cc �dd " r e s t o r e A c c o u n t N o wb e�e m   | }ff �gg 4 E r r o r   r u n n i n g   s e n d E m a i l . s h�  �  _  f   z {E h�h l  � �����  �  �  �  �J   iji l     ����  �  �  j klk l     ����  �  �  l mnm l     �op�  o   migrateAccountNow()   p �qq (   m i g r a t e A c c o u n t N o w ( )n rsr l     ����  �  �  s tut l     ��
�	�  �
  �	  u vwv l     ����  �  �  w xyx i  >Az{z I      ���� &0 migrateaccountnow migrateAccountNow�  �  { k     || }~} l     ��� �  �  �   ~ �� Q     ���� k    0�� ��� n   ��� I    �������� $0 launchpleasewait LaunchPleaseWait��  ��  �  f    � ��� l  	 	������  � { u migrateAccount.sh migrates the local user account to match the login, UID number, and with the approriate privileges   � ��� �   m i g r a t e A c c o u n t . s h   m i g r a t e s   t h e   l o c a l   u s e r   a c c o u n t   t o   m a t c h   t h e   l o g i n ,   U I D   n u m b e r ,   a n d   w i t h   t h e   a p p r o r i a t e   p r i v i l e g e s� ���� I  	 0����
�� .sysoexecTEXT���     TEXT� b   	 ��� b   	 ��� b   	 ��� b   	 ��� o   	 ����  0 migrateaccount migrateAccount� 1    ��
�� 
spac� o    ���� 
0 unixid  � 1    ��
�� 
spac� o    ���� 0 loggedinuser  � ����
�� 
RAun� o    $���� 0 macauthtmpuser  � ����
�� 
RApw� o   % *���� 0 macauthtmpuserpass  � �����
�� 
badm� m   + ,��
�� boovtrue��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   8 �� ��� I   8 ?������� 0 	statusmsg 	StatusMSG� ��� m   9 :�� ��� " m i g r a t e A c c o u n t N o w� ���� m   : ;�� ��� @ C o m m a n d   m i g r a t e A c c o u n t . s h   f a i l e d��  ��  � ��� r   @ C��� m   @ A�� ��� 0 A C C O U N T _ M I G R A T I O N _ F A I L E D� o      ���� 0 errormsg  � ��� l  D D������  � W Q sendEmail.sh notifies administrators of errors and other significant information   � ��� �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n� ��� Q   D }���� I  G n����
�� .sysoexecTEXT���     TEXT� b   G \��� b   G Z��� b   G X��� b   G R��� b   G P��� b   G N��� o   G L���� 0 	sendemail 	sendEmail� 1   L M��
�� 
spac� m   N O�� ��� 
 E R R O R� 1   P Q��
�� 
spac� o   R W���� 
0 unixid  � 1   X Y��
�� 
spac� o   Z [���� 0 errormsg  � ����
�� 
RAun� o   ] b���� 0 macauthtmpuser  � ����
�� 
RApw� o   c h���� 0 macauthtmpuserpass  � �����
�� 
badm� m   i j��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � n  v }��� I   w }������� 0 	statusmsg 	StatusMSG� ��� m   w x�� ���  a d j o i n N o w� ���� m   x y�� ��� 4 E r r o r   r u n n i n g   s e n d E m a i l . s h��  ��  �  f   v w� ���� l  ~ ~��������  ��  ��  ��  ��  y ��� l     ��������  ��  ��  � ��� i  BE��� I      �������  0 decodepassword decodePassword� ���� o      ���� 0 thepassword thePassword��  ��  � k     x�� ��� n    ��� I    ������� 0 	statusmsg 	StatusMSG� ��� m    �� ���  d e c o d e P a s s w o r d� ���� m    �� ���  S t a r t i n g��  ��  �  f     � ��� l   ������  � � �	set myCommmand to "`" & space & "printf" & space & (quoted form of myPassword) & space & "|" & space & openssl & space & "base64" & space & "`"   � ���  	 s e t   m y C o m m m a n d   t o   " ` "   &   s p a c e   &   " p r i n t f "   &   s p a c e   &   ( q u o t e d   f o r m   o f   m y P a s s w o r d )   &   s p a c e   &   " | "   &   s p a c e   &   o p e n s s l   &   s p a c e   &   " b a s e 6 4 "   &   s p a c e   &   " ` "� ��� r    ��� m    	�� ���  � o      ���� 0 
mypassword 
myPassword� ��� r    '��� b    %��� b    #��� b    !   b     b     b     b    	 b    

 b     m     �  e c h o 1    ��
�� 
spac l   ���� n     1    ��
�� 
strq o    ���� 0 thepassword thePassword��  ��  	 1    ��
�� 
spac m     �  | o    ���� 0 openssl   1    ��
�� 
spac m      �  b a s e 6 4� 1   ! "��
�� 
spac� m   # $ �  - d� o      ���� .0 decodepasswordcommand decodePasswordCommand�  Z   ( ?���� o   ( -���� 0 debug Debug n  0 ; I   1 ;������ 0 	statusmsg 	StatusMSG  !  m   1 2"" �##  d e c o d e P a s s w o r d! $��$ l  2 7%����% b   2 7&'& b   2 5()( m   2 3** �++   R u n n i n g   C o m m a n d :) 1   3 4��
�� 
spac' o   5 6���� .0 decodepasswordcommand decodePasswordCommand��  ��  ��  ��    f   0 1��  ��   ,-, Q   @ [./0. r   C J121 I  C H��3��
�� .sysoexecTEXT���     TEXT3 o   C D���� .0 decodepasswordcommand decodePasswordCommand��  2 o      ���� 0 
mypassword 
myPassword/ R      ������
�� .ascrerr ****      � ****��  ��  0 n  R [454 I   S [��6���� 0 	statusmsg 	StatusMSG6 787 m   S T99 �::  d e c o d e P a s s w o r d8 ;��; m   T W<< �== B D e c o d i n g   p a s s w o r d   m a y   h a v e   f a i l e d��  ��  5  f   R S- >?> Z   \ u@A����@ o   \ a���� 0 debug DebugA n  d qBCB I   e q��D���� 0 	statusmsg 	StatusMSGD EFE m   e hGG �HH  d e c o d e P a s s w o r dF I��I l  h mJ����J b   h mKLK m   h kMM �NN " D e c o d e d   P a s s w o r d :L o   k l���� 0 
mypassword 
myPassword��  ��  ��  ��  C  f   d e��  ��  ? O��O L   v xPP o   v w���� 0 
mypassword 
myPassword��  � QRQ l     ��������  ��  ��  R STS l     ��UV��  U   adjoinNow()   V �WW    a d j o i n N o w ( )T XYX l     ��������  ��  ��  Y Z[Z l     ������  �  �  [ \]\ l     ����  �  �  ] ^_^ i  FI`a` I      ���� 0 	adjoinnow 	adjoinNow�  �  a k    ibb cdc r     efe m     gg �hh  a d j o i n N o wf o      �� 0 functionname FunctionNamed iji I    �k�� 0 	statusmsg 	StatusMSGk lml m    nn �oo  c a c h e A D N o wm p�p m    qq �rr D C h e c k i n g   f o r   C e n t r i f y   a n d   r e m o v i n g�  �  j sts Q    +uv�u I   "�wx
� .sysoexecTEXT���     TEXTw m    yy �zz  a d l e a v e   - - f o r c ex �{|
� 
RAun{ o    �� 0 macauthtmpuser  | �}~
� 
RApw} o    �~�~ 0 macauthtmpuserpass  ~ �}�|
�} 
badm m    �{
�{ boovtrue�|  v R      �z�y�x
�z .ascrerr ****      � ****�y  �x  �  t ��� l  , ,�w�v�u�w  �v  �u  � ��� Q   , K���t� I  / B�s��
�s .sysoexecTEXT���     TEXT� m   / 0�� ��� X / u s r / s h a r e / c e n t r i f y d c / b i n / u n i n s t a l l . s h   - n   - e� �r��
�r 
RAun� o   1 6�q�q 0 macauthtmpuser  � �p��
�p 
RApw� o   7 <�o�o 0 macauthtmpuserpass  � �n��m
�n 
badm� m   = >�l
�l boovtrue�m  � R      �k�j�i
�k .ascrerr ****      � ****�j  �i  �t  � ��� l  L L�h�g�f�h  �g  �f  � ��� I   L S�e��d�e 0 	statusmsg 	StatusMSG� ��� m   M N�� ���  a d j o i n N o w� ��c� m   N O�� ��� * R u n n i n g   t h e   a d J o i n . s h�c  �d  � ��� r   T ���� b   T ���� b   T ���� b   T ���� b   T ���� b   T ���� b   T |��� b   T z��� b   T k��� b   T i��� b   T c��� b   T a��� b   T [��� o   T Y�b�b 0 adjoin adJoin� 1   Y Z�a
�a 
spac� o   [ `�`�` 
0 unixid  � 1   a b�_
�_ 
spac� o   c h�^�^ 0 
adbindacct 
ADBindAcct� 1   i j�]
�] 
spac� l  k y��\�[� n   k y��� 1   u y�Z
�Z 
strq� I   k u�Y��X�Y  0 decodepassword decodePassword� ��W� o   l q�V�V 0 
adbindpass 
ADBindPass�W  �X  �\  �[  � 1   z {�U
�U 
spac� o   | ��T�T 0 defaultdomain DefaultDomain� 1   � ��S
�S 
spac� o   � ��R�R $0 defaultcontainer DefaultContainer� 1   � ��Q
�Q 
spac� o   � ��P�P &0 defaultcontroller DefaultController� o      �O�O $0 adjoinnowcommand adjoinNowCommand� ��� Q   � ����� n  � ���� I   � ��N�M�L�N $0 launchpleasewait LaunchPleaseWait�M  �L  �  f   � �� R      �K�J�I
�K .ascrerr ****      � ****�J  �I  � n  � ���� I   � ��H��G�H 0 	statusmsg 	StatusMSG� ��� o   � ��F�F 0 functionname FunctionName� ��E� m   � ��� ��� @ E r r o r   l a u n c h i n g   L a u n c h P l e a s e W a i t�E  �G  �  f   � �� ��� Z   � ����D�C� o   � ��B�B 0 debug Debug� n  � ���� I   � ��A��@�A 0 	statusmsg 	StatusMSG� ��� o   � ��?�? 0 functionname FunctionName� ��>� l  � ���=�<� b   � ���� b   � ���� m   � ��� ���   R u n n i n g   C o m m a n d :� 1   � ��;
�; 
spac� o   � ��:�: $0 adjoinnowcommand adjoinNowCommand�=  �<  �>  �@  �  f   � ��D  �C  � ��� Q   �_���� k   � ��� ��� l  � ��9���9  � M G adJoin.sh joins the computer to the appropriate Active Directory group   � ��� �   a d J o i n . s h   j o i n s   t h e   c o m p u t e r   t o   t h e   a p p r o p r i a t e   A c t i v e   D i r e c t o r y   g r o u p� ��8� I  � ��7��
�7 .sysoexecTEXT���     TEXT� o   � ��6�6 $0 adjoinnowcommand adjoinNowCommand� �5��
�5 
RAun� o   � ��4�4 0 macauthtmpuser  � �3��
�3 
RApw� o   � ��2�2 0 macauthtmpuserpass  � �1��0
�1 
badm� m   � ��/
�/ boovtrue�0  �8  � R      �.�-�,
�. .ascrerr ****      � ****�-  �,  � k   �_�� ��� r   � ���� m   � ��� ��� * C O M P U T E R _ A D J O I N _ I S S U E� o      �+�+ 0 errormsg  � ��� l  � ��*���*  � W Q sendEmail.sh notifies administrators of errors and other significant information   � ��� �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n� ��� Q   �*���� I  ��) 
�) .sysoexecTEXT���     TEXT  b   � b   � b   � b   � �	 b   � �

 b   � � o   � ��(�( 0 	sendemail 	sendEmail 1   � ��'
�' 
spac m   � � � 
 E R R O R	 1   � ��&
�& 
spac o   ��%�% 
0 unixid   1  �$
�$ 
spac o  �#�# 0 errormsg   �"
�" 
RAun o  �!�! 0 macauthtmpuser   � 
�  
RApw o  �� 0 macauthtmpuserpass   ��
� 
badm m  �
� boovtrue�  � R      ���
� .ascrerr ****      � ****�  �  � n !* I  "*��� 0 	statusmsg 	StatusMSG  o  "#�� 0 functionname FunctionName � m  #& � 4 E r r o r   r u n n i n g   s e n d E m a i l . s h�  �    f  !"�  l ++����  �  �     n +0!"! I  ,0����  0 killpleasewait KillPleaseWait�  �  "  f  +,  #$# I 1Y�%&
� .sysodlogaskr        TEXT% m  14'' �((� A n   e r r o r   h a s   o c c u r r e d .   W e   a p o l o g i z e   f o r   t h e   i n c o n v e n i e n c e . 
 
 W e   w e r e   u n a b l e   t o   u p d a t e   y o u r   M a c   c o n f i g u r a t i o n   a t   t h i s   t i m e   a n d   y o u   s h o u l d   c o n t i n u e   t o   u s e   y o u r   p r i o r   M a c   u s e r n a m e   a n d   p a s s w o r d . 
 
 ( A D J O I N   F A I L E D )& �)*
� 
btns) J  7<++ ,�, m  7:-- �..  O K�  * �/0
� 
dflt/ m  ?B11 �22  O K0 �
3�	
�
 
disp3 4  EU�4
� 
alis4 l IT5��5 4  IT�6
� 
psxf6 o  MR�� 0 issueiconpath IssueIconPath�  �  �	  $ 7�7 l Z_89:8 n Z_;<; I  [_��� � 
0 die Die�  �   <  f  Z[9   Quit on error condtion   : �== .   Q u i t   o n   e r r o r   c o n d t i o n�  � >��> I  `i��?���� 0 	statusmsg 	StatusMSG? @A@ o  ab���� 0 functionname FunctionNameA B��B m  beCC �DD   H a n d l e r   C o m p l e t e��  ��  ��  _ EFE l     ��������  ��  ��  F GHG l     ��IJ��  I   moveKerberosNow() :   J �KK (   m o v e K e r b e r o s N o w ( )   :H LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l     ��������  ��  ��  Q RSR i  JMTUT I      �������� "0 movekerberosnow moveKerberosNow��  ��  U k     gVV WXW n    YZY I    ��[���� 0 	statusmsg 	StatusMSG[ \]\ m    ^^ �__  m o v e K e r b e r o s N o w] `��` m    aa �bb . R u n n i n g   m o v e K e r b e r o s . s h��  ��  Z  f     X c��c Q    gdefd k    "gg hih l   ��jk��  j ^ X moveKerberos.sh renames the default Kerberos configuration file to edu.mit.Kerberos.old   k �ll �   m o v e K e r b e r o s . s h   r e n a m e s   t h e   d e f a u l t   K e r b e r o s   c o n f i g u r a t i o n   f i l e   t o   e d u . m i t . K e r b e r o s . o l di m��m I   "��no
�� .sysoexecTEXT���     TEXTn o    ���� 0 movekerberos moveKerberoso ��pq
�� 
RAunp o    ���� 0 macauthtmpuser  q ��rs
�� 
RApwr o    ���� 0 macauthtmpuserpass  s ��t��
�� 
badmt m    ��
�� boovtrue��  ��  e R      ������
�� .ascrerr ****      � ****��  ��  f k   * guu vwv r   * -xyx m   * +zz �{{ : K E R B E R O S _ C O N F I G _ R E N A M E _ F A I L E Dy o      ���� 0 errormsg  w |}| l  . .��~��  ~ W Q sendEmail.sh notifies administrators of errors and other significant information    ��� �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n} ���� Q   . g���� I  1 X����
�� .sysoexecTEXT���     TEXT� b   1 F��� b   1 D��� b   1 B��� b   1 <��� b   1 :��� b   1 8��� o   1 6���� 0 	sendemail 	sendEmail� 1   6 7��
�� 
spac� m   8 9�� ��� 
 E R R O R� 1   : ;��
�� 
spac� o   < A���� 
0 unixid  � 1   B C��
�� 
spac� o   D E���� 0 errormsg  � ����
�� 
RAun� o   G L���� 0 macauthtmpuser  � ����
�� 
RApw� o   M R���� 0 macauthtmpuserpass  � �����
�� 
badm� m   S T��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � n  ` g��� I   a g������� 0 	statusmsg 	StatusMSG� ��� m   a b�� ���  m o v e K e r b e r o s N o w� ���� m   b c�� ��� 4 E r r o r   r u n n i n g   s e n d E m a i l . s h��  ��  �  f   ` a��  ��  S ��� l     �������  ��  �  � ��� l     ����  �   changeKeychainPassNow()   � ��� 0   c h a n g e K e y c h a i n P a s s N o w ( )� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i  NQ��� I      ���� .0 changekeychainpassnow changeKeychainPassNow�  �  � k     Q�� ��� n    ��� I    ���� 0 	statusmsg 	StatusMSG� ��� m    �� ��� * c h a n g e K e y c h a i n P a s s N o w� ��� m    �� ��� : R u n n i n g   c h a n g e K e y c h a i n P a s s . s h�  �  �  f     � ��� l   ���� n   ��� I   	 ���� $0 launchpleasewait LaunchPleaseWait�  �  �  f    	� ( " (Re) Launch Cocoa Progress Helper   � ��� D   ( R e )   L a u n c h   C o c o a   P r o g r e s s   H e l p e r� ��� Q    Q���� k    D�� ��� l   ����  � ` Z changeKeychainPass.sh attempts to update the users login KeyChain to match their password   � ��� �   c h a n g e K e y c h a i n P a s s . s h   a t t e m p t s   t o   u p d a t e   t h e   u s e r s   l o g i n   K e y C h a i n   t o   m a t c h   t h e i r   p a s s w o r d� ��� I   D���
� .sysoexecTEXT���     TEXT� b    2��� b    *��� b    (��� b     ��� b    ��� b    ��� o    �� (0 changekeychainpass changeKeychainPass� 1    �
� 
spac� o    �� 0 loggedinuser  � 1    �
� 
spac� l    '���� n     '��� 1   % '�
� 
strq� o     %�� 0 userslocalpassword  �  �  � 1   ( )�
� 
spac� l  * 1���� n   * 1��� 1   / 1�
� 
strq� o   * /�� 0 unixpass  �  �  � ���
� 
RAun� o   3 8�� 0 macauthtmpuser  � ���
� 
RApw� o   9 >�� 0 macauthtmpuserpass  � ���
� 
badm� m   ? @�
� boovtrue�  �  � R      ���
� .ascrerr ****      � ****�  �  � k   L Q�� ��� r   L O��� m   L M�� ��� ( U P D A T E _ K E Y C H A I N _ P A S S� o      �� 0 errormsg  � ��� l  P P����  � W Q sendEmail.sh notifies administrators of errors and other significant information   � ��� �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n�  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     �� �  �   addFileVaultNow()     � $   a d d F i l e V a u l t N o w ( )�  l     ����  �  �    l     ����  �  �    l     ���~�  �  �~   	 i  RU

 I      �}�|�{�} "0 addfilevaultnow addFileVaultNow�|  �{   k     O  n     I    �z�y�z 0 	statusmsg 	StatusMSG  m     �  a d d F i l e V a u l t N o w �x m     � . R u n n i n g   a d d F i l e V a u l t . s h�x  �y    f       l    n    I   	 �w�v�u�w $0 launchpleasewait LaunchPleaseWait�v  �u    f    	 ( " (Re) Launch Cocoa Progress Helper    �   D   ( R e )   L a u n c h   C o c o a   P r o g r e s s   H e l p e r !�t! Q    O"#$" k    B%% &'& l   �s()�s  ( g a addFileVault.sh attempts to add the user to list of users able to decrypt a FileVault2 partition   ) �** �   a d d F i l e V a u l t . s h   a t t e m p t s   t o   a d d   t h e   u s e r   t o   l i s t   o f   u s e r s   a b l e   t o   d e c r y p t   a   F i l e V a u l t 2   p a r t i t i o n' +�r+ I   B�q,-
�q .sysoexecTEXT���     TEXT, b    0./. b    *010 b    (232 b     454 b    676 b    898 o    �p�p 0 addfilevault addFileVault9 1    �o
�o 
spac7 o    �n�n 
0 unixid  5 1    �m
�m 
spac3 l    ':�l�k: n     ';<; 1   % '�j
�j 
strq< o     %�i�i 0 unixpass  �l  �k  1 1   ( )�h
�h 
spac/ o   * /�g�g 0 loggedinuser  - �f=>
�f 
RAun= o   1 6�e�e 0 macauthtmpuser  > �d?@
�d 
RApw? o   7 <�c�c 0 macauthtmpuserpass  @ �bA�a
�b 
badmA m   = >�`
�` boovtrue�a  �r  # R      �_�^�]
�_ .ascrerr ****      � ****�^  �]  $ k   J OBB CDC r   J MEFE m   J KGG �HH 0 U P D A T E _ F I L E V A U L T 2 _ A C C E S SF o      �\�\ 0 errormsg  D I�[I l  N N�ZJK�Z  J W Q sendEmail.sh notifies administrators of errors and other significant information   K �LL �   s e n d E m a i l . s h   n o t i f i e s   a d m i n i s t r a t o r s   o f   e r r o r s   a n d   o t h e r   s i g n i f i c a n t   i n f o r m a t i o n�[  �t  	 MNM l     �Y�X�W�Y  �X  �W  N OPO l     �V�U�T�V  �U  �T  P QRQ i  VYSTS I      �S�R�Q�S  0 makereceiptnow makeReceiptNow�R  �Q  T k     5UU VWV Q     3XYZX k    $[[ \]\ l   �P^_�P  ^ K E Creates a receipt that Mac AD Utility has been been successfully run   _ �`` �   C r e a t e s   a   r e c e i p t   t h a t   M a c   A D   U t i l i t y   h a s   b e e n   b e e n   s u c c e s s f u l l y   r u n] a�Oa I   $�Nbc
�N .sysoexecTEXT���     TEXTb b    ded b    
fgf o    �M�M 	0 touch  g 1    	�L
�L 
space n   
 hih 1    �K
�K 
strqi o   
 �J�J  0 thereceiptfile theReceiptFilec �Ijk
�I 
RAunj o    �H�H 0 macauthtmpuser  k �Glm
�G 
RApwl o    �F�F 0 macauthtmpuserpass  m �En�D
�E 
badmn m     �C
�C boovtrue�D  �O  Y R      �B�A�@
�B .ascrerr ****      � ****�A  �@  Z n  , 3opo I   - 3�?q�>�? 0 	statusmsg 	StatusMSGq rsr m   - .tt �uu  m a k e R e c e i p t N o ws v�=v m   . /ww �xx D E r r o r   c r e a t i n g   c a s p e r   r e c e i p t   f i l e�=  �>  p  f   , -W yzy l  4 4�<�;�:�<  �;  �:  z {|{ l  4 4�9}~�9  } ; 5 Attempt to send a SUCCESS email to the administrator   ~ � j   A t t e m p t   t o   s e n d   a   S U C C E S S   e m a i l   t o   t h e   a d m i n i s t r a t o r| ��� l  4 4�8���8  � 	 try   � ���  t r y� ��� l  4 4�7���7  � � �	do shell script sendEmail & space & "SUCCESS" & space & unixid & space & "NA" user name macauthtmpuser password userslocalpassword with administrator privileges   � ���B 	 d o   s h e l l   s c r i p t   s e n d E m a i l   &   s p a c e   &   " S U C C E S S "   &   s p a c e   &   u n i x i d   &   s p a c e   &   " N A "   u s e r   n a m e   m a c a u t h t m p u s e r   p a s s w o r d   u s e r s l o c a l p a s s w o r d   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s� ��� l  4 4�6���6  �  on error   � ���  o n   e r r o r� ��� l  4 4�5���5  � = 7	StatusMSG("MakeChanges", "Error running sendEmail.sh")   � ��� n 	 S t a t u s M S G ( " M a k e C h a n g e s " ,   " E r r o r   r u n n i n g   s e n d E m a i l . s h " )� ��� l  4 4�4���4  �  end try   � ���  e n d   t r y� ��3� l  4 4�2�1�0�2  �1  �0  �3  R ��� l     �/�.�-�/  �.  �-  � ��� l     �,���,  �   RebootNow()   � ���    R e b o o t N o w ( )� ��� l     �+�*�)�+  �*  �)  � ��� l     �(�'�&�(  �'  �&  � ��� l     �%�$�#�%  �$  �#  � ��� i  Z]��� I      �"�!� �" 0 	rebootnow 	RebootNow�!  �   � k     ��� ��� l     ����  �   Reactive The Application   � ��� 2   R e a c t i v e   T h e   A p p l i c a t i o n� ��� I    ���
� .miscactvnull��� ��� null�  �  � ��� I   ���
� .sysobeepnull��� ��� long�  �  � ��� l   ����  � 1 + Kill the Cocoa progress helper application   � ��� V   K i l l   t h e   C o c o a   p r o g r e s s   h e l p e r   a p p l i c a t i o n� ��� n   ��� I    ����  0 killpleasewait KillPleaseWait�  �  �  f    � ��� l   ����  �  �  � ��� l   ����  �   Display Dialog   � ���    D i s p l a y   D i a l o g� ��� l   ����  � } w This needs to be a timeout due to the fact that the script will not run after the timeout and we need to copy the logs   � ��� �   T h i s   n e e d s   t o   b e   a   t i m e o u t   d u e   t o   t h e   f a c t   t h a t   t h e   s c r i p t   w i l l   n o t   r u n   a f t e r   t h e   t i m e o u t   a n d   w e   n e e d   t o   c o p y   t h e   l o g s� ��� n   ��� I    ���� 0 killcleanup KillCleanUp�  �  �  f    � ��� Q    ����� Q    n���� k    5�� ��� I   +���
� .sysoexecTEXT���     TEXT� n    '��� 1   % '�

�
 
strq� l   %��	�� b    %��� o    #�� (0 processcompleteapp ProcessCompleteApp� m   # $�� ��� > / C o n t e n t s / M a c O S / P r o c e s s C o m p l e t e�	  �  �  � ��� I   , 3���� 0 	statusmsg 	StatusMSG� ��� m   - .�� ���  R e b o o t N o w� ��� m   . /�� ��� N U s e r   c o n t i n u e d   w i t h   P r o c e s s C o m p l e t e . a p p�  �  � ��� l  4 4����  � $ Contents/MacOS/ProcessComplete   � ��� < C o n t e n t s / M a c O S / P r o c e s s C o m p l e t e�  � R      �� ��
� .ascrerr ****      � ****�   ��  � Q   = n����� k   @ e�� ��� I  @ Y����
�� .sysoexecTEXT���     TEXT� n   @ I��� 1   G I��
�� 
strq� l  @ G������ b   @ G��� o   @ E���� (0 processcompleteapp ProcessCompleteApp� m   E F�� ��� > / C o n t e n t s / M a c O S / P r o c e s s C o m p l e t e��  ��  � ����
�� 
RAun� o   J O���� 0 macauthtmpuser  � �����
�� 
RApw� o   P U���� 0 macauthtmpuserpass  ��  �  ��  I   Z e������ 0 	statusmsg 	StatusMSG  m   [ ^ �  R e b o o t N o w �� m   ^ a � x U s e r   c o n t i n u e d   w i t h   P r o c e s s C o m p l e t e . a p p   w i t h   m a c a u t h t m p   u s e r��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   v �		 

 I  v {������
�� .miscactvnull��� ��� null��  ��    r   | � I  | ���
�� .sysodisAaleR        TEXT m   |  �  M a c A D U t i l i t y ��
�� 
mesS b   � � b   � � b   � � l 	 � ����� m   � � � � Y o u r   M a c   h a s   b e e n   s u c c e s s f u l l y   m i g r a t e d   t o   u s e   y o u r   G e n e n t e c h   o r   R o c h e   U s e r I D   a n d   P a s s w o r d .   Y o u r   M a c   w i l l   n o w   r e b o o t .��  ��   o   � ���
�� 
ret  o   � ���
�� 
ret  l 	 � ����� m   � �   �!! � I M P O R T A N T :   B e   s u r e   t o   u s e   y o u r   G e n e n t e c h   o r   R o c h e   U s e r I D   a n d   P a s s w o r d   t o   l o g   b a c k   i n t o   y o u r   m a c h i n e .��  ��   ��"#
�� 
btns" J   � �$$ %��% m   � �&& �''  R e s t a r t��  # ��(��
�� 
dflt( m   � �)) �**  R e s t a r t��   o      ���� (0 showsuccessmessage showSuccessMessage +��+ I   � ���,���� 0 	statusmsg 	StatusMSG, -.- m   � �// �00  R e b o o t N o w. 1��1 m   � �22 �33 L U s e r   c o n t i n u e d   w i t h   A p p l e S c r i p t   D i a l o g��  ��  ��  � 454 l  � ���67��  6 . ( Updated to not need elevated privilages   7 �88 P   U p d a t e d   t o   n o t   n e e d   e l e v a t e d   p r i v i l a g e s5 9:9 I   � ���;���� 0 	statusmsg 	StatusMSG; <=< m   � �>> �??  R e b o o t N o w= @��@ m   � �AA �BB 0 S e n d i n g   R e b o o t   t o   F i n d e r��  ��  : CDC Q   � �EFGE O   � �HIH I  � �������
�� .fndrrestnull��� ��� null��  ��  I m   � �JJ�                                                                                  MACS  alis    `  SSDee                      �˨H+     0
Finder.app                                                      �	�\2        ����  	                CoreServices    ���      �\��       0   *   )  /SSDee:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D e e  &System/Library/CoreServices/Finder.app  / ��  F R      ������
�� .ascrerr ****      � ****��  ��  G I   � ���K���� 0 	statusmsg 	StatusMSGK LML m   � �NN �OO  R e b o o t N o wM P��P m   � �QQ �RR < E r r o r   s e n d i n g   R e b o o t   t o   F i n d e r��  ��  D S��S Q   � �TU��T I  � ���V��
�� .aevtquitnull��� ��� nullV  f   � ���  U R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � WXW l     �������  ��  �  X YZY i  ^a[\[ I      �]�� &0 removedockiconnow removeDockIconNow] ^�^ o      �� 0 username userName�  �  \ Q     9_`a_ I   *�bc
� .sysoexecTEXT���     TEXTb b    ded b    fgf b    hih b    
jkj o    ��  0 removedockicon removeDockIconk 1    	�
� 
spaci o   
 �� 0 username userNameg 1    �
� 
space n    lml 1    �
� 
strqm l   n��n n    opo 1    �
� 
psxpp o    �� 0 
scriptname 
ScriptName�  �  c �qr
� 
RAunq o    �� 0 macauthtmpuser  r �st
� 
RApws o    $�� 0 macauthtmpuserpass  t �u�
� 
badmu m   % &�
� boovtrue�  ` R      ���
� .ascrerr ****      � ****�  �  a I   2 9�v�� 0 	statusmsg 	StatusMSGv wxw m   3 4yy �zz " r e m o v e D o c k I c o n N o wx {�{ m   4 5|| �}} p A n   e r r o r   o c c u r e d   r u n n i n g   t h e   s h e l l   c o m m a n d   r e m o v e D o c k . s h�  �  Z ~~ l     ����  �  �   ��� l     ����  �  �  � ��� l     ����  �   checkUserNow()   � ���    c h e c k U s e r N o w ( )� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i  be��� I      ���� 0 checkusernow checkUserNow�  �  � Q     !���� k    �� ��� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    
��� o    �� 0 	checkuser 	checkUser� 1    	�
� 
spac� o   
 �� 0 loggedinuser  �  � ��� L    �� m    �
� boovtrue�  � R      ���
� .ascrerr ****      � ****�  �  � L    !�� m     �
� boovfals� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �   checkFileVaultNow()   � ��� (   c h e c k F i l e V a u l t N o w ( )� ��� l     �~�}�|�~  �}  �|  � ��� l     �{�z�y�{  �z  �y  � ��� l     �x�w�v�x  �w  �v  � ��� i  fi��� I      �u�t�s�u &0 checkfilevaultnow checkFileVaultNow�t  �s  � Q     8���� k    �� ��� I   �r��
�r .sysoexecTEXT���     TEXT� o    �q�q  0 checkfilevault checkFileVault� �p��
�p 
RAun� o   	 �o�o 0 macauthtmpuser  � �n��
�n 
RApw� o    �m�m 0 macauthtmpuserpass  � �l��k
�l 
badm� m    �j
�j boovtrue�k  � ��i� L    �� m    �h
�h boovtrue�i  � R      �g�f�e
�g .ascrerr ****      � ****�f  �e  � k   % 8�� ��� l  % %�d�c�b�d  �c  �b  � ��� I  % 2�a��
�a .sysodisAaleR        TEXT� m   % &�� ���  M a c A D U t i l i t y� �`��
�` 
mesS� m   ' (�� ���  
 	 	 
 F i l e V a u l t 2   D i s k   E n c r y p t i o n   i s   s t i l l   e n c r y p t i n g   t h e   l o c a l   d r i v e .     T h i s   p r o c e s s   M U S T   c o m p l e t e   b e f o r e   y o u   c a n   r u n   M a c A D U t i l i t y .� �_��
�_ 
btns� J   ) ,�� ��^� m   ) *�� ���  E x i t�^  � �]��\
�] 
dflt� m   - .�� ���  E x i t�\  � ��� l  3 3�[�Z�Y�[  �Z  �Y  � ��X� n  3 8��� I   4 8�W�V�U�W 
0 die Die�V  �U  �  f   3 4�X  � ��� l     �T�S�R�T  �S  �R  � ��� l     �Q���Q  �   checkUserCentrifyNow()   � ��� .   c h e c k U s e r C e n t r i f y N o w ( )� ��� l     �P�O�N�P  �O  �N  � ��� l     �M�L�K�M  �L  �K  � ��� l     �J�I�H�J  �I  �H  � ��� i  jm��� I      �G�F�E�G ,0 checkusercentrifynow checkUserCentrifyNow�F  �E  � Q     ���� k    �� ��� I   �D��C
�D .sysoexecTEXT���     TEXT� b    ��� b    ��� o    �B�B &0 checkusercentrify checkUserCentrify� 1    �A
�A 
spac� o    �@�@ 0 loggedinuser  �C  � ��?� L    �� m    �>
�> boovtrue�?  � R      �=�<�;
�= .ascrerr ****      � ****�<  �;  � L    �� m    �:
�: boovfals� ��� l     �9�8�7�9  �8  �7  � ��� l     �6� �6  �    ChangeScreenSaver(action)     � 4   C h a n g e S c r e e n S a v e r ( a c t i o n )�  l     �5�4�3�5  �4  �3    l     �2�1�0�2  �1  �0    l     �/�.�-�/  �.  �-   	 i  nq

 I      �,�+�, &0 changescreensaver ChangeScreenSaver �* o      �)�) 
0 action  �*  �+   k    �  Z     ��(�' =     o     �&�& 
0 action   m     �  d i s a b l e k    �  l   �%�%   0 * save current settings for screensaver ...    � T   s a v e   c u r r e n t   s e t t i n g s   f o r   s c r e e n s a v e r   . . .  Q     �$ k   	 !! "#" r   	 $%$ c   	 &'& l  	 (�#�"( I  	 �!)� 
�! .sysoexecTEXT���     TEXT) m   	 
** �++ � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   r e a d   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e�   �#  �"  ' m    �
� 
long% o      �� 0 oldssidletime oldSSidleTime# ,�, l   �-.�  -    ... and display sleep ...   . �// 4   . . .   a n d   d i s p l a y   s l e e p   . . .�    R      ���
� .ascrerr ****      � ****�  �  �$   010 Q    323�2 r   ! *454 c   ! (676 l  ! &8��8 I  ! &�9�
� .sysoexecTEXT���     TEXT9 m   ! ":: �;; b p m s e t   - g   |   a w k   ' / ^   d i s p l a y s l e e p / { p r i n t   $ N F ; e x i t } '�  �  �  7 m   & '�
� 
long5 o      �� 0 olddsidletime oldDSidleTime3 R      ���
� .ascrerr ****      � ****�  �  �  1 <=< l  4 4�>?�  >   ... and sleep times   ? �@@ (   . . .   a n d   s l e e p   t i m e s= ABA Q   4 ICD�C r   7 @EFE c   7 >GHG l  7 <I��I I  7 <�
J�	
�
 .sysoexecTEXT���     TEXTJ m   7 8KK �LL T p m s e t   - g   |   a w k   ' / ^   s l e e p / { p r i n t   $ N F ; e x i t } '�	  �  �  H m   < =�
� 
longF o      �� $0 oldsleepidletime oldSleepIdleTimeD R      ���
� .ascrerr ****      � ****�  �  �  B MNM l  J J�OP�  O 8 2 disable screensaver, displaysleep and sleep times   P �QQ d   d i s a b l e   s c r e e n s a v e r ,   d i s p l a y s l e e p   a n d   s l e e p   t i m e sN RSR Q   J [TU�T I  M R�V� 
� .sysoexecTEXT���     TEXTV m   M NWW �XX � / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   - i n t   0�   U R      ������
�� .ascrerr ****      � ****��  ��  �  S YZY Q   \ �[\][ I  _ r��^_
�� .sysoexecTEXT���     TEXT^ m   _ ``` �aa . p m s e t   - a   d i s p l a y s l e e p   0_ ��bc
�� 
RAunb o   a f���� 0 macauthtmpuser  c ��de
�� 
RApwd o   g l���� 0 macauthtmpuserpass  e ��f��
�� 
badmf m   m n��
�� boovtrue��  \ R      ������
�� .ascrerr ****      � ****��  ��  ] Q   z �ghig l  } �jklj I  } ���mn
�� .sysoexecTEXT���     TEXTm m   } ~oo �pp . p m s e t   - a   d i s p l a y s l e e p   0n ��qr
�� 
RAunq o    ����� 0 loggedinuser  r ��st
�� 
RApws o   � ����� 0 userslocalpassword  t ��u��
�� 
badmu m   � ���
�� boovtrue��  k    Do not display run errors   l �vv 4   D o   n o t   d i s p l a y   r u n   e r r o r sh R      ������
�� .ascrerr ****      � ****��  ��  i I   � ���w���� 0 	statusmsg 	StatusMSGw xyx m   � �zz �{{ " C h a n g e S c r e e n S a v e ry |��| m   � �}} �~~ J E r r o r   r u n n i n g   p m s e t   - a   d i s p l a y s l e e p   0��  ��  Z �� Q   � ����� I  � �����
�� .sysoexecTEXT���     TEXT� m   � ��� ���   p m s e t   - a   s l e e p   0� ����
�� 
RAun� o   � ����� 0 macauthtmpuser  � ����
�� 
RApw� o   � ����� 0 macauthtmpuserpass  � �����
�� 
badm� m   � ���
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   � ����� l  � ����� I  � �����
�� .sysoexecTEXT���     TEXT� m   � ��� ���   p m s e t   - a   s l e e p   0� ����
�� 
RAun� o   � ����� 0 loggedinuser  � ����
�� 
RApw� o   � ����� 0 userslocalpassword  � �����
�� 
badm� m   � ���
�� boovtrue��  �    Do not display run errors   � ��� 4   D o   n o t   d i s p l a y   r u n   e r r o r s� R      ������
�� .ascrerr ****      � ****��  ��  � I   � �������� 0 	statusmsg 	StatusMSG� ��� m   � ��� ��� " C h a n g e S c r e e n S a v e r� ���� m   � ��� ��� < E r r o r   r u n n i n g   p m s e t   - a   s l e e p   0��  ��  ��  �(  �'   ��� l  � �������  � M G (Re) Enable the Screen Saver ( Centrify *Should* override this value )   � ��� �   ( R e )   E n a b l e   t h e   S c r e e n   S a v e r   (   C e n t r i f y   * S h o u l d *   o v e r r i d e   t h i s   v a l u e   )� ��� Z   ��������� =  � ���� o   � ����� 
0 action  � m   � ��� ���  e n a b l e� k   ���� ��� l  � �������  �   reset to user settings   � ��� .   r e s e t   t o   u s e r   s e t t i n g s� ��� l  � �������  � � �		do shell script "/usr/bin/defaults -currentHost write com.apple.screensaver idleTime -int " & oldSSidleTime with administrator privileges   � ��� 	 	 d o   s h e l l   s c r i p t   " / u s r / b i n / d e f a u l t s   - c u r r e n t H o s t   w r i t e   c o m . a p p l e . s c r e e n s a v e r   i d l e T i m e   - i n t   "   &   o l d S S i d l e T i m e   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s� ��� Q   �I���� I  �����
�� .sysoexecTEXT���     TEXT� b   ���� m   � �� ��� , p m s e t   - a   d i s p l a y s l e e p  � o   ���� 0 olddsidletime oldDSidleTime� ����
�� 
RAun� o  ���� 0 macauthtmpuser  � ���
� 
RApw� o  	�� 0 macauthtmpuserpass  � ���
� 
badm� m  �
� boovtrue�  � R      ���
� .ascrerr ****      � ****�  �  � Q  I���� l 6���� I 6���
� .sysoexecTEXT���     TEXT� b  $��� m  "�� ��� , p m s e t   - a   d i s p l a y s l e e p  � o  "#�� 0 olddsidletime oldDSidleTime� ���
� 
RAun� o  %*�� 0 loggedinuser  � ���
� 
RApw� o  +0�� 0 userslocalpassword  � ���
� 
badm� m  12�
� boovtrue�  �    Do not display run errors   � ��� 4   D o   n o t   d i s p l a y   r u n   e r r o r s� R      ���
� .ascrerr ****      � ****�  �  � I  >I���� 0 	statusmsg 	StatusMSG� ��� m  ?B�� ��� " C h a n g e S c r e e n S a v e r� ��� m  BE�� ��� F E r r o r   r u n n i n g   p m s e t   - a   d i s p l a y s l e e p�  �  � ��� Q  J����� I Md���
� .sysoexecTEXT���     TEXT� b  MR��� m  MP�� ���  p m s e t   - a   s l e e p  � o  PQ�� $0 oldsleepidletime oldSleepIdleTime� ���
� 
RAun� o  SX�� 0 macauthtmpuser  � ���
� 
RApw� o  Y^�� 0 macauthtmpuserpass  � ���
� 
badm� m  _`�
� boovtrue�  � R      ���
� .ascrerr ****      � ****�  �  � Q  l����� l o����� I o����
� .sysoexecTEXT���     TEXT� b  ot��� m  or�� �    p m s e t   - a   s l e e p  � o  rs�� $0 oldsleepidletime oldSleepIdleTime� �
� 
RAun o  uz�� 0 loggedinuser   �
� 
RApw o  {��� 0 userslocalpassword   ��
� 
badm m  ���
� boovtrue�  �    Do not display run errors   � � 4   D o   n o t   d i s p l a y   r u n   e r r o r s� R      ���
� .ascrerr ****      � ****�  �  � I  ����� 0 	statusmsg 	StatusMSG 	 m  ��

 � " C h a n g e S c r e e n S a v e r	 � m  �� � 8 E r r o r   r u n n i n g   p m s e t   - a   s l e e p�  �  �  ��  ��  � � L  �� m  ���
� boovtrue�  	  l     ����  �  �   � l     ����  �  �  �       v� 4 9� L Q V [ ` e j o t y ~ � � � � � � � � � � � � � � � 
,6@JT^hr|�������������&05:?DPZ�����	 !"#$%&'()*+,-./0123456789:;<=>?@�   t����~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ������������������� 0 scriptversion ScriptVersion� &0 myrequiredversion myRequiredVersion� 0 debug Debug�~ 0 adcheck  �} 0 dscl  �| 	0 touch  �{ 0 opencmd  �z 	0 sleep  �y 0 killall  �x 0 shutdown  �w 
0 logger  �v 	0 idcmd  �u 	0 pmset  �t 0 grep  �s 0 openssl  �r 0 sw_vers  �q 0 sudo  �p 
0 whoami  �o  0 verifyiconpath VerifyIconPath�n 0 issueiconpath IssueIconPath�m 0 dockiconpath DockIconPath�l &0 criticalerroricon CriticalErrorIcon�k 0 defaultdomain DefaultDomain�j &0 defaultauthdomain DefaultAuthDomain�i $0 defaultcontainer DefaultContainer�h &0 defaultcontroller DefaultController�g (0 defaultdomainvalue DefaultDomainValue�f 0 
adbindacct 
ADBindAcct�e 0 
adbindpass 
ADBindPass�d  0 thereceiptfile theReceiptFile�c &0 configurationfile configurationFile�b "0 thisapplication thisApplication�a  0 theoriginaluid theOriginalUID�` &0 uninstallcentrify uninstallCentrify�_ 0 domaincheck domainCheck�^ 0 netcheck netCheck�] 0 adjoin adJoin�\ 0 	addtodock 	addToDock�[ 0 	sendemail 	sendEmail�Z "0 applicationpath applicationPath�Y 0 movekerberos moveKerberos�X  0 migrateaccount migrateAccount�W 0 cachead cacheAD�V 0 fixperms fixPerms�U (0 changekeychainpass changeKeychainPass�T &0 createmactempuser createMacTempUser�S  0 removedockicon removeDockIcon�R 0 	checkuser 	checkUser�Q  0 checkfilevault checkFileVault�P  0 getuserpicture getUserPicture�O 0 	checkbind 	checkBind�N 0 checkforhint checkForHint�M 0 copylogs copyLogs�L  0 genenair2setup GenenAir2setup�K 0 pleasewaitapp PleaseWaitApp�J 0 
cleanupapp 
CleanUpApp�I (0 processcompleteapp ProcessCompleteApp�H 0 addfilevault addFileVault�G  0 restoreaccount restoreAccount�F 0 picturepath PicturePath�E 0 powericonpath PowerIconPath�D "0 networkiconpath NetworkIconPath�C *0 netpasswordiconpath NetPasswordIconPath�B *0 macpasswordiconpath MacPasswordIconPath�A 0 loggedinuser  �@ 0 olduid oldUID�? 0 
scriptname 
ScriptName�> 0 macauthtmpuser  �= 0 macauthtmpuserpass  �< 
0 unixid  �; 0 unixpass  �: 0 userslocalpassword  �9 "0 checkconfigfile checkConfigFile�8  0 checkosversion checkOSVersion�7 0 makechanges MakeChanges�6 0 	statusmsg 	StatusMSG�5 *0 displayerrormessage DisplayErrorMessage�4 
0 die Die�3 $0 addtodockandquit AddToDockAndQuit�2 0 sanitychecks SanityChecks�1 0 checkbattery checkBattery�0 0 
checkifrun 
CheckIfRun�/  0 domainchecknow DomainCheckNow�. 0 startutility StartUtility�- 0 networkcheck NetworkCheck�, (0 networkcheckfailed NetworkCheckFailed�+ &0 launchcleanupwait LaunchCleanUpWait�* $0 launchpleasewait LaunchPleaseWait�)  0 killpleasewait KillPleaseWait�( 0 killcleanup KillCleanUp�' "0 getlocalpicture getLocalPicture�& 00 promptforlocalpassword promptForLocalPassword�% 0 	lowercase 	lowerCase�$ "0 promptforunixid promptForUnixID�# .0 promptforunixpassword promptForUnixPassword�" ,0 createmactempusernow createMacTempUserNow�! 0 checkforfile checkForFile�  *0 downloadgenepicture DownloadGenePicture� 0 checkbindnow checkBindNow� "0 runfinalroutine runFinalRoutine� 0 
cacheadnow 
cacheADNow� &0 restoreaccountnow restoreAccountNow� &0 migrateaccountnow migrateAccountNow�  0 decodepassword decodePassword� 0 	adjoinnow 	adjoinNow� "0 movekerberosnow moveKerberosNow� .0 changekeychainpassnow changeKeychainPassNow� "0 addfilevaultnow addFileVaultNow�  0 makereceiptnow makeReceiptNow� 0 	rebootnow 	RebootNow� &0 removedockiconnow removeDockIconNow� 0 checkusernow checkUserNow� &0 checkfilevaultnow checkFileVaultNow� ,0 checkusercentrifynow checkUserCentrifyNow� &0 changescreensaver ChangeScreenSaver
� .aevtoappnull  �   � ****
� boovfals ���AB�
� "0 checkconfigfile checkConfigFile� �	C�	 C  �� 0 thefile theFile�  A ���� 0 thefile theFile�  0 myerrormessage myErrorMessage� 40 configurationfilemissing configurationFileMissingB !��)@�B�� ��������T����\��`����������� 0 	statusmsg 	StatusMSG
� 
ret 
� 
spac
� 
strq
�  .sysoexecTEXT���     TEXT��  ��  
�� .sysobeepnull��� ��� long
�� .miscactvnull��� ��� null
�� 
mesS
�� 
btns
�� 
dflt
�� 
as A
�� EAlTwarN�� 
�� .sysodisAaleR        TEXT�� 
0 die Die�
 a*��l+ O��%E�O ��%�%�%b  �,%j 	OeW 8X 
 *j O*j O��a a kva a a a a  E�O)j+  ��|����DE����  0 checkosversion checkOSVersion��  ��  D ������ 0 	myversion 	myVersion�� (0 versioncheckpassed versionCheckPassedE �����������������������
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  
�� .ascrcmnt****      � ****
�� 
mesS
�� .sysodisAaleR        TEXT�� T b  �%�%j E�W 
X  �E�O�g �b  E�VO� �j OeY ����%�%�%�%�%�%l Of �������FG���� 0 makechanges MakeChanges��  ��  F  G �����������&��4��B��P��^��l�� 0 	statusmsg 	StatusMSG�� 0 	adjoinnow 	adjoinNow�� &0 changescreensaver ChangeScreenSaver�� "0 movekerberosnow moveKerberosNow�� &0 migrateaccountnow migrateAccountNow�� 0 
cacheadnow 
cacheADNow�� .0 changekeychainpassnow changeKeychainPassNow�� "0 addfilevaultnow addFileVaultNow�� "0 runfinalroutine runFinalRoutine�� �*b  B�l+ O*b  B�l+ O)j+ O*b  B�l+ O)�k+ O*b  B�l+ O)j+ O*b  B�l+ O*b  B�l+ O)j+ O*b  B�l+ O)j+ O*b  B�l+ O)j+ O*b  Ba l+ O)j+ O*b  Ba l+ O)j+ O*b  Ba l+ Oe �������HI���� 0 	statusmsg 	StatusMSG�� ��J�� J  ������ 0 functionname FunctionName�� 0 statusmessage StatusMessage��  H ������������ 0 functionname FunctionName�� 0 statusmessage StatusMessage�� 0 logname LogName�� 0 logfile LogFile�� (0 nonauthloglocation NonAuthLogLocationI ����������������������������*,13[{}�����
�� 
spac
�� 
strq
�� 
RAun
�� 
RApw
�� 
badm�� 
�� .sysoexecTEXT���     TEXT��  ��  �� 
�� .ascrcmnt****      � ****��>�E�O�%E�O v 6��%�%�%��,%b  B%�%�%�%�%�%�%�b  C�b  D�e� OPW <X  ��%a %�%a �,%b  B%�%�%�%�%a %�%�b  C�b  Da  W �X   <a �%a %�%a �,%b  B%�%�%�%�%a %�%�b  @�b  G�e� W jX   (b  
�%�a �,%b  B%�%�%�%�%�,%j W <X  a �%a %�%a �,%b  B%�%�%�%�%a %�b  B%a %�,%j Ob  B�%�%�%�%j  �������KL��� *0 displayerrormessage DisplayErrorMessage�� �M� M  �� 0 
errorvalue 
errorValue��  K �� 0 
errorvalue 
errorValueL �������������� 0 	statusmsg 	StatusMSG
� .sysobeepnull��� ��� long
� .miscactvnull��� ��� null
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� &)��%l+ O*j O*j O�%�%��kv���  ����NO�� 
0 die Die�  �  N  O ����������������� 0 	statusmsg 	StatusMSG�  0 killpleasewait KillPleaseWait
� .aevtquitnull��� ��� null
� 
errn���
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT�  �  
� 
RAun
� 
RApw
� 
badm� � l)��l+ O)j+ O) *j UO)��lhO b  �%b  B�,%j 	W 4X 
  &b  �%b  B�,%�b  C�b  D�e� 	W X 
 h �	9��PQ�� $0 addtodockandquit AddToDockAndQuit�  �  P  Q #	B	E������	a	d	o	r���	�	�	�	�	�	��	��	��	����������	�	�� 0 	statusmsg 	StatusMSG
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT�  �  �  0 killpleasewait KillPleaseWait� 
� .miscactvnull��� ��� null
� 
ret 
� 
btns
� 
dflt
� 
disp
� 
alis
� 
psxf�� 
�� .sysodlogaskr        TEXT�� 
0 die Die� �)��l+ O  b  %�%b  @%�%b  �,%j W X  *��l+ O)��l+ O)j+ O ��n*j O � *j UW X  hO 8b  �%a %�%a %�%b  %�%b  �,%�%a %�%a %j W X  hOa _ %_ %a %a a kva a a *a *a b  /E/a  oW X  )j+  O)a !a "l+ O)j+   ��	�����RS���� 0 sanitychecks SanityChecks��  ��  R ���� &0 notanadminwarning notAnAdminWarningS 	���	�
 ��
��

��
������
�� .sysoexecTEXT���     TEXT
�� 
mesS
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT�� 
0 die Die�� %�j � �����kv��� E�O)j+ Y h ��
��~TU�}�� 0 checkbattery checkBattery�  �~  T �|�{�z�| *0 checkbatterycommand checkBatteryCommand�{  0 onbatterypower onBatteryPower�z 0 powermessage powerMessageU #�y
2
4
8�x
A
I�w�v�u�t�s�r
b�q
i
l�p
p�o�n�m�l�k
}
�
�
��j�i
�
�
�
�
�
�y 
spac
�x 
strq�w 0 	statusmsg 	StatusMSG
�v .sysoexecTEXT���     TEXT�u  �t  
�s .sysobeepnull��� ��� long
�r .miscactvnull��� ��� null
�q 
btns
�p 
dflt
�o 
disp
�n 
psxf�m 
�l .sysodlogaskr        TEXT
�k 
bhit
�j .sysodelanull��� ��� nmbr�i 0 checkbattery checkBattery�} �b  �%�%�%b  %�%�%�%��,%E�O)���%�%l+ O �j E�W �X 	 
*j O*j O���a lva a a *a b  </a  E�O�a ,a   )a a l+ Oa j O*j+ Y hO�a ,a   )a a  l+ OfY hO)a !a "l+ Oe �h
��g�fVW�e�h 0 
checkifrun 
CheckIfRun�g  �f  V �d�c�b�d .0 userisalreadycomplete userIsAlreadyComplete�c .0 userisalreadycentrify userIsAlreadyCentrify�b  0 successwarning SuccessWarningW �a
�
��`�_�^�]�\�[#�Z>�YB�XH�WK�V�U�T
�a .miscactvnull��� ��� null�` 0 	statusmsg 	StatusMSG�_ 0 checkusernow checkUserNow
�^ 
spac
�] .sysoexecTEXT���     TEXT�\  �[  �Z ,0 checkusercentrifynow checkUserCentrifyNow
�Y 
mesS
�X 
btns
�W 
dflt�V 
�U .sysodisAaleR        TEXT�T 
0 die Die�e �*j  O)��l+ O*j+  fE�Y eE�OPO b  �%�%j W X  	hO b  �%�%j W X  	hO b  �%�%j W X  	hO*j+  eE�Y fE�O� $���a a kva a a  E�O)j+ Y eOP �Sd�R�QXY�P�S  0 domainchecknow DomainCheckNow�R  �Q  X �O�N�O *0 secondarycontroller SecondaryController�N &0 tertiarycontoller TertiaryContollerY 0�M�L�K�J�I�H�G�F}�������������������$*/5>DJPV\bgtw�E�M $0 launchpleasewait LaunchPleaseWait
�L 
RAun
�K 
RApw
�J 
badm�I 
�H .sysoexecTEXT���     TEXT�G  �F  �E 0 	statusmsg 	StatusMSG�P�)j+  O b  "�b  C�b  D�e� W X  hO ��b  C�b  D�e� Ec  W X  hOnb  �  @�Ec  O�Ec  O�Ec  O�Ec  O�E�O�E�Oa Ec  Oa Ec  Y b  a   La Ec  Oa Ec  Oa Ec  Oa Ec  Oa E�Oa E�Oa Ec  Oa Ec  Y �b  a   La Ec  Oa Ec  Oa Ec  Oa Ec  Oa  E�Oa !E�Oa "Ec  Oa #Ec  Y tb  a $  La %Ec  Oa &Ec  Oa 'Ec  Oa (Ec  Oa )E�Oa *E�Oa +Ec  Oa ,Ec  Y b  k  *a -a .l+ /OfY hOeW X  h  �D��C�BZ[�A�D 0 startutility StartUtility�C  �B  Z  [ �@�?�>��=��<���;��:�9�8�7���6�5�4
�@ .miscactvnull��� ��� null�? 
�> .sysobeepnull��� ��� long
�= 
mesS
�< 
btns
�; 
dflt�: 
�9 .sysodisAaleR        TEXT
�8 
rslt
�7 
bhit�6  �5  �4 $0 addtodockandquit AddToDockAndQuit�A L*j  O :�n*j O������lv��� O��,�  fY ��,a   eY hoW X  *j+ ! �3��2�1\]�0�3 0 networkcheck NetworkCheck�2  �1  \  ] �/�.�-���,�+�*�)�(�'�&�%�/ $0 launchpleasewait LaunchPleaseWait�.  �-  �, 0 	statusmsg 	StatusMSG
�+ 
RAun
�* 
RApw
�) 
badm�( 
�' .sysoexecTEXT���     TEXT�& (0 networkcheckfailed NetworkCheckFailed�%  0 killpleasewait KillPleaseWait�0 L 
)j+  W X  *��l+ O b  #�b  C�b  D�e� 
W X  )j+ O)j+ OfOe" �$K�#�"^_�!�$ (0 networkcheckfailed NetworkCheckFailed�#  �"  ^ � �  *0 displaynetworkerror displayNetworkError_ ���a�hk�o����������������  0 killpleasewait KillPleaseWait� 
� .sysobeepnull��� ��� long
� 
btns
� 
dflt
� 
disp
� 
alis
� 
psxf� 
� .sysodlogaskr        TEXT�  �  � $0 addtodockandquit AddToDockAndQuit
� 
bhit� $0 launchpleasewait LaunchPleaseWait� 

� .sysodelanull��� ��� nmbr� 0 networkcheck NetworkCheck�! s*j+  O )�n*j O����lv���*�*�b  =/E/� E�oW X  )j+ O�a ,a   
)j+ Y %�a ,a   )j+ Oa j O)j+ Y h# ����`a�
� &0 launchcleanupwait LaunchCleanUpWait�  �  `  a ���	���������������	 0 	statusmsg 	StatusMSG
� 
spac
� .sysoexecTEXT���     TEXT�  �  
� 
RAun
� 
RApw
� 
badm� �
 �*��l+ O @ b  �%b  7%j W &X  b  �%b  7%�b  C�b  D�e� W VX   b  �%�%�%�%j W :X   $b  �%�%�%�%�b  C�b  D�e� W X  *�a l+ Oe$ � ����bc���  $0 launchpleasewait LaunchPleaseWait��  ��  b  c ������������������BDSU_b�� 0 	statusmsg 	StatusMSG
�� 
spac
�� .sysoexecTEXT���     TEXT��  ��  
�� 
RAun
�� 
RApw
�� 
badm�� �� �*��l+ O @ b  �%b  6%j W &X  b  �%b  6%�b  C�b  D�e� W VX   b  �%�%�%�%j W :X   $b  �%�%�%�%�b  C�b  D�e� W X  *�a l+ Oe% ��y����de����  0 killpleasewait KillPleaseWait��  ��  d  e ������������������������ 0 	statusmsg 	StatusMSG
�� .sysoexecTEXT���     TEXT��  ��  
�� 
RAun
�� 
RApw
�� 
badm�� �� J*��l+ O : 
�j W ,X   ��b  C�b  D�e� W X  *��l+ W X  h& �������fg���� 0 killcleanup KillCleanUp��  ��  f  g ������������������������ 0 	statusmsg 	StatusMSG
�� .sysoexecTEXT���     TEXT��  ��  
�� 
RAun
�� 
RApw
�� 
badm�� �� J*��l+ O : 
�j W ,X   ��b  C�b  D�e� W X  *��l+ W X  h' �������hi���� "0 getlocalpicture getLocalPicture��  ��  h  i ���� ��%')������.1@B���� 0 	statusmsg 	StatusMSG
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  
�� 
TEXT�� M)��l+ O (b  1�%�%�%b  @�,%�%�%�%�%�%�%j 	W X 
 *��l+ O�b  @%�%a &( ��V����jk���� 00 promptforlocalpassword promptForLocalPassword��  ��  j ��������  0 askforpassword askForPassword�� 00 validatepasswordlength validatePasswordLength�� 80 askforlocalpasswordfailure askForLocalPasswordFailurek +����k��o��vy��}���������������������������������������  0 killpleasewait KillPleaseWait
�� .miscactvnull��� ��� null
�� 
dtxt
�� 
btns
�� 
dflt
�� 
disp
�� 
psxf
�� 
htxt�� 

�� .sysodlogaskr        TEXT�  �  � 
� 
bhit� $0 addtodockandquit AddToDockAndQuit
� 
ttxt
� 
TEXT
� .corecnte****       ****� 00 promptforlocalpassword promptForLocalPassword
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT
� 
mesS
� 
as A
� EAlTwarN
� .sysodisAaleR        TEXT�� )j+  O*j O  ������lv���*�b  ?/�e� E�W %X  a �a �a a lv�a �ea  E�O�a ,a   
*j+ Y hO�a ,a &Ec  GOb  Gj E�O�j  
)j+ Y hO 6b  _ %a %_ %a  %_ %b  @%_ %b  Ga !,%j "W 4X  *j Oa #a $a %�a &kv�a 'a (a )a  *E�O)j+ Oe) ���lm�� 0 	lowercase 	lowerCase� �n� n  �� 0 s  �  l ����� 0 s  � 0 uc  � 0 lc  � 0 i  m 	%������N� 
� 
cha 
� 
ascr
� 
txdl
� 
citm
� 
ctxt� >�E�O�E�O +k�kh ��/��,FO��-E�O��/��,FO��&E�[OY��O���,FO�* �h��op�� "0 promptforunixid promptForUnixID�  �  o ��� 0 askforunixid askForUnixID� ,0 validateunixidlength validateUnixIDLengthp w��|�����������������
� 
ret 
� 
dtxt
� 
btns
� 
dflt
� 
disp
� 
psxf� 
� .sysodlogaskr        TEXT
� 
ttxt� 0 	lowercase 	lowerCase
� 
bhit� $0 addtodockandquit AddToDockAndQuit
� .corecnte****       ****� "0 promptforunixid promptForUnixID� .0 promptforunixpassword promptForUnixPassword� p��%�����lv���*�b  ;/� E�O��,Ec  EO*b  Ek+ Ec  EO��,a   
*j+ Y hOb  Ej E�O�j  
)j+ Y hO*j+ Oe+ ����qr�� .0 promptforunixpassword promptForUnixPassword�  �  q ��� (0 askforunixpassword askForUnixPassword� 60 askforunixpasswordfailure askForUnixPasswordFailurer �����������~�}�|�{�z�y�x�wE�vIOS�u�t�s�r�q�  0 killpleasewait KillPleaseWait
� .miscactvnull��� ��� null
� 
dtxt
� 
btns
� 
dflt
� 
disp
�~ 
psxf
�} 
htxt�| 

�{ .sysodlogaskr        TEXT
�z 
bhit�y $0 addtodockandquit AddToDockAndQuit
�x 
ttxt�w 0 checkbindnow checkBindNow
�v 
mesS
�u 
as A
�t EAlTwarN�s 
�r .sysodisAaleR        TEXT�q "0 promptforunixid promptForUnixID� �*j+  O*j O������lv���*�b  >/�e� E�O��,a   
*j+ Y hO�a ,Ec  FO*b  Eb  Fb  m+  eY 5)j+  O*j Oa a a �a kv�a a a a  E�O)j+ , �pm�o�nst�m�p ,0 createmactempusernow createMacTempUserNow�o  �n  s �l�k�l :0 createmactempusernowcommand createMacTempUserNowCommand�k 0 
runcommand 
runCommandt vy�j�i�h�g���f�e���j 0 	statusmsg 	StatusMSG
�i 
spac�h  �g  
�f 
badm
�e .sysoexecTEXT���     TEXT�m L)��l+ O b  -�%b  D%E�W X  )��l+ O ��el 	E�OeW X  )��l+ Of- �d��c�buv�a�d 0 checkforfile checkForFile�c �`w�` w  �_�_ 0 filetocheck fileToCheck�b  u �^�^ 0 filetocheck fileToCheckv 	���]��\��[�Z�Y�] 0 	statusmsg 	StatusMSG
�\ 
spac
�[ .sysoexecTEXT���     TEXT�Z  �Y  �a &)��l+ O ��%�%�%�%j OeW 	X  f. �X�W�Vxy�U�X *0 downloadgenepicture DownloadGenePicture�W  �V  x  y �T�S�R1357�Q�P�O�N�M�L�KIK�T 0 	statusmsg 	StatusMSG�S $0 launchpleasewait LaunchPleaseWait
�R 
spac
�Q 
RAun
�P 
RApw
�O 
badm�N 
�M .sysoexecTEXT���     TEXT�L  �K  �U W)��l+ O)j+ O 2b  1�%�%�%b  E%�%�%�%�%�%�b  C�b  D�e� W X  hOa b  E%a %/ �Jb�I�Hz{�G�J 0 checkbindnow checkBindNow�I �F|�F |  �E�D�C�E 
0 unixid  �D 0 unixpass  �C &0 defaultauthdomain DefaultAuthDomain�H  z �B�A�@�B 
0 unixid  �A 0 unixpass  �@ &0 defaultauthdomain DefaultAuthDomain{ �?�>���=��<�;�:�9�8�7�6���5�? $0 launchpleasewait LaunchPleaseWait
�> 
spac
�= 
strq
�< 
RAun
�; 
RApw
�: 
badm�9 
�8 .sysoexecTEXT���     TEXT�7  �6  �5 0 	statusmsg 	StatusMSG�G P)j+  O 9b  2�%�%�%�%�%�%�%��,%�%�%�%�%�b  C�b  D�e� 
OeW X  *��l+ Of0 �4��3�2}~�1�4 "0 runfinalroutine runFinalRoutine�3  �2  } �0�/�0 0 functionname FunctionName�/ 0 errormsg  ~ ���.�-�,�+�*�)�(�'�&�%�$'2�#XZk�. 0 	statusmsg 	StatusMSG�-  0 killpleasewait KillPleaseWait�, &0 launchcleanupwait LaunchCleanUpWait
�+ 
spac
�* 
RAun
�) 
RApw
�( 
badm�' 
�& .sysoexecTEXT���     TEXT�%  �$  
�# 
strq�10�E�O*��l+ O)j+ O)j+ O 6b  +�%b  @%�%b  E%�%b  A%�b  C�b  D�e� 
OPW NX  *��l+ O�E�O ,b  &�%�%�%b  E%�%�%�b  C�b  D�e� 
W X  *�a l+ O (b  �%b  a ,%�b  C�b  D�e� 
W X  hO 0b  &�%a %�%b  E%�%a %�b  C�b  D�e� 
W X  hO $b  8a %a ,�b  C�b  D�e� 
W X  h1 �"��!� ���" 0 
cacheadnow 
cacheADNow�!  �    �� 0 errormsg  � ����������������������� 0 	statusmsg 	StatusMSG
� 
spac
� 
strq
� 
RAun
� 
RApw
� 
badm� 
� .sysoexecTEXT���     TEXT�  �  �  0 killpleasewait KillPleaseWait� *0 displayerrormessage DisplayErrorMessage� 
0 die Die� �*��l+ O .b  *�%b  E%�%b  F�,%�b  C�b  D�e� 	W gX 
 *��l+ O�E�O ,b  &�%�%�%b  E%�%�%�b  C�b  D�e� 	W X 
 *a a l+ O)j+ O)a k+ O)j+ OP2 ������� &0 restoreaccountnow restoreAccountNow�  �  � ��� 0 
olduiduser 
oldUIDuser� 0 errormsg  � �
�	�������47�=Wcf�
 $0 launchpleasewait LaunchPleaseWait
�	 
spac
� 
RAun
� 
RApw
� 
badm� 
� .sysoexecTEXT���     TEXT�  �  � 0 	statusmsg 	StatusMSG� � 6)j+  Ob  :�%b  G%�%b  @%�%�%�b  C�b  D�e� W NX  *��l+ O�E�O ,b  &�%�%�%b  E%�%�%�b  C�b  D�e� W X  )��l+ OP3 � {���������  &0 migrateaccountnow migrateAccountNow��  ��  � ���� 0 errormsg  � ���������������������������� $0 launchpleasewait LaunchPleaseWait
�� 
spac
�� 
RAun
�� 
RApw
�� 
badm�� 
�� .sysoexecTEXT���     TEXT��  ��  �� 0 	statusmsg 	StatusMSG�� � 2)j+  Ob  )�%b  E%�%b  @%�b  C�b  D�e� W NX  *��l+ O�E�O ,b  &�%�%�%b  E%�%�%�b  C�b  D�e� W X  )��l+ OP4 �������������  0 decodepassword decodePassword�� ����� �  ���� 0 thepassword thePassword��  � �������� 0 thepassword thePassword�� 0 
mypassword 
myPassword�� .0 decodepasswordcommand decodePasswordCommand� ���������"*������9<GM�� 0 	statusmsg 	StatusMSG
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  �� y)��l+ O�E�O��%��,%�%�%b  %�%�%�%�%E�Ob   )���%�%l+ Y hO �j E�W X  )�a l+ Ob   )a a �%l+ Y hO�5 ��a���������� 0 	adjoinnow 	adjoinNow��  ��  � �������� 0 functionname FunctionName�� $0 adjoinnowcommand adjoinNowCommand�� 0 errormsg  � $gnq��y������������������������������'��-��1����������C�� 0 	statusmsg 	StatusMSG
�� 
RAun
�� 
RApw
�� 
badm�� 
�� .sysoexecTEXT���     TEXT��  ��  
�� 
spac��  0 decodepassword decodePassword
�� 
strq�� $0 launchpleasewait LaunchPleaseWait��  0 killpleasewait KillPleaseWait
�� 
btns
�� 
dflt
�� 
disp
�� 
alis
�� 
psxf
�� .sysodlogaskr        TEXT�� 
0 die Die��j�E�O*��l+ O ��b  C�b  D�e� 	W X 
 hO ��b  C�b  D�e� 	W X 
 hO*��l+ Ob  $�%b  E%�%b  %�%*b  k+ a ,%�%b  %�%b  %�%b  %E�O 
)j+ W X 
 )�a l+ Ob   )�a �%�%l+ Y hO ��b  C�b  D�e� 	W X 
 a E�O .b  &�%a %�%b  E%�%�%�b  C�b  D�e� 	W X 
 )�a l+ O)j+ Oa a a kva a a *a *a  b  /E/� !O)j+ "O*�a #l+ 6 ��U���������� "0 movekerberosnow moveKerberosNow��  ��  � ���� 0 errormsg  � ^a�����������z������ 0 	statusmsg 	StatusMSG
�� 
RAun
�� 
RApw
� 
badm� 
� .sysoexecTEXT���     TEXT�  �  
� 
spac�� h)��l+ O b  (�b  C�b  D�e� W DX  	�E�O ,b  &�%�%�%b  E%�%�%�b  C�b  D�e� W X  	)��l+ 7 �������� .0 changekeychainpassnow changeKeychainPassNow�  �  � �� 0 errormsg  � ��������������� 0 	statusmsg 	StatusMSG� $0 launchpleasewait LaunchPleaseWait
� 
spac
� 
strq
� 
RAun
� 
RApw
� 
badm� 
� .sysoexecTEXT���     TEXT�  �  � R)��l+ O)j+ O 8b  ,�%b  @%�%b  G�,%�%b  F�,%�b  C�b  D�e� 
W X  �E�OP8 ������� "0 addfilevaultnow addFileVaultNow�  �  � �� 0 errormsg  � �����������G� 0 	statusmsg 	StatusMSG� $0 launchpleasewait LaunchPleaseWait
� 
spac
� 
strq
� 
RAun
� 
RApw
� 
badm� 
� .sysoexecTEXT���     TEXT�  �  � P)��l+ O)j+ O 6b  9�%b  E%�%b  F�,%�%b  @%�b  C�b  D�e� 
W X  �E�OP9 �T������  0 makereceiptnow makeReceiptNow�  �  �  � ���������tw�
� 
spac
� 
strq
� 
RAun
� 
RApw
� 
badm� 
� .sysoexecTEXT���     TEXT�  �  � 0 	statusmsg 	StatusMSG� 6 &b  �%b  �,%�b  C�b  D�e� W X  )��l+ OP: �������� 0 	rebootnow 	RebootNow�  �  � �� (0 showsuccessmessage showSuccessMessage� &������������~��}�|�{�z�y �x&�w)�v�u/2>AJ�tNQ�s
� .miscactvnull��� ��� null
� .sysobeepnull��� ��� long�  0 killpleasewait KillPleaseWait� 0 killcleanup KillCleanUp
� 
strq
� .sysoexecTEXT���     TEXT� 0 	statusmsg 	StatusMSG�  �~  
�} 
RAun
�| 
RApw�{ 
�z 
mesS
�y 
ret 
�x 
btns
�w 
dflt�v 
�u .sysodisAaleR        TEXT
�t .fndrrestnull��� ��� null
�s .aevtquitnull��� ��� null� �*j  O*j O)j+ O)j+ O X b  8�%�,j O*��l+ 	OPW 8X 
  *b  8�%�,�b  C�b  D� O*a a l+ 	W X 
 hW DX 
 *j  Oa a a _ %_ %a %a a kva a a  E�O*a a l+ 	O*a a  l+ 	O a ! *j "UW X 
 *a #a $l+ 	O 
)j %W X 
 h; �r\�q�p���o�r &0 removedockiconnow removeDockIconNow�q �n��n �  �m�m 0 username userName�p  � �l�l 0 username userName� �k�j�i�h�g�f�e�d�c�by|�a
�k 
spac
�j 
psxp
�i 
strq
�h 
RAun
�g 
RApw
�f 
badm�e 
�d .sysoexecTEXT���     TEXT�c  �b  �a 0 	statusmsg 	StatusMSG�o : ,b  .�%�%�%b  B�,�,%�b  C�b  D�e� W X  	*��l+ < �`��_�^���]�` 0 checkusernow checkUserNow�_  �^  �  � �\�[�Z�Y
�\ 
spac
�[ .sysoexecTEXT���     TEXT�Z  �Y  �] " b  /�%b  @%j OeW 	X  f= �X��W�V���U�X &0 checkfilevaultnow checkFileVaultNow�W  �V  �  � �T�S�R�Q�P�O�N��M��L��K��J�I
�T 
RAun
�S 
RApw
�R 
badm�Q 
�P .sysoexecTEXT���     TEXT�O  �N  
�M 
mesS
�L 
btns
�K 
dflt
�J .sysodisAaleR        TEXT�I 
0 die Die�U 9 b  0�b  C�b  D�e� OeW X  �����kv��� O)j+ > �H��G�F���E�H ,0 checkusercentrifynow checkUserCentrifyNow�G  �F  � �D�D &0 checkusercentrify checkUserCentrify� �C�B�A�@
�C 
spac
�B .sysoexecTEXT���     TEXT�A  �@  �E  ��%b  @%j OeW 	X  f? �?�>�=���<�? &0 changescreensaver ChangeScreenSaver�> �;��; �  �:�: 
0 action  �=  � �9�8�7�6�9 
0 action  �8 0 oldssidletime oldSSidleTime�7 0 olddsidletime oldDSidleTime�6 $0 oldsleepidletime oldSleepIdleTime� *�5�4�3�2:KW`�1�0�/�.oz}�-�����������

�5 .sysoexecTEXT���     TEXT
�4 
long�3  �2  
�1 
RAun
�0 
RApw
�/ 
badm�. �- 0 	statusmsg 	StatusMSG�<���  � �j �&E�OPW X  hO �j �&E�W X  hO �j �&E�W X  hO 
�j W X  hO ��b  C�b  D�e� W .X   ��b  @�b  G�e� W X  *�a l+ O a �b  C�b  D�e� W 2X   a �b  @�b  G�e� W X  *a a l+ Y hO�a   � a �%�b  C�b  D�e� W 4X   a �%�b  @�b  G�e� W X  *a a l+ O a �%�b  C�b  D�e� W 4X   a �%�b  @�b  G�e� W X  *a a l+ Y hOe@ �,��+�*���)
�, .aevtoappnull  �   � ****� k    �� a�� n�� ��� ��� ��� ���  �� .�� <�� J�� X�� f�� t�� ��� ��� ��� ��� ��� ��� ��� ��� ���  �� �� �� &�� 4�� B�� P�� ^�� l�� ��� ��� ��� ��� ��� ��� �� �� 3�� Q�� q�� ��� ��� ��� ��� ��(�(  �+  �*  �  � `g�'�&|�%�$�#�"��!� ����,��:HVdr�����������$2@N\j����~���������������������
�	�@C�^a��|�������������� ���
�' .sysoexecTEXT���     TEXT
�& 
spac
�% 
rtyp
�$ 
TEXT
�# .earsffdralis        afdr
�" 
psxp
�! 
file
�  
pnam
� 
ctxt
� .sysorpthalis        TEXT
� 
strq� &0 checkusercentrify checkUserCentrify
� afdrdlib
� 
from
� fldmfldu� 
� 
alis� $0 userslibrarylogs UsersLibraryLogs�  �  � (0 nonauthloglocation NonAuthLogLocation� 0 	statusmsg 	StatusMSG� 0 sanitychecks SanityChecks�  0 checkosversion checkOSVersion� 
0 die Die� 0 
checkifrun 
CheckIfRun� ,0 createmactempusernow createMacTempUserNow� $0 addtodockandquit AddToDockAndQuit� &0 removedockiconnow removeDockIconNow�
 &0 checkfilevaultnow checkFileVaultNow�	 (0 computerencrypting computerEncrypting� 0 startutility StartUtility� 0 networkcheck NetworkCheck� (0 networkcheckfailed NetworkCheckFailed� 0 checkbattery checkBattery�  0 domainchecknow DomainCheckNow� 00 promptforlocalpassword promptForLocalPassword� "0 promptforunixid promptForUnixID� &0 changescreensaver ChangeScreenSaver�  0 makechanges MakeChanges�� 0 	rebootnow 	RebootNow�)�j Ec  @Ob  �%�%�%b  @%j Ec  AO)��l �,Ec  O� *�)j /�,�&Ec  BUOb  �%�%b  %�%j Ec   Ob  �%Ec  O�j �,a ,Ec  "Oa j �,a ,Ec  #Oa j �,a ,Ec  %Oa j �,a ,Ec  &Oa j �,a ,Ec  $Oa j �,a ,Ec  (Oa j �,a ,Ec  )Oa j �,a ,Ec  *Oa j �,a ,Ec  +Oa j �,a ,Ec  -Oa j �,a ,Ec  ,Oa j �,a ,Ec  .Oa j �,a ,Ec  /Oa j �,a ,Ec  0Oa j �,a ,E`  Oa !j �,a ,Ec  1Oa "j �,a ,Ec  6Oa #j �,Ec  8Oa $j �,Ec  7Oa %j �,a ,Ec  2Oa &j �,a ,Ec  3Oa 'j �,a ,Ec  5Oa (j �,a ,Ec  :Oa )j �,a ,Ec  9O "a *a +a ,��a - a .%a /&E` 0W X 1 2hO _ 0�,E` 3W X 1 2hO*b  Ba 4b   %l+ 5O)j+ 6O*j+ 7 )a 8a 9l+ 5Y )j+ :O*j+ ; )a <a =l+ 5Y )j+ :O*j+ > )a ?a @l+ 5Y )j+ AO*b  @k+ BO*j+ C 
fE` DY 	eE` DOPO*j+ E )a Fa Gl+ 5Y )j+ AO*j+ H )a Ia Jl+ 5Y *j+ KO*j+ L )a Ma Nl+ 5Y )j+ AO*j+ O )a Pa Ql+ 5Y )j+ AO*j+ R )a Sa Tl+ 5Y )j+ AO*j+ U )a Va Wl+ 5Y )j+ AO*a Xk+ Y )a Za [l+ 5Y )j+ AO*j+ \ )a ]a ^l+ 5O)j+ _Y hascr  ��ޭ