GDPC                                                                            /   D   res://.import/Basic_button.png-1882c55b590c3a361ab90f9f6fb42b67.stex �      �       ���i��&(&�¯,z	<   res://.import/Dojo.png-3c1c52037d2b1f08f2bac29090453b32.stex�o             g�o���*^�ܞ�Y��@   res://.import/Shadows.png-dcb31add04c438d3a78be767ef1c5f06.stex @�      �      ��:�%G�l�)�zD��@   res://.import/Shadows2.png-1a10bfa48c2e71394f0b8dbefd5698a6.stex��      �      ��.M���V�$��� H   res://.import/Shadows_baked.png-e62c55c421292de17f39bfe254a0be57.stex    �      �      �JE�p���%�7gyH   res://.import/Shadows_dynamic.png-d594f2641da6e29fcf7bf761f5a23bb6.stex ��      �      [S��� �ڻ�x�D   res://.import/Snow_view.png-1a942d753c55a05529ebaa3f8c949fc2.stex   @�            ؁���B�Q&����D   res://.import/Snowflake.png-4e09bd749e2e29030728f006f2f72f06.stex    �      �       ����~/��P�$�ڽD   res://.import/Snowflake2.png-bdf611d348de35a904ed9dcf272365ee.stex  @�      �       �N�H�0�B�<����'L   res://.import/Swordmaster-Sheet.png-311465e8f2e001689f92320fc61dad74.stex   �?            �����uc쥑�*z<   res://.import/icon.png-077b62b04aff4829aa474a78a3ed8396.stex`�      �      y��-�Tl>���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0�      U      -��`�0��x�5�[P   res://.import/tamashigiri_placeholder.png-9777903913bd4676f3b72deaeb2c3a90.stex �^            r���Hn�Ϊ�k��i   res://Assets/Dojo.tscn  @      �      `+ ly^��˪��X	��,   res://Assets/Enemies/Tamashigiri.gd.remap   �      5       R�\���d�[�fL�$   res://Assets/Enemies/Tamashigiri.gdc       w      �-�_��C�R��
�{U(   res://Assets/Enemies/Tamashigiri.tscn   �      �      H�cȕj�㓭b���   res://Assets/Player.gd.remapP�      (       �ӯO޷�M?�7��;.   res://Assets/Player.gdc `%      k      �B�,SiɅì���3   res://Assets/Player.tscn�0      �      礞˷���XZ|6�N�@   res://Assets/Sprites/Spritesheets/Swordmaster-Sheet.png.import  �[      �      �����r�QP�zo��D   res://Assets/Sprites/Spritesheets/tamashigiri_placeholder.png.import�l      �      4[�z�����'�o���J,   res://Assets/Sprites/Static/Dojo.png.import ��      �      ���d,r�,�˱��� 0   res://Assets/Sprites/Static/Shadows.png.import  �      �      �.��P�~������0   res://Assets/Sprites/Static/Shadows2.png.import P�      �      �}���Π��3��+L4   res://Assets/Sprites/Static/Shadows_baked.png.import�      �      e��au���jM-�k8   res://Assets/Sprites/Static/Shadows_dynamic.png.import  ��      �      RF�j٣��p����10   res://Assets/Sprites/Static/Snow_view.png.importP�      �      �ы�|���\}���0   res://Assets/Sprites/Static/Snowflake.png.import��      �      E�n�`���$ �:�4   res://Assets/Sprites/Static/Snowflake2.png.import   н      �      �^��i�[�ƾ�렓�   res://Levels/World.gd.remap ��      '       ��t��+���ǿM}�8   res://Levels/World.gdc  ��      X      1��U��ڸ���6��   res://Levels/World.tscn ��      6      '� 2@�<s�˚(   res://UI/Buttons/Basic_button.png.import��      �      VkT��Ń)
&��(   res://UI/Buttons/Button_base.gd.remap   ��      1       	��b���g2@ �    res://UI/Buttons/Button_base.gdc��      a       Fkk�q�L��.AZ1$   res://UI/Buttons/Button_base.tscn    �      �      �e�H-�X��k�s�u�Y$   res://UI/Buttons/Button_exit.tscn   ��      �      �e�H-�X��k�s�u�Y   res://UI/Main_menu.gd.remap ��      '       {��kF cn�j9���   res://UI/Main_menu.gdc  ��      �      ^���fR̎���{   res://UI/Main_menu.tscn p�      �      o��\O�"PE(mnD�!�   res://UI/icons/icon.ico @�            �*{��L��)��D���   res://UI/icons/icon.png  �      s      ?����fDW%~� �!    res://UI/icons/icon.png.import  ��      �      F�c#U�:�=TO:u�ޞ   res://default_env.tres  ��      �       um�`�N��<*ỳ�8   res://icon.png.import   ��      �      �����%��(#AB�   res://project.binary��      �      x>��Ծ	H4�j�I�            [gd_scene load_steps=12 format=2]

[ext_resource path="res://Assets/Sprites/Static/Dojo.png" type="Texture" id=1]
[ext_resource path="res://Assets/Sprites/Static/Snow_view.png" type="Texture" id=2]
[ext_resource path="res://Assets/Sprites/Static/Snowflake2.png" type="Texture" id=3]
[ext_resource path="res://Assets/Sprites/Static/Snowflake.png" type="Texture" id=4]
[ext_resource path="res://Assets/Sprites/Static/Shadows.png" type="Texture" id=5]

[sub_resource type="ParticlesMaterial" id=1]
emission_shape = 2
emission_box_extents = Vector3( 100, 1, 1 )
flag_disable_z = true
gravity = Vector3( 0, 5, 0 )
orbit_velocity = 0.0
orbit_velocity_random = 0.0
tangential_accel = 1.0
tangential_accel_random = 1.0
damping = 0.01
angle = 360.4
angle_random = 1.0
scale = 0.52
scale_random = 1.0

[sub_resource type="ParticlesMaterial" id=4]
emission_shape = 2
emission_box_extents = Vector3( 100, 1, 1 )
flag_disable_z = true
gravity = Vector3( 0, 3, 0 )
orbit_velocity = 0.0
orbit_velocity_random = 0.0
tangential_accel = 1.0
tangential_accel_random = 1.0
damping = 0.01
angle = 360.4
angle_random = 1.0
scale = 0.3
scale_random = 1.0

[sub_resource type="ParticlesMaterial" id=5]
emission_shape = 2
emission_box_extents = Vector3( 100, 1, 1 )
flag_disable_z = true
gravity = Vector3( 0, 1, 0 )
orbit_velocity = 0.0
orbit_velocity_random = 0.0
tangential_accel = 1.0
tangential_accel_random = 1.0
damping = 0.01
angle = 360.4
angle_random = 1.0
scale = 0.2
scale_random = 1.0

[sub_resource type="StreamTexture" id=6]
load_path = "res://.import/Snowflake.png-4e09bd749e2e29030728f006f2f72f06.stex"

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 10, 97.4035 )

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 66.7301, 10 )

[node name="Dojo" type="Node2D"]

[node name="Snow_view" type="Sprite" parent="."]
position = Vector2( 190.564, 52.3027 )
texture = ExtResource( 2 )

[node name="Snow" type="Node2D" parent="."]

[node name="Snow_particles" type="Particles2D" parent="Snow"]
position = Vector2( 201.971, 4.95143 )
amount = 250
lifetime = 6.0
preprocess = 30.0
process_material = SubResource( 1 )
texture = ExtResource( 4 )

[node name="Snow_particles2" type="Particles2D" parent="Snow"]
position = Vector2( 201.971, 4.95143 )
amount = 250
lifetime = 8.0
preprocess = 30.0
process_material = SubResource( 4 )
texture = ExtResource( 3 )

[node name="Snow_particles3" type="Particles2D" parent="Snow"]
position = Vector2( 201.971, 4.95143 )
amount = 250
lifetime = 30.0
preprocess = 30.0
process_material = SubResource( 5 )
texture = SubResource( 6 )

[node name="Dojo" type="Sprite" parent="."]
position = Vector2( 200, 150 )
texture = ExtResource( 1 )

[node name="Invisible_walls" type="StaticBody2D" parent="."]

[node name="Left" type="CollisionShape2D" parent="Invisible_walls"]
position = Vector2( 56.7706, 181.744 )
shape = SubResource( 2 )

[node name="Right" type="CollisionShape2D" parent="Invisible_walls"]
position = Vector2( 343.297, 182.339 )
shape = SubResource( 2 )

[node name="Top" type="CollisionShape2D" parent="Invisible_walls"]
position = Vector2( 199.327, 99.2072 )
scale = Vector2( 2.04, 1 )
shape = SubResource( 3 )

[node name="Bottom" type="CollisionShape2D" parent="Invisible_walls"]
position = Vector2( 199.958, 264.233 )
scale = Vector2( 2.04, 1 )
shape = SubResource( 3 )

[node name="Shadows" type="Sprite" parent="."]
position = Vector2( 200.013, 149.989 )
texture = ExtResource( 5 )
region_rect = Rect2( 0, 0, 26.224, 0 )
region_filter_clip = true
      GDSC   
         S      ������������τ�   ��������������Ķ   �������Ӷ���   �����Ӷ�   ���Ҷ���   �����������׶���   ������ζ   �����϶�   ��Ӷ   ���϶���      AnimationPlayer       Sprite               Sprite/Hurtbox_area    $   Sprite/Hurtbox_area/CollisionShape2D      Die                                                         !   	   *   
   3      4      5      6      <      >      ?      @      A      G      N      3YYY5;�  �  PQY5;�  �  P�  QY8P�  Q;�  �  YYY5;�  �  P�  QY5;�  �  P�  QYYYY0�  PQV�  -YYYY0�  PQV�  �  T�	  P�  Q�  �  �  `         [gd_scene load_steps=6 format=2]

[ext_resource path="res://Assets/Sprites/Spritesheets/tamashigiri_placeholder.png" type="Texture" id=1]
[ext_resource path="res://Assets/Enemies/Tamashigiri.gd" type="Script" id=2]

[sub_resource type="CapsuleShape2D" id=2]
radius = 4.05437
height = 41.7913

[sub_resource type="Animation" id=1]
resource_name = "Die"
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
}

[sub_resource type="CapsuleShape2D" id=3]
radius = 2.92422
height = 2.98732

[node name="Tamashigiri" type="KinematicBody2D" groups=[
"enemies",
]]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 0, -31.125 )
texture = ExtResource( 1 )
hframes = 11

[node name="Hurtbox_area" type="Area2D" parent="Sprite"]
position = Vector2( 0.0834274, -0.0834274 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Sprite/Hurtbox_area"]
position = Vector2( 0.0787506, -7.1658 )
shape = SubResource( 2 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Die = SubResource( 1 )

[node name="Movement_collision" type="CollisionShape2D" parent="."]
position = Vector2( 0, 0.16 )
shape = SubResource( 3 )
            GDSC   -      Y   �     ������������τ�   ����Ҷ��   �����޶�   ����������Զ   �������϶���   ��������   �����������Ķ���   ����������Ķ   ������Ŷ   �������Ӷ���   ��������������Ķ   ������������Ӷ��   �������������Ӷ�   ��¶   ����������׶   �����������ζ���   ����Ӷ��   �����϶�   �����Ӷ�   ���������������Ŷ���   ����׶��   ������������������Ŷ   �����ڶ�   ����¶��   ����������������Ҷ��   ������������޶��   �������������Ӷ�   ��������   ����������Ӷ   ζ��   ������������������޶   ϶��   ���������������Ӷ���   ����Ӷ��   ���������Ҷ�   �������Ҷ���   ��������޶��   �����������Ӷ���   ���׶���   ��������������������Ŷ��   �����¶�   ���������¶�   ����������ƶ   ���Ҷ���   ��Ӷ   �     d                             VisualNodes       AnimationPlayer       AnimationTree         parameters/playback       VisualNodes/Damage_area    $   VisualNodes/Damage_area/Slash_hitbox      Idle            Walk      Attack     
     �������?      ui_right      ui_left       ui_down       ui_up         Slash         enemies                                                   '   	   .   
   9      :      ;      D      E      N      W      b      c      d      m      v      w      x      ~            �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2     3     4     5   *  6   +  7   ,  8   -  9   .  :   /  ;   9  <   ?  =   @  >   A  ?   U  @   _  A   `  B   r  C   z  D   {  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   3YY8P�  Q;�  Y8P�  Q;�  �  Y8P�  Q;�  �  YYY;�  �  T�  Y;�  �  T�  Y;�  �  P�  R�  QYYY5;�  �	  P�  QYY5;�
  �	  P�  QY5;�  �	  P�  QY5;�  �  T�  P�  QYYY5;�  �	  P�	  QY5;�  �	  P�
  QYYY5;�  �  YYY0�  PQV�  �  T�  �  �  �  �  P�  R�  Q�  �  �  YY0�  P�  QV�  �  �  �  PQY�  &�  �  T�  V�  �  T�  P�  Q�  (V�  �  T�  P�  QY�  &�  T�  P�  QV�  �  PQY�  �  �  P�  �  �  QYY0�  PQV�  &�  V�  �  P�  P�  R�  QR�  R�  P�  R�  R�  R�  QQYY0�  PQV�  �  �  T�  �  T�  P�  Q�  T�  P�  Q�  �  T�  �  T�  P�  Q�  T�  P�  QY�  �  Y�  �  &�  T�   PQ�  V�  �  �  T�  Y�  �  &P�  T�  �  T�  QP�  T�  �  QV�  �  T�!  T�  �  T�  Y�  &P�  T�  �  T�  Q�  T�  �  V�  �  T�  �  T�  Y�  .�  T�"  PQYY0�  PQV�  &�  �  V�  �  �  �  �  T�#  �  �  �  T�  P�  QYY0�$  PQV�  �  �  YY0�%  PQVY�  )�&  �  T�'  PQV�  ;�(  �&  T�)  PQT�)  PQ�  &�(  T�*  P�  QV�  &�(  T�+  V�  �(  T�,  PQY�  �  T�#  �  Y`     [gd_scene load_steps=17 format=2]

[ext_resource path="res://Assets/Sprites/Spritesheets/Swordmaster-Sheet.png" type="Texture" id=1]
[ext_resource path="res://Assets/Player.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 15.5406

[sub_resource type="CapsuleShape2D" id=2]
radius = 4.49618
height = 12.5008

[sub_resource type="Animation" id=3]
tracks/0/type = "value"
tracks/0/path = NodePath("VisualNodes/Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 12 ]
}

[sub_resource type="Animation" id=4]
length = 0.8
tracks/0/type = "value"
tracks/0/path = NodePath("VisualNodes/Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3 ]
}
tracks/1/type = "method"
tracks/1/path = NodePath(".")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0.1, 0.7 ),
"transitions": PoolRealArray( 1, 1 ),
"values": [ {
"args": [  ],
"method": "slash_damage"
}, {
"args": [  ],
"method": "end_slash"
} ]
}

[sub_resource type="Animation" id=5]
length = 0.6
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("VisualNodes/Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.4 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ 11, 10 ]
}

[sub_resource type="AnimationNodeAnimation" id=6]
animation = "Idle"

[sub_resource type="AnimationNodeAnimation" id=7]
animation = "Slash"

[sub_resource type="AnimationNodeAnimation" id=8]
animation = "Walk"

[sub_resource type="AnimationNodeStateMachineTransition" id=9]

[sub_resource type="AnimationNodeStateMachineTransition" id=10]

[sub_resource type="AnimationNodeStateMachineTransition" id=11]

[sub_resource type="AnimationNodeStateMachineTransition" id=12]
switch_mode = 2

[sub_resource type="AnimationNodeStateMachine" id=13]
states/Idle/node = SubResource( 6 )
states/Idle/position = Vector2( 1321, 225 )
states/Slash/node = SubResource( 7 )
states/Slash/position = Vector2( 1571, 232 )
states/Walk/node = SubResource( 8 )
states/Walk/position = Vector2( 1252, 68 )
transitions = [ "Idle", "Walk", SubResource( 9 ), "Idle", "Slash", SubResource( 10 ), "Walk", "Idle", SubResource( 11 ), "Slash", "Idle", SubResource( 12 ) ]
start_node = "Idle"
graph_offset = Vector2( 10, 60 )

[sub_resource type="AnimationNodeStateMachinePlayback" id=14]

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="VisualNodes" type="Node2D" parent="."]
position = Vector2( 0, -21.052 )

[node name="Sprite" type="Sprite" parent="VisualNodes"]
position = Vector2( -14.5164, -8.34274 )
texture = ExtResource( 1 )
hframes = 15
frame = 12

[node name="Damage_area" type="Area2D" parent="VisualNodes"]

[node name="Slash_hitbox" type="CollisionShape2D" parent="VisualNodes/Damage_area"]
position = Vector2( -35.2064, 6.34048 )
shape = SubResource( 1 )
disabled = true

[node name="Movement_collision" type="CollisionShape2D" parent="."]
rotation = 1.5708
shape = SubResource( 2 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Idle = SubResource( 3 )
anims/Slash = SubResource( 4 )
anims/Walk = SubResource( 5 )

[node name="AnimationTree" type="AnimationTree" parent="."]
tree_root = SubResource( 13 )
anim_player = NodePath("../AnimationPlayer")
active = true
parameters/playback = SubResource( 14 )
            GDST�  ?            �  PNG �PNG

   IHDR  �   ?   ] �   sRGB ���  �IDATx��1�יǿ���t�ò�d���na$�͒؅	���߃�F�)�Ɩ_�ȶ�S��T$=���H�b�-l�p ��Ψr�-�X��f�3�̙sΜ33g�����7w�}W�9����7�)    ��,K��Ϳ���(
ˮ     �vM�           -�          �          `�   dLK`     � �         A0   �|)�~     0�         ��~    ��3a��u����;���A�VQP�    �   X��6�
ֈ��Qc��;�DD��s�$����0�Y    �    `!
ϑbKDD.�����97��iP�%�    ��G0   T�V�8p<恪    ��`    �@Te��r�    ���  `����qMy�K�_z�Q���O�D�p��˯��ZX���#_�,"�U��`�@    @'�H ��!�l��b������=�5��!����_�zn�C��(E�
}��;��?�rYv�w����o��*��s.�G0� �L�w�i�"  fM� �~�d�R�
���2 c,�[������<�7��>.�2�&�ӂ�LA0  �:)�%T$Κ^�������1�Sſ��98>�~z=�k��̸BN�� >3sН��   �W���Ug���WӁ�	ٴ�(D���{�^U���~#��7r��'�	��k	 
>3sѝ   fdoZ�}=jC�=�c�޻�޻u}8�'��|�g�����oli��s��/�2��  �;�z�5  �&t�8R��
�摼L�S��;��o�/_�R�����o�7��w�k��8�G�a���izM��6���0b��������W��ƫ��	@o��X�	�Y� `���L@�Q���K�k�+6��?�?��?{�9y�M����G=��������c�������w�ܫU��U{�/Cz<�ބP�?��������g�aN�g��AS�n̡��A�i@�qI1�4YkӃօ�D�N�J����?D�����w��v���w��'O�ɱ��볿���j���~�޹W�a��}�ڧn�wB�� ���{>�����,u�<.=����+���J@�*�Ӏ�Ӏ�ӑh2I��S�㝜��MM��?u�νR$�@�
~w�w��+�]�	�'B�y��+�7�>�2�!���{r����L�\t�,n���q�0 `~L5���1���"�M�]�tKΜ>U�G��TǠ-;~����?ƾn0@����wr�gפ}k5K� mm�N(����a����P�i�Q�Q����7���)m ȇd�IG%j� Fd�aL4-U��a�֡�DD�H�U�~�ҭ��gN�*���J����XDj� �dz��#`�
���w��'^x�ڶa)ڛ��9����5e�C�����ߗK�Ϡ� d���#���572�fa�=(sjp�$�}�=)I'�z%�B�H�����>��.��a�ȓ��f��Q����q�+9z��J�G��=������юG)R�^��h���h���io�4���+eƇr:�y��/�(�Q�?�J�ma�|,����Ap��g�aK�j��o���F�{4Y6�^�>�>I&��I|�Lm��0XU��x�c�Ў��S���n�"�jTs�T�������z�����w�v���ʌ!d0�� �1}}ƥ�
��9�17O��k\���F���>�s�����_�!��= �0�6�&`��O�'���L��O`��ŜL�y�p��2X-Zv��)�*��O"}�������{Ղq�����9��6�������})���]�ǯ��	eƁ2�y��ϐ�>��ݘ�����`Tl���/��?g��/)ȉվ8|8j���z��K�&ݧݓ]m#ҜL�_��mG��⪼S���1���m6!��-���Uf_Z=�t��0,m�s�!�1��{<��Pf!��>�����3����\�}� 82����cT�e�^cI�C�w��{�5�k��z�����,#dO�O��X��k��*mgi�P.e?!a�֡��>�r�vBf}S��G�&@����8���3������j{+eY���	e��r�y�������i?/f�OH��~�σ�G��[��,�
��k��P���{�@F��r�S:�.lp}�!�E�O4=���S��i<�1�>ȟ��RM"Ϝ>�_n���urH5�ױS�|�ru���Qw�"R�9}�<s�TU���^]��E�s�e�\\8���AïL�;=f��R5���"����N�yNK��el=��H��(˲�y��u��/m_&mB���x��}��3��-�s�f��޹"x�6^�Q��)Èi�ܶ`��W��&ݣ��:�>�5�L]] ��O�W��ጹ��U!����ޑ��9�خ�`�'�[;���H����{"R-'o�s���-&�OF!"�Z��{��H�ǯ��#*�D"?GuoW���ՐPf	�J�<`���>_B��P��p��}�c�)���������Qܿ��X-��x=�r:T^�����}Q��L�O�ː��CO��@�Ιӧ�ǪchN���C�q�'��
�Ͷz0Io�a؄�6
�7��-D��`�嵅����������8B��=��y�����x,A�^�!Zn�c���sU�g��P���:�:w��t�������;��Ӏ��#���f���r�vJǭ�nU��c�=��al!�^����q�ʷ\cm'�C���z��.'��[
=�]��%�"���֡��O�Z��m�B��}�QE�"��N��[[(��g|�0�� ���ԁ}��'��tONtEpK ��A�;�� ��sD%���`ݍj/�%���Ӏ���T苔�ն�����Sr��=���w�oZ��vΨ޴��_�V��1�܇oɑb˻�
�es\|�8�DfH�}a��%j���Cĕ�*���u�XI%d0�� �7��4�I�� 8e�{�5\f�C/�A��H��|h�O��@L��L(�e��R�>��Ğx�Y.����牭�����v�]����_�����a���w?�~�B�� rMs������[���i���	�==�2�@���|���$f�2��>��`$�G!8���Mq����/�5ܕ�s�jġu?y�Ͷ�*A�}*�}"'�"�I�
w�w�	�~Y�ٚ�!dw�X-XV��iu��<�5�Y���`���-9~��>�*�Ew��0ط�m��i����Lz!���{>��"�L��{PY��Tf �R�b�c��/�4�C��M������O��C�r�߭�{�^y�g��+����m�O����"�^MP��_�~>RlY+��6�X� 8mc�l��á�`���k��{zeƁ2����g��>�8����?�y}Ke��޺X\@�;Ap0N�F`�������\r=Ӫ=g��o}��=�2�%��Ӏ���[�e��S��;�I��pu�&P������Z�	��	DNp]��I�՞L�ż��5~�gq��[�v����.r�B����Z�Sg�޹W�\a��0�#��"r����A����V]B>����4��!"C�h������X�At�ץ���'^x���Hݗ���u�P��Ã�Ӏ��cV���okU����>d�X^8�gmM`��ś���o4�)���4QiН�G��.z��A_��8z�������U�-�+�t|��H�2����r~�%�R6cx�JHB������GY��_����3���>
}���B`�ͮ��7�ol3�ۈ��A<��%�duݍ����;��Ӏ��S�)��Idu����w��>\/��k��vY�&4+�m�^�
P�"�[���7lpԗ�m�|Hc��5-Bqi�����{z�P���'�����[�PfMB��=��t�^���*��ƺw��3���1u��߻�1!p��D��zl����Xn�]���ٛ��%M����б�n�51uW���?���Ӏ��`kC����R�Pf�><��W�wў������A�2�K��K����?�Pf͞M���<�߇�u��
%w�w��6tn����;>�gM����S�3H=�i#��OeG*�G���2V���jH� �=G�sݧ����'�p.V�P}�3�������i���Z;h�ލ�PFDj�6B�����Q��a�g������
aS_s]
��soR�ek������ˌ���p�qG�ψ��~[���ԺO��}{�T�6�)=�����t�g�U���K��ۂ�t_Rv�}�}^���-�{������m՟3����<D�����{~�n���~b��꼦�OL�	JW�բ���{:���&?(_B� ���>�m�7�L.���ҥ"X��}gX�kq���bK��ja�$�l{=K�v#���Bg�C���7��@��4�{�������lݡCk��;����m�~�U���8���>.^�e]�S����}�x�\�t�Q��x�{��q�T��m�`T�"�6t]|n���ҷ"�E��_|�;y�'������.�6{rX^�5�^ڷy�*�7n��P̣��A�i@��O&-ǵ֚����>���>��/�a��c�qWO��O�O�/뫵�Ϫ*�l�����������n�6ΑC>'۴^�ض�x���Nl��P�w��uշv�7}}F�E����>����va
Ъ���κ}S�^ö�y_ �ה�7�+GB��}������mR�z�O�LU�y`�3����=,	�����j����}�9!s��U}�1�l��]�I(��>3۫����S<���Iۈ]`����������7n~ը���ޑ7�jT�u1왅5A�p��N���63�[QmO��'�t��Ѱ��m�l[�@_���Y��׶*`x\U׶�����El���<��tշ��5Ѻ?�����+Z3���T7W���Y+��Z4NDR�>���ja�YV-�nq��=�p~��tۖmѯ�Y�>��4�/S��P�{�9�RIZ>݇݇��M�B��f�S;w��P6��h�ż���v �����G��6?�c����/>}m���"o����}z��`B����Lc�/�\֛Uڰ��s��������f��֑��y��s�����1�f��X�J}��(�Ϟ���{?�B�}�۴I��>��0l�?;h��}<BN`�m
��]	:Ov���bl�}zV��C�^�g��|��t
S�xv��'N����d�����}:t���.cv���o�2ౚ{�)����YlB�[��J�$��4���h��$�_�^���*��pi�~�a��m�����KL�;��c���¡�{��L60ާe��7����33Ƨ{��/���Q4W�2r����j��'ި�Y�φ!���D�t:^	u_�7x�D��+����'5�����Tח �}��}<t�]_pĜS������x��=~<��|&��̅N�ۢ(ms��7���],.I ��O~U�~t짵pF$��׊�ؽ������ݿ$��uwꝁ�&1�zl7/��t_7�c��������{EP�(��w���-"��~�)���#��Vt��9��S�zJ�u���Y���[F��gF-MDg�����p>l���7i��ׅBeBhiB��=)�(�*����{�� ��C+]&��U�
��ڏڏ����K�;g��G�ia���ޝD>���� 7���w�}j�*U%򡡌�9�6��+0B	�$��6�۴�}㔁�N�3�F�0�u�tC�AAw�6���c�9>-�9�y�H����}Z��qqy��C�[�V�J�N�}Z�w7��j�������0�������λ��m�m� .��=�/�1��<��`�J��/5�H�9�tl��4��2	��T�n͓�1p]^iޠ3��/@��i�����G@�������df`����>=��*�����g�L��>���}[C�aptHֵJO���0�����(�0&�=�H{�Jf����lt���B��~�7k̊z�����S�h�嬁�"���#ԫg\T�C���#Ѻ���Y����ܶ[_���_���FdL�M���?�9
��	Km���p��Q���-��[}��И�J���5W�g���;�g�����뫴���1	��?gN��~�x�u�i�� ��A���n�j��������aj���A4�"~�|�����>=�{'���^f��AApq����yw�����V�(փ�?���'�-��������[��Uw�(t׫�=���7^��<��Q�Z*����ۙP�s��?�G��pX����i
�w�־pL������������g�!W݃+��`O�~�`L���ҨǺ�<��AM@,b�ASq��\t���I��O��o0ߦ7�8� �8�*R!	��j��jUc�M���>AZ��9��}Vj�|a��������=�g�a)�G���E�OnfSqa���!#��&#"�W?Ǆ�A�+ZL����p��Ef��{�c�}|�}�X��U�o;.�'��șӧ��G��4���ӧ����k���K��>�F�(�����c��l��ǣ��f8���x>+[u�h]���|
���}z����3���j��[,s�����apW��P6�k��m�2[*9r�K(٦{�sF������)72��=1�Z?T	ĒR�������ݓ��~��}�Y�kr�1�7��}���pj���1�_�JH� a�T����>=����3Ӑ�<(�Og�}�b�*�۬H���S�J����t��~Һ�}�}Q��7���x���	"�����S�X=���9V���8Aо?��x�j����X�	?���7���`�O�><��4�R��{a��k��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Swordmaster-Sheet.png-311465e8f2e001689f92320fc61dad74.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Spritesheets/Swordmaster-Sheet.png"
dest_files=[ "res://.import/Swordmaster-Sheet.png-311465e8f2e001689f92320fc61dad74.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST&  A            �  PNG �PNG

   IHDR  &   A   �o�   sRGB ���  �IDATx��Ar����A|�,�{�"9_��=&�9�o����� ��d� ����gdmJ$��5���^�^�����h�^�{_�^�z���a��^��v#�9�j�?�t�f?_�߻��7  x�V����b0y}{Y���r����调�{cI	�%Gb؛�  ���_��]�A��n�����T;=^`1  8@3�D0��N�)�@�`":=D��  �Bs�$����(@�����n  x��c�]��?�?�@�)a���n  x��՛R��5h,��eft�b�#j�D�"�\���x��  �t����l�g$�Ö�q�����>n�  �J��Q)ޛd-��ps�ˁ�_���'r�  ��&��V��J:�5n�ر �]g��+s�:
�1m����)��fB �Pc�t��LNQ�� �
Ԙ0��o5&2^��E�D�smQ�-'��� 87�1a@�?���;O�_�wO,_��HN  �A���1�3֘x�� ��1٠�����Xl+B{Dqj���xn�� t�Ib����u�^�c����Dq\�nOfeZ���
� 5&�:,�{�� �w��|*�>�P�,f ���c�h���Q�Q�#j�9��=R�9�  FǄ�Bǁ���sS��GԸsx���6Μ�(��> ���1a<�cgR��R�w�#t�*ЕD9�ƞ��["�`��
 x"��0�薐$��GԸ�B�Γ��cb  �9�c�xDGE�=!It�э��Q��WI	��?�m�LY�D{�:�%$%"�G@�a&X�S�w�����E��}HP�30d�W�W�����tއ�^�hG�:��=�$�M'"k� ��ڤ���t�1I?�\�5�a��X�hM��(�c�HJǪ�5H�ܢ� j��rau��A�	���$a���Ǒ��傝�E�4��I�� O��=���d�J��zݹ��ђ�N�׎����_��19]�w͓���ȯ��VK�s��J:^�"�1�[���u� ��IM죝�\"�sJ"|�G���6w���G{n�K����Z'*�)�ߴ�u�֘�{"�{t������*!9�Ζ���	��(tѱu�upL��(�b�.G��Z�hW��LGa ��r�m��\����):REg��3��E��ט�΢FG:��>��:�Q�YtH*���H�F^9D|]udj��A�a�ɐ�P���9^~~>��~'���T����]��C�Ǟ������u%���[_��#�(ޗ��,��u���h�J:Fƞ;� �^_��M�����:�{�=��]sL�x
���H$=�}jOL^������T[�NƼJRD,+����Q��\��\����r2���������jL�N�����B7΢C�/���x:�4J���ǟ���@�b�N��󵻎������=�"*�
��V�Q�-��.P�6,�+��m���.�U$):��Sr����؍6���1�1)خD�r ����2t�e�8�c��3BG��H���r�1�z�HJdm�<�XD':����:*�����s���Y<^���Q�&dk|M�Z���Gg��G6�t���;&>��f;k��z�:j�2j>@g��:y>9h�ҭ"Z�����dd����
/ۆנ��p~���H�q�#�$J{�`���֘LH����G�$���r��1ao���u*[+�����:6�@t������~�g����#s|hN�ܦ�J��#�b�X�u���^�G�&Cۣ[���-%$3�2޳�(LG��3�1���@�_m<rqpe��c��s)&C��ͦ������cRL��G-59X��Ǜ��fX�8�c�:!������ԡq2Ǥ��c"od�;vLr��1��kvO����}��-(��TjYc�����D���1I��=.�n���ߕ�s�B�)���B���
�,:����Y���6�c���pGHy�b;���$+'��"v��ڱ"QJ�`��V�O�\���d��nn��q
Ǥ21ٕ���������NG����8&iߚ����p온�	�,�/��žK����Y~�tV4�8&9��>�-�hj�]rR����֬��w3���'d��a�ȫ���"e�����9��F��������Š��\E5u����C~�?��Ӏſ�a�_P�[iꡣ�����I�߆�hqA��%�����x��:��qHr���IG���VX�ؘu��A�9�1)"\uyz2pL2�OZ�dzb��j4�휍0�����g��%`EF�G��Z&�ҭ�$����}OP.z%1ұ���#�x�8�%�;Q�-��� ��s��^s�c���:�ԢH��w�;���۪m2R�������~��[-"��z��Ǚ�*���u�:~yv;j���;�c��0�%W���ZY�J����Y�rA�̉�3G��̬΢���NO1Y��D�5N�u�C��5&*���������#��T,kL�?���V*;L>��5`��ք�$�Nak@�k�����oje�^�"��ߵמΏ�VR���C�@�I��g)��ZG+��gױs�����`UӐ��1�u%<)a��f�������,����,��R,*kUrtqL��/]���0\G���b�n��@��5&+����x��EO�1�t:��K��`����!���)�5?��X�*��|��#�jIȮ["���@:���� ��:��IGe,�~!Sdi�h�V�!��(ۚ��l$Kr&U��9YV���B�4k����1?���1�q�U/Ǥx�i�=�_@G{�@�ƕ<MtT�NJť5E�f�QH��A��j�ҡ~�p�rNI�o�����Z����h�p݊_�� �t�:�s�����G?�����:��]�o{�&
xW�c��Z����J�u�o��͆�!�֍�����1�\�׉��v�El�t�:|�]G�52󠝊_��r���{���I��#��qո����QY��p�c'�ttKLdåםW�kt�:�S�͉5!Kԯ���QZ�Qq�VVzn�;'�q�f�up��Ͳ���I�S�
ۛ��M�����b���`��?4nU##�k�%Dl�ڣ�ř+9WB�.��T{+-�>?Za���cR�(�������#���C WH��{bk��p�Y;�J ��*&�l�}�Q�����1�~��a:|��ck�2�Z֚�7)E���c� P��qzP�hl$&��JGg�c=g�  ��<ܓ{���6��W~ ��,��H���������w�T�����ċ Z�� p�U�E޾�''��<����ߡ�� � 1 ����O���~D��� �
 �)�jJĲ�j��D�?*� @h2�<�O�gd- ��	  ˻s��B�9�/�o ��ta �Y���QY�n-@t��  �� u"����85pL  �/�[�[�Xp��\O8k���    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tamashigiri_placeholder.png-9777903913bd4676f3b72deaeb2c3a90.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Spritesheets/tamashigiri_placeholder.png"
dest_files=[ "res://.import/tamashigiri_placeholder.png-9777903913bd4676f3b72deaeb2c3a90.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST�  ,           �  PNG �PNG

   IHDR  �  ,   ����   sRGB ���  �IDATx��ݿ�&ź��z��}AP6���,&���8������i�{�����DL�q#�4SA���&r���ra��r7�\k��骮��_O��K�;��v����S]]Uϻ����*��퓝z������ 8���R�  d� $� $� $�ߤ m�5z��c��"Υ���/��  I�@  I�@  I�@  I�@  I�Z ��>��-��ֹ�h��� $�ҩ�����k�ﯾ����=bn�y��&u�S��9'�Z  �$T  �$T  �$� �w���uP�����E��@  I�m����Xt`<Čx�@  I�m�H77�=Ǹx��#�$l�V ����7���O��@_��@L/��������3�$�~ћ5��cF�  �P�  �P�  �P�  �P�  �P�  ��b�D5�-2\18'a� HB�S5&T�2i2pN�F ��
 ��
 ��
 ��
 ��
 ��
 ��y ���C��I�h�  ��\��=|���z^�2�Z�]�χB���q#���/��p=I-{������MZy��H���_��%��1���y)�ܤ�����:��^��$���H�ō��H'W���#�7Zǿ��=Z q������S��ͦRIʒ7Z�?Z �\Ih�ʋ��U���@Z�h�h�tr%�I+/�S1د��*�7Zǿ�K�D�U^f�b��V���}�J�d���S���k���|����g�퓝z����;���߸�^~�������?�o�>�P"��'��ۈp.�|��_[�����^}�/6Wlc�j�$i1�4_]@$R���0�}j՟��9I��ȥ�7IZJ; �I��l�r���R�$i)�d �&�"�u�˵?\����d �&�"�u�˵?\����d �&�"�u�˵?\����d �&�"�u�˵?\����d �H� �������/��p=O�����JD�E\���k������k;�s1��!�f��:'��sR�E\���k������ �X[K���6������\j��,s�U��ę�>�Z-��Iiq�u�+��	#I+/�a�ٜ�����:��^�{ ����3r%"-n���@:��Ф��d�HF�P�ō���r} ����Eʕ`��D$�Ja���+f���@.���D���_�,k��Eb+�F��/���/��_���} Җ@+*���O��÷@�-���~�<��|�ѭ��_~��z����BA_~�s�"��I�:>�i����bR}���R�  �׺ ����O&�I�h�  �P�  �P�  �P�  �P�  �P�  �P�  �P�  �P�  �P�  ��L�3$SDk$S��Wl��ovsr�;T +�s���Q���Y+� V�F  	  	��`���- @* @*��z��q�" �y  �${�ܸ޺  ��n��Z�  P��>VW���?�����z������7��R�����{.��*��gN=��{�����)Ǿ�/�<Z�or|����z���}>����gr��B_XR��/	&����]qh)e��3�li������1��W���aߘۭQ�ҟ��s,��  I�@  I�@,��(�sJqL� $��W�qN`
