   M S B A M L   `   `   `  ���� I  ELauncherWPFOTC, Version=1.5.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LauncherWPFOTCLauncherWPFOTC      LauncherWPFOTC.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:LauncherWPFOTC     -     �Name$  Janela�� � Title$ 	Launcher ��$	��537��$	��984�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Cursor$ Arrow�� � WindowStyle$
 None=� � 	Resources    NoAnimations �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� Padding �� Triggers P� Property P� Value��%�  &	        �� " ��.���  � ��
	 �   ���  � ��
	 �������  � ��	 �� "
 ��.R��� 
���   �$��0q�._��� $��border��#��z��$ 3q�._�� .+��� $��content��$��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��
	 �   ���  � ��
	 �����P�  �@J�IsMouseOver .  . ���  � ��
	 �������  � ��
	 �   �P�  � �� . . ���  � ��
	 �   ���  � ��
	 �  ��.��� ����  �� Opacity$	 0.9Q� j� Stretch$
 None=� �� ImageSource �� *urlbackground+ �� RelativeTransform V� .~���  �� CenterY$	 0.5Q� �� CenterX$	 0.5Q� �� ScaleY$	 1.5Q� �� ScaleX$	 1.5Q���  �� CenterY$	 0.5Q� �� CenterX$	 0.5Q���  �� CenterY$	 0.5Q� �� CenterX$	 0.5Q�T�  T� Y$
 0.25Q� � RowDefinitions �� $	��60* ��� $
��305* ��� $
��141* � � ColumnDefinitions �� $	��60* ��� $
��855* ��� $	��61* �.+��� $��1��$��1��$��0,19,0,0q�����  �� Color$ 	#FF71789E��$	 0.6Q�.+�(  "System.Windows.Controls.WebBrowser  -     Name$ noticiasArea��$	��305���� -     ��Name$  btnJogar��$��Checar!!��$��1��$��
370,25,0,0q�
�������$��18(�$��Source Sans Pro Black)�$��40��$	��Top=�$
��Left=�$	��115��$��2����Z� ���� $
 0.95Q� �� *cor+�� $��1��$
��Left=�$��60��$��	85,40,0,0q�! �� RadiusY$	! 9.5��$��2��" �� RadiusX$	" 9.5��
���   �$	��Top=�$	��660������ $ White��$	 0.3Q�� -   # �Name$# barraProgresso��$��1��$
��Left=�$��25��$��
105,50,0,0q�$��2��$	��Top=�$	��620�����	#4C000000$ J� Opacity$	$ 0.8Q����	#00000000���� *cor+�� -   % ��Name$% label��$��1��$
��Left=�$��
105,74,0,0q�$��2��$	��Top=�$��
Tekton Pro)�$��14(��� -   & ��Name$& comboBox��$��1��$
��Left=�$��
185,20,0,0q�$	��Top=�$	��120�����	#00ACACAC���	#CC0000FF$y�Hidden=�.@��� -   $��DX��$��0��$��Directx���� -   $	��OGL��$��1��$��OpenGL���� -	   $% label1��$��Criado por Savio Macedo��$��0,126,767,-2q�$��2��$	��Top=�$��2�����	#CC000004
�������$��Source Sans Pro Black)��� -
   ' ��Name$' Borda��$
��Left=�$��20��$	��Top=�$	��984��$��3������ ( �� EndPoint$( 0.5,1&�) �� 
StartPoint$) 0.5,0&�.��� * � Color$* 	#B205003C��+ � Offset$+ 1Q�� $+ 0.297Q�* �� *cor+.+��� -   $  btnMinimize��#��[  $�� ��$��943,1,23,45q�$��18������  �� *urlminimize+�� -   $% label2��$��Label��$��10,-4,527,38q�$��2��
�������$
��Bold"��� -   $  btnClose��#��[  $�� ��$��	43,1,1,45q�$��2������  �� *	urlfechar+