���.�3�K{���܁R�@  ��@  IH� H�ʤ�}ι�KR<��3����syy���Rj��W�~��z�헂�=���w�ãu�2O��K_!%���,Kgλ֝k]z}�Ov���:�N�R��r�Ps����9�z_��[�����T�>0�;�ߣ��Ke�*Kj�ξG�ã����,��;���O��oVS�ݝ��1ߟZ湿�<?�U:��ǲF���J��{S���LJ�!q��ϟ�ώf<��S�O�,�ӷ��|������5u�M� >��ҹ�L��Egꝉ��.@!S�@�{��ƥЫOn};���Jc��C�+����_g.�{�׎������E�_�o��(���]\q�\�X�7�W����yp�% ,�*��h�
D�0� K��D|���ۛa+_�c���� -%V��D|��zm�W��\�K (-�NHJˤ��*�<ʒ��Z��}#��=r�$|wF$����>ٵ.CA��%b}���z�����%��Fz�k����"�aǛ��$'N�2))$MG��ã���ٴ6&�#��I�7��_�T*;�Ĥ5�7ɥԬ��L���{���:�Ǘ�����Ʌ�����X�I�M�U���}#��5ٱĎ/S�G�7��iQ�Ҥh�����'8���Grϰ����듦�_Jz��^��ı].f���e�=�LN�u���� �I���pq�d��ĸ�M���i���o� 3��(=ڪ��ek^��lyL-���&=�H/?�8�a��R]�f�8�5�@r���,m�DC�M�����b�t��/��Z��Ï�(U��י��p��&}�P�x�Z�j��RF/,��4үRK��o(��>�%}��j^�����c�-�_R�W-[P��k;�m��o��'mC���kEǓK��%��%I�7��_ڽ����H�VA�LJ����L����O�=�+���<�7���Jeb
IWK����W�f�S=��s���,-�~���������j�
���W�۶j��\�6��';M��΃,�m�m݌�*��>�#]�+`8�m�P���q��y'z-��B0&���z8�k��
$t� ��&�����.@-�q�-�\)��ƍs�ӏͥ^��Z���׆��W~��\�{]h�]�?��%qlݯ-���'t��h6��᪆�*=
K�0^�C1%��e�A����x���?�~��jnai�{����} �k=K�$�8�X[��*וA-�ݻE>��
��7���'��eh`�X��U�8����?9�qŕqclP*���4%s���7����'�t:��R����LJw����ضUk���L\�d�RM�r2x7�L��NƤB���qz�D]��O.5�x�ݯ�YK���G�H.{i[��L\��\�t&�c��N�r[��m�n�@B��ۏ%�H����R�#�pl�z�=�q��Y��ּ��@�" ��c�'��@rĵ�q�y⫹��\�쫩{k�`��l�e�a���#~��<zi�4�@���DJ��%�|�Cr�kq���-{9B�C�	����m����osp��MrٕZױi���zV�{TүR�Ʊ��i���5�qJ\k皷@B����O���֨E$��^�g��x�W Z�QSK�v���6��=Ƕ����:Jeb�c.-@�/�VF*��_���Ne�S:���wA�LJ����L��������;��� ���пR�H�qK�^��������L|B�[u�EH��&�����`�9�w�X�?�K�k&�@�Oz�K��oJ����q�ڴ���Ƕ�q8E�QX.1���Զ���)F�+�Ƕ��C��iH�M'�-d^���5�ڷ��z8�׬���\9a���H�n+-��i{��d�$�.�$�9!wH����I�}Rj���Z2~�q�xlc⓹��/U�H��ծ��� >S�@B[����.�K�>��+��yRܻ{�By����r����ou�����	K>�ކ~���V�ȷM���rL5����6���ݝ�>!�G��\J������.�������ĜϿ�I���k���a��d�>���Y7�o��{w�On}����?�>�R���[X1�e�j�5܃Џ�>Y�:Je�Bv�F�v[�~R��g��T&%=z��\*�\̴ �iOj�2)Mz���$���_O�LB�.�Қ�\�r�:���t��d)�L���?�N�\��>Q����:η��leh� �W2Ȍ��C�R�h:��K;��qI)w��f���q[��@�Z:.[�֣��l�:z���Y2oͷ��p��:3 R-��6��ݰH�h- �-eޚ�>	��@hy��(��j�����@R�@�:Ť �����V�֯����D⼵nd�^["�D�H�:ZSql�j[����r���z����b��OW�Kpl����[�C���1
�A�$��c��ZFc	Oe2%6��X~������O*Wz��*(�IJ?ILV�_O��g�{F��<P�_x��4�ߵ��$�����v�T&��4�3�9�~=�2����ĵ��ǥ����2�e՝�'���@)�.L�[��J����v��� S�� ,��͍�t��2$�)����~l.�Z������2�`ng�ng�\ P�+���Ő�Z��P�w���v�'2Z!4�L�� ���2�\2O$4�喭I�q�ej,i&'�	�$��e�a�'$�ށq�nj�*G)�*���7���jy��̮�"}2Xi�����0��	�Z��+��_��
d��Kii���E�\��$��e������$ti�Ϸ�RW s5_�{�9�DFɅ���/�΋o�*On�f��������[& �+��_�[����Zq�{��;�\o��گ�q�l�=�`��=5�s��$�����W�Y��ף�Ks{5l��o>��%!�{�5u�����M�'y�H.{��Ͻ���'��-�~��R�����cup����s��4MM�7���@Yf*WZ��HL:6\�Rm�y�b�Lb�ؾ��ã��̎��v?{�H���A���\�F�?:v\�#���4��x.=��Rǵ���-��}��bm�߶$y�H.{#>_	�<�_��F5�0�UX	�����0���=�ʵ�چ�@�F/�&�*L���I��^��c[�y˪�7�ҵ�چ�@4�_��~Y2�I�7���BH�cn~��uSK�v[YM2��L�0ү"i��I/K9�@\������қ�{�#�*�JXkKd�Ho} ���YU�$��e��o�jS��>�ؖ�o��~m�W �Z�@$wB� ���ۯE�s�<|�D{myh{�Ov��P�αD��4$��4�M�Ͽ�)�]v�qţ��k}m�2)�Ob�2�S�<��3jw����S������v�J*��~5n�q���7��w3��Ol��T-���Keb�E?YƤ�j��"����5ұ��s��vw(�.ƫQ��2�����z{=X��"��84"������c]Ƌ|��|~4�*�%9e�փu��b�s�B\2�:d\���
���������:�\:1H�x똖HmL��$���7�O�!�f斾��ʅ%=�&y�H��j�|l笭塉�@4�@Ы�$�Bg��F\��d�+ eL�Hh��`�L��w���5_;:<�eO���{˫ѩm����O��.��{�����q�����\�3?�};���j��������r�o���$4Όg��G���,���$�F3%Jh��O?�A���k���a�r�J�ƕ>�W���\���{w�On};��Ď'�i��Lv���B�qw�L����v�\:syz�D]��k�n���� `l��;����Ҏ?�4K����$�dNH����F!�
~����=�ֆ�@�������>��xn۶��%j?^�{ ��Y���DKH���� ���c+��!�N�p��g����ڪ�iǆ�@b�A��Z3�K�Ĥ_e�ı���<�qL��o��~mbdN�����/�� YǶ?19��Ǯ���ӣ�Z Z�(�ь�%�b�d����~�K�4��>�W��I�=��_���֖�`�L��OcRW��T����#��5��?S��p�QJM����[o�8����$f*3����/<nzH� _�Mw�m�����~(���#�I�7��^�(�g*����|B����+g�3��Jw�L\e��y0��GO�+q-�����
Vr�ki�أ6]�H�e!��&q��B�8$��\j�/h)������C���^�u����������T�G�H�$��5��R睍B\�-m���A$I�e�a���֖�&�Igm� ���?�W�,_=� Xj�-qH�>�V����v\��n/����X#��D�Lt���������V !-���XX���Z۵����$5��@M�T&�3A�LJ2ӗؓ�;��qxt�~=}2��ė֤F* ���L\�%f���;IUj�x�T&!����s}S�/o���铳�f?ֶ��b��6��~��g���S���y�^c�j���\���b��>��g*Q�s�r�����������c4w~���*��Y|e���6C\��\�t&�c;��+���m�^n�m>�����ҙ�T"!��R��c�N��޻��kG��>��|@��ͺk��~���W���V���K�\X���>Z���B�DwͿ�-��<�����8:_MR\+^��f�����M3��U��$_���c�>%�o��~mՆ�模G��{��f��R����qmj��n+�*_MZ3��DB1}�(�V|sm����K�(M���OW��׵�ں���s-���_dܤ[��d|�-]ۯ�Y*���~,�Dz ���cK��u���9>���u!z�<?�?.����<�n��G�f+���$f*�{���i\iK4�y^k"! �̉�SbҚ��1���*�CBUKe�cn�U�w�����B� Wz�V��kKz��}�iǕ��$J]�W�Z�j[�QX���k_�4_��E'zH2����	g2�ڵ>���ܤ����M��ш�@�\-�VW\��U2HJ?���_���t�֖��
$d\�kF����W˽���n/7�W�%I�7���B�<s9
q�S����J�U���$}������@bZ!} �raI'�*�[X��7��W���hKz�,=�L2��o�+t��H�U �r� �� #��pkql��n��Z�!�]� �|��O�_�g��z�Ŧ0Ӕ�I��=��y����'�i|>����H\�LL1iMR����~��M�T&1����1�+/o��u�ۏm��~�`Xs�n\�Ƿt�a
M�4�a_����LrĻ�Ѥ�Ļ��k��q��~�~<�4�3�tg��\��f�5P�e\�Ʒ��{=�<�f���vռ�����9����+�,�BGwպ�R}oL�l?.�� ���D��)q�ּ��H����`�^�|]�/�f�R�ޠo}�v ����\�B��f3�Sj��{���� ����k?N�qm���H�{��r @����K�^���8�*Gn���O�n 0��T&��I�T&������>�7�����n�է����`�?���!�P��Y}�?f�L��U�)��K΃�W��M�v�����\��]G���s��|��%4>�r��l͸�a,I��ُC���LB��w�%���u����=�Jʈ��}4S�a�o!��,	`%�<r(��%��;��ܟ�幓c{)���KGm���˷���B���5�ysk6
���{���9�3J�'���K���*��x�����Zoi�~dN�|���-Y�����h#�����������ē��e�
D���ץ�׵~���Hm��j��nY�?��@B�U��on���hoi|�ii�qa�oٛa+�f�c���+��^=��QΝ��pz�du-��+�К�5�b�=�^��7J��_lK`�}��S�0zoi�[���bj|ɣ� �	i!�̘����[���BZ"��H�^9 -�u��PJy�_۝R�  ��2)�L��j/%�A��9��W�Ov�>���җ�z>�H[b�'d���dNj�{�,�����1S�̥����T&���kZ[�i5ro��Ἱ�!�!�I�&)z8'JOb� (�
@��~���/L��  	�o�҄��6Ή���=��@�5�;k��.�@  I�@  IHe H�ʤ�=��4��K�b���eș� ׌W�.��_�oB?s���#���C���%�LR��2�O��-Z��Z��t���U��e�i���O��p>Lo{�9P�3�t�(U�<�~_Zb�2 HB': D���wT  �d�4T  ���j|��م
d��" ���\D�N�8�yT  �Q�B)*��b��� ��� �$(�IIf���W{)C�zLS`*��n��LG1g*�G���χ�4&�:J|_|�tI�?9�&��C��U�]*�V딒��T�z��SBS|ļ�����"�K�k���Ή�� HB W��Fb��4΅��@  I��8�MKI��    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Dojo.png-3c1c52037d2b1f08f2bac29090453b32.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Dojo.png"
dest_files=[ "res://.import/Dojo.png-3c1c52037d2b1f08f2bac29090453b32.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST�  ,           �  PNG �PNG

   IHDR  �  ,   ����   sRGB ���  FIDATx���QN�@@���#����&-m�x�/I�Ǥ�ׄ�                                                                                                                                                 �ﺌ1�g���:�X�g}�} �'          �ϳo�������{l]��#q&�a  ��ײ�++����՛3� � �� � �� � �� � �� � �U&ܳʄ1<��@"  $~Pj-6��g�) �� � �� � �� � �� � �� �Xe��#V7X�3�I�L  $&���T��:��L2e          �˰.�[���/�l2� � �m�k��J���뎿?��ܺ�3�8 �� � �� � �� � �� � �� ����=�x�s�L  $�)���:V�L2e          �L�r���!x�3ɔ	�D@ H��Z�[Im>��$S&         ���mOn;����& �]Xk��	��t�u�q�3ɔ	�D@ H�D@ H�D@ H�D@ H�D@ H,S 1� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� �|�&6����0    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Shadows.png-dcb31add04c438d3a78be767ef1c5f06.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Shadows.png"
dest_files=[ "res://.import/Shadows.png-dcb31add04c438d3a78be767ef1c5f06.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=false
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST�  ,          �  PNG �PNG

   IHDR  �  ,   ����   sRGB ���  FIDATx���QN�@@���#����&-m�x�/I�Ǥ�ׄ�                                                                                                                                                 �ﺌ1�g���:�X�g}�} �'          �ϳo�������{l]��#q&�a  ��ײ�++����՛3� � �� � �� � �� � �� � �U&ܳʄ1<��@"  $~Pj-6��g�) �� � �� � �� � �� � �� �Xe��#V7X�3�I�L  $&���T��:��L2e          �˰.�[���/�l2� � �m�k��J���뎿?��ܺ�3�8 �� � �� � �� � �� � �� ����=�x�s�L  $�)���:V�L2e          �L�r���!x�3ɔ	�D@ H��Z�[Im>��$S&         ���mOn;����& �]Xk��	��t�u�q�3ɔ	�D@ H�D@ H�D@ H�D@ H�D@ H,S 1� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� � �� �|�&6����0    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Shadows2.png-1a10bfa48c2e71394f0b8dbefd5698a6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Shadows2.png"
dest_files=[ "res://.import/Shadows2.png-1a10bfa48c2e71394f0b8dbefd5698a6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�  ,           �  PNG �PNG

   IHDR  �  ,   ����   sRGB ���  �IDATx���AJ�P@���������HH��tR���Π�Zk�                                                                                                                                                                    �nW? ?~f��g>畟��qƼ��7��� �=	 �WX��k+�6��w^�r! �� � �� � �� � �� � �� �8e2���G^���m�,�ˁl  $@�q��`��S�b&Y�� � �� � �� � �� � �� � �S&��q��y�a&Y�� ��@f9㨜�u<�L�d          �����	�Vg%�[&�➹�@"  $���rt���k���{��ɣ�a&��� � �� � �� � �� � �� � �k��L8���)�6c���@6 �gq��i�$K6          q�d�3N78�3�$K6  �
k�3���|�3�$K6         �����	�y���`��	��g.�� ���5��M���v�;����f�% �� � �� � �� � �� � ��                                                                                                                                                            ���}	8_��    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Shadows_baked.png-e62c55c421292de17f39bfe254a0be57.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Shadows_baked.png"
dest_files=[ "res://.import/Shadows_baked.png-e62c55c421292de17f39bfe254a0be57.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�  ,           �  PNG �PNG

   IHDR  �  ,   ����   sRGB ���  \IDATx��ܱB1�3�#�_=� 	��_���E^]�53{ �O�� x&                                                                                           y���>�p�}z wr� � �� � �� � �� � �� � �� � ������w�B.                                                                                             �53�� ��@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@"  $@�M�����    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Shadows_dynamic.png-d594f2641da6e29fcf7bf761f5a23bb6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Shadows_dynamic.png"
dest_files=[ "res://.import/Shadows_dynamic.png-d594f2641da6e29fcf7bf761f5a23bb6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST�   X            �  PNG �PNG

   IHDR   �   X   |��6   sRGB ���  �IDATx��;n9@�@�t	%�B�E
�62�`����V��"���d/a'��l��,��?��*v=@�>3=l�^�Ȧ�$��ϿS/��Ý��;���}���s��`8��������k..ϓ�W��3�ntF�ilW���I
��^\��?��;���|���l����&v��++�����������ϓ��p��h���-�ӟT�-L�9XM�7�|F>K���G�*e��Ҫ)W�pe�8�$��b孓�P	*�0���D��󬕸��G~�������E{z|^|��t˩TN�!Y4�p�{��5��H�ĄHS��UJ�*|H�m蟅�I� =uT����j� ��E���3reC��h��[��9�=)���O_N^o��3�\��c����i���U@pJj�bK�[Q���..S/rε�|��/'� xe�^4�Lµ.�r��{��B�Jx���ؐ4�#�R���cR�C�������l����z��.Wi�f��_��؟[�Fcz6���:�I��3B��Y[�d=��|��l=��c�	���&���kC��&Y��Q	��ėdq�G����mm��
&n[b�����ϣcp�]PI_��*�͌��߶�mj�3��w]v��>��d��(]h	@�l�q�o����1�=HT4?�륦l�=!1r6�5-���yH��
8�K����a��ȋ��F����
h��<��d�D����1r������oe�>�ژ��	I��x�v����f��D�Qqy}s  �|�`��lJ���8����H��y���r�c�p)�۫q)������C���A�N�h�����krz���P���B���1[�
P;��I�ɎP٘�:ŝ��jꀽ�;ٯd��h��MgR7�1�9�I7�ǚ@4M#9�}�J��0Ei}�**Zz4�ʶRj�[�H Q4�l�d�rBk [.��/�ҥ��p���ނٜ�?�P{�u���?uoJ) ��!Z�*�b�:��㿿}PK��އ*�h�Kh�d�����H��U4%DJ�Т��m��4uT�)���2qݛٜyv�����)X�X��I���-�&O%S(�M�X>��ȧ�� ��T%���x�l*�BM�G�A4�c��<3Y�O�$�+�,r��~�V��o�"�Pa�۬�Nd+�?*i)'u�^�\���~R�}���<����6���߷۷����Zdi$��\��|��(%܇��~>)��#��OB��P�CP���A�\�\�x�f�����h��N7�ۓ=H\8W+��na;Ar�p�́׊^�hhͅ�&��'�(#a-�/�̗"���aL��0��P��V��xe;f�a�@θ.&����ur��E]�l6���_�[7=3'�a�lpn��&�'H8�c�v|��8�����=[�a���ψ���VA��2���ֈ�v|� �����۷eٵn��xQ�~a��۰�l\%s�6R:�j� D4 �4���:��^M�h :��iA��EP�ؠ���ZO�F2#HRS���U���Ne�Lk8��JRJ����lb�e����kR8���g�	�Y+g�b�� ½�l��b��@��)�m+S��|���N$�Fr����ָ����
7[{���nN�X����Hmk7��	�=۬R�"]����<ߘp3�f�FzT�v�B����l��-m����:�$d�*=��[[�vH6c�������y�x�r��ll�O����0���C�0��g�{�H���u�˹b� 8�I���V�w�d�݃�2u��&%�Z���D��6rq��;A�����綤_U���Cp�i�����Hqq�Iw��U �"08�rث�~�c62�����R��3��)��nI���K�L��l�,Ǚk�<*�҇�t���MESr����ԛڊRG��; X$l�î�UX�9N 9�kq�He<"��?�'�#�Pc�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Snow_view.png-1a942d753c55a05529ebaa3f8c949fc2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Snow_view.png"
dest_files=[ "res://.import/Snow_view.png-1a942d753c55a05529ebaa3f8c949fc2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST               p   PNG �PNG

   IHDR         ���   sRGB ���   &IDAT�c���?>��W������!���\0  �Y�L�    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Snowflake.png-4e09bd749e2e29030728f006f2f72f06.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Snowflake.png"
dest_files=[ "res://.import/Snowflake.png-4e09bd749e2e29030728f006f2f72f06.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST               t   PNG �PNG

   IHDR         ���   sRGB ���   *IDAT�c���?>��WM�(&h�l
p:�h70�R���ƪ ���~vH    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/Snowflake2.png-bdf611d348de35a904ed9dcf272365ee.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Static/Snowflake2.png"
dest_files=[ "res://.import/Snowflake2.png-bdf611d348de35a904ed9dcf272365ee.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDSC         	   '      ���Ӷ���   �����϶�   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   �������Ӷ���   �����������Ӷ���   	   ui_cancel         res://UI/Main_menu.tscn                    	                              %   	   3YY0�  PQV�  -YY0�  P�  QV�  &�  T�  PQV�  �  PQT�  P�  QY`        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Assets/Dojo.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://Levels/World.gd" type="Script" id=4]
[ext_resource path="res://Assets/Enemies/Tamashigiri.tscn" type="PackedScene" id=5]

[node name="World" type="Node"]
script = ExtResource( 4 )

[node name="Dojo" parent="." instance=ExtResource( 1 )]

[node name="YSort" type="YSort" parent="."]

[node name="Player" parent="YSort" instance=ExtResource( 2 )]
position = Vector2( 197.776, 164.814 )
speed = 2000

[node name="Tamashigiri" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 91.5688, 233.084 )

[node name="Tamashigiri2" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 91.5688, 147.759 )

[node name="Tamashigiri3" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 309.193, 144.786 )
scale = Vector2( -1, 1 )

[node name="Tamashigiri4" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 310.085, 231.003 )
scale = Vector2( -1, 1 )
          GDST2               �   PNG �PNG

   IHDR   2      ��n�   sRGB ���   NIDATH����	  C�(�L:�8���A�Q�&�?&��&>` �^�w�} G��E!l�F!l�F!l�F!l�ƀ��^� �,7]�Ȅ    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Basic_button.png-1882c55b590c3a361ab90f9f6fb42b67.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://UI/Buttons/Basic_button.png"
dest_files=[ "res://.import/Basic_button.png-1882c55b590c3a361ab90f9f6fb42b67.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDSC                   �����ض�   ������������Ҷ��                   3YY8P�  Q;�  `               [gd_scene load_steps=2 format=2]

[ext_resource path="res://UI/Buttons/Button_base.gd" type="Script" id=1]

[node name="Button" type="Button"]
margin_right = 12.0
margin_bottom = 20.0
focus_mode = 0
flat = true
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
margin_right = 40.0
margin_bottom = 14.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="."]
        [gd_scene load_steps=2 format=2]

[ext_resource path="res://UI/Buttons/Button_base.gd" type="Script" id=1]

[node name="Button" type="Button"]
margin_right = 12.0
margin_bottom = 20.0
focus_mode = 0
flat = true
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
margin_right = 40.0
margin_bottom = 14.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="."]
        GDSC            d      ������ڶ   �����϶�   �������Ӷ���   �������Ӷ���   ����������ض   ������¶   ������������Ҷ��   �����������������Ҷ�   �������Ӷ���   ���¶���   �����������Ӷ���   $   Menu/CenterRow/Buttons/NewGameButton   !   Menu/CenterRow/Buttons/ExitButton         pressed       _on_Button_pressed        exit                   	      
                           	      
   .      ?      @      G      H      N      V      Y      b      3YY0�  PQV�  �  ;�  �  PQ�  ;�  �  P�  QY�  �  �  �  T�  P�  RR�  RL�  T�  MQ�  �  T�  P�  RR�  RL�  T�  MQYY0�  P�  QV�  �  &�  �  V�  �  PQT�	  PQ�  (V�  �  PQT�
  P�  QY`       [gd_scene load_steps=6 format=2]

[ext_resource path="res://Assets/Sprites/Static/Shadows_dynamic.png" type="Texture" id=1]
[ext_resource path="res://Assets/Dojo.tscn" type="PackedScene" id=2]
[ext_resource path="res://UI/Buttons/Button_base.tscn" type="PackedScene" id=3]
[ext_resource path="res://UI/Main_menu.gd" type="Script" id=4]
[ext_resource path="res://UI/Buttons/Button_exit.tscn" type="PackedScene" id=5]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Dojo" parent="." instance=ExtResource( 2 )]

[node name="Shadows_dynamic" type="Sprite" parent="Dojo"]
position = Vector2( 200, 150 )
texture = ExtResource( 1 )

[node name="Menu" type="VBoxContainer" parent="."]
margin_left = 150.0
margin_top = 134.566
margin_right = 264.078
margin_bottom = 190.566
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CenterRow" type="HBoxContainer" parent="Menu"]
margin_right = 114.0
margin_bottom = 44.0

[node name="Buttons" type="VBoxContainer" parent="Menu/CenterRow"]
margin_right = 82.0
margin_bottom = 44.0

[node name="NewGameButton" parent="Menu/CenterRow/Buttons" instance=ExtResource( 3 )]
margin_right = 82.0
text = "New Game"
scene_to_load = "res://Levels/World.tscn"

[node name="ExitButton" parent="Menu/CenterRow/Buttons" instance=ExtResource( 5 )]
margin_top = 24.0
margin_right = 82.0
margin_bottom = 44.0
text = "Exit"
scene_to_load = "exit"
                   �     (      "         �                  h??h??h??N**N**N**N**h??h??N**N**h??h??N**N**N**N**   h??h??h??N**N**N**N**N**h??h??N**h??h??N**N**h??N**   h??h??h??h??h??h??N**N**h??h??h??h??h??N**N**h??a99   sRSh??h??h??h??h??h??h??h??h??h??h??h??N**h??h??h??   ~fh�z}�z}������h??h??h??h??�z}�z}h??h??h??h??h??h??   �z}�z}���������h??�z}����������z}�z}h??nJKh??h??      �z}�z}����������z}�z}�z}�z}�������z}�z}~fh            �z}�z}����������z}�������������������z}xik            �z}�������������z}�z}���e]^�z}UIIUIIUIIfYZ               �������������z}�z}���������UIIUIIUIIUII               �������������z}�y{UIIUIIUIIUIIUIIUIIUII               ����������z}�z}�y{�z}UIIUIIUIIUIIUIIUII            XSV�������������uw�z}�z}�z}thiqghUII               �������������z}�z}�z}���snp               ������������������������������   PHK�z}�z}�z}�z}�������z}�z}���������������      �z}�z}�z}�z}^QUyqs���������������������������   �   �   � � � � �� �� �� �� �� �� �� �� �?�  �  � �   �           GDST               t  PNG �PNG

   IHDR         ;mG�   sRGB ���  *IDAT8�c|������S(���X���~`�c�1��Z�"��^˰`�b��W�b���:\��0 ���!n�`��(�[�obU�t��M���bV�f8-cAVt��)��a�Μ?�3!���ݘ.A��V��a ���R�.A�ι�V1�Ƅ�������TCp�;v3�˪�U���oyx����.AV�� ,����p��=�ft`rȀ����aI�a�}(�쬕��pa�����^�~� **7�w`
_�~�� `�%��vd�啇�%pM��� ����,�    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-077b62b04aff4829aa474a78a3ed8396.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://UI/icons/icon.png"
dest_files=[ "res://.import/icon.png-077b62b04aff4829aa474a78a3ed8396.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Assets/Enemies/Tamashigiri.gdc"
           [remap]

path="res://Assets/Player.gdc"
        [remap]

path="res://Levels/World.gdc"
         [remap]

path="res://UI/Buttons/Button_base.gdc"
               [remap]

path="res://UI/Main_menu.gdc"
         �PNG

   IHDR         ;mG�   sRGB ���  -IDAT8�c|������S(���X���~`�c�1��Z�"��^˰`�b��W�b���:\��0 ���!n�`��(�[�obU�t��M���bV�f8-cAVt��)��a�Μ?�3!���ݘ.A��V��a ���R�.A�ι�V1�Ƅ������������c�nyYU�jX`�"{���-W>�4��%Ȋ����%`�׌n L0>x��?,��4̜�E���V.�@߁�WX����DE��a�L�����,�$�َ���p�����	��0q ���#��    IEND�B`�             ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Zato   application/run/main_scene          res://UI/Main_menu.tscn    application/config/icon          res://UI/icons/icon.png &   application/config/windows_native_icon          res://UI/icons/icon.ico    debug/settings/fps/force_fps      <      display/window/size/width      �     display/window/size/height      ,  !   display/window/size/always_on_top            display/window/size/test_width            display/window/size/test_height      X     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/Attack`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      )   rendering/environment/default_environment          res://default_env.tres              