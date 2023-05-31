PGDMP                          {         
   instructor    15.3    15.3 t    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397 
   instructor    DATABASE     �   CREATE DATABASE instructor WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE instructor;
                postgres    false            �            1259    16420    acta_de_inicio    TABLE     �   CREATE TABLE public.acta_de_inicio (
    codigo_ac integer NOT NULL,
    fecha_inicio date,
    descripcion character varying(30),
    codigo_cont integer
);
 "   DROP TABLE public.acta_de_inicio;
       public         heap    postgres    false            �            1259    16419    acta_de_inicio_codigo_ac_seq    SEQUENCE     �   CREATE SEQUENCE public.acta_de_inicio_codigo_ac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.acta_de_inicio_codigo_ac_seq;
       public          postgres    false    221            �           0    0    acta_de_inicio_codigo_ac_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.acta_de_inicio_codigo_ac_seq OWNED BY public.acta_de_inicio.codigo_ac;
          public          postgres    false    220            �            1259    16482    ambiente    TABLE     y   CREATE TABLE public.ambiente (
    codigo_am integer NOT NULL,
    nombre character varying(20),
    codigo_h integer
);
    DROP TABLE public.ambiente;
       public         heap    postgres    false            �            1259    16481    ambiente_codigo_am_seq    SEQUENCE     �   CREATE SEQUENCE public.ambiente_codigo_am_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ambiente_codigo_am_seq;
       public          postgres    false    239            �           0    0    ambiente_codigo_am_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ambiente_codigo_am_seq OWNED BY public.ambiente.codigo_am;
          public          postgres    false    238            �            1259    16458    aprendiz    TABLE     �   CREATE TABLE public.aprendiz (
    codigo_a integer NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    direccion character varying(20),
    telefono integer,
    codigo_pr integer
);
    DROP TABLE public.aprendiz;
       public         heap    postgres    false            �            1259    16457    aprendiz_codigo_a_seq    SEQUENCE     �   CREATE SEQUENCE public.aprendiz_codigo_a_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.aprendiz_codigo_a_seq;
       public          postgres    false    232            �           0    0    aprendiz_codigo_a_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.aprendiz_codigo_a_seq OWNED BY public.aprendiz.codigo_a;
          public          postgres    false    231            �            1259    16471    aprendiz_curso_complementario    TABLE     c   CREATE TABLE public.aprendiz_curso_complementario (
    codigo_a integer,
    codigo_cu integer
);
 1   DROP TABLE public.aprendiz_curso_complementario;
       public         heap    postgres    false            �            1259    16399    centro    TABLE     e   CREATE TABLE public.centro (
    codigo_centro integer NOT NULL,
    nombre character varying(20)
);
    DROP TABLE public.centro;
       public         heap    postgres    false            �            1259    16398    centro_codigo_centro_seq    SEQUENCE     �   CREATE SEQUENCE public.centro_codigo_centro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.centro_codigo_centro_seq;
       public          postgres    false    215            �           0    0    centro_codigo_centro_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.centro_codigo_centro_seq OWNED BY public.centro.codigo_centro;
          public          postgres    false    214            �            1259    16495 "   competencia_programas_de_formacion    TABLE     j   CREATE TABLE public.competencia_programas_de_formacion (
    codigo_pr integer,
    codigo_com integer
);
 6   DROP TABLE public.competencia_programas_de_formacion;
       public         heap    postgres    false            �            1259    16489    competencias    TABLE     h   CREATE TABLE public.competencias (
    codigo_com integer NOT NULL,
    nombre character varying(20)
);
     DROP TABLE public.competencias;
       public         heap    postgres    false            �            1259    16488    competencias_codigo_com_seq    SEQUENCE     �   CREATE SEQUENCE public.competencias_codigo_com_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.competencias_codigo_com_seq;
       public          postgres    false    241            �           0    0    competencias_codigo_com_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.competencias_codigo_com_seq OWNED BY public.competencias.codigo_com;
          public          postgres    false    240            �            1259    16413    contrato    TABLE     �   CREATE TABLE public.contrato (
    codigo_cont integer NOT NULL,
    numero integer,
    fecha date,
    salario character varying(20),
    tipo_contrato character varying(20),
    cedula integer
);
    DROP TABLE public.contrato;
       public         heap    postgres    false            �            1259    16412    contrato_codigo_cont_seq    SEQUENCE     �   CREATE SEQUENCE public.contrato_codigo_cont_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.contrato_codigo_cont_seq;
       public          postgres    false    219            �           0    0    contrato_codigo_cont_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.contrato_codigo_cont_seq OWNED BY public.contrato.codigo_cont;
          public          postgres    false    218            �            1259    16434    coordinador    TABLE     �   CREATE TABLE public.coordinador (
    codigo_co integer NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    gmail character varying(20),
    telefono integer
);
    DROP TABLE public.coordinador;
       public         heap    postgres    false            �            1259    16433    coordinador_codigo_co_seq    SEQUENCE     �   CREATE SEQUENCE public.coordinador_codigo_co_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.coordinador_codigo_co_seq;
       public          postgres    false    225            �           0    0    coordinador_codigo_co_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.coordinador_codigo_co_seq OWNED BY public.coordinador.codigo_co;
          public          postgres    false    224            �            1259    16465    curso_complementario    TABLE     o   CREATE TABLE public.curso_complementario (
    codigo_cu integer NOT NULL,
    nombre character varying(20)
);
 (   DROP TABLE public.curso_complementario;
       public         heap    postgres    false            �            1259    16464 "   curso_complementario_codigo_cu_seq    SEQUENCE     �   CREATE SEQUENCE public.curso_complementario_codigo_cu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.curso_complementario_codigo_cu_seq;
       public          postgres    false    234            �           0    0 "   curso_complementario_codigo_cu_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.curso_complementario_codigo_cu_seq OWNED BY public.curso_complementario.codigo_cu;
          public          postgres    false    233            �            1259    16427    horario    TABLE     �   CREATE TABLE public.horario (
    codigo_ho integer NOT NULL,
    fecha_i date,
    fecha_f date,
    hora_i character varying(10),
    hora_f character varying(10),
    cedula integer,
    codigo_co integer
);
    DROP TABLE public.horario;
       public         heap    postgres    false            �            1259    16475    horario_ambiente    TABLE     �   CREATE TABLE public.horario_ambiente (
    codigo_h integer NOT NULL,
    nombre character varying(20),
    hora_inicio character varying(15),
    hora_fin character varying(15)
);
 $   DROP TABLE public.horario_ambiente;
       public         heap    postgres    false            �            1259    16474    horario_ambiente_codigo_h_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_ambiente_codigo_h_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.horario_ambiente_codigo_h_seq;
       public          postgres    false    237            �           0    0    horario_ambiente_codigo_h_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.horario_ambiente_codigo_h_seq OWNED BY public.horario_ambiente.codigo_h;
          public          postgres    false    236            �            1259    16426    horario_codigo_ho_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_codigo_ho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.horario_codigo_ho_seq;
       public          postgres    false    223            �           0    0    horario_codigo_ho_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.horario_codigo_ho_seq OWNED BY public.horario.codigo_ho;
          public          postgres    false    222            �            1259    16406 
   instructor    TABLE       CREATE TABLE public.instructor (
    cedula integer NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    gmail character varying(25),
    telefono integer,
    direccion character varying(20),
    codigo_centro integer,
    codigo_tc integer
);
    DROP TABLE public.instructor;
       public         heap    postgres    false            �            1259    16405    instructor_cedula_seq    SEQUENCE     �   CREATE SEQUENCE public.instructor_cedula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.instructor_cedula_seq;
       public          postgres    false    217            �           0    0    instructor_cedula_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.instructor_cedula_seq OWNED BY public.instructor.cedula;
          public          postgres    false    216            �            1259    16447     instructor_programa_de_formacion    TABLE     d   CREATE TABLE public.instructor_programa_de_formacion (
    cedula integer,
    codigo_pr integer
);
 4   DROP TABLE public.instructor_programa_de_formacion;
       public         heap    postgres    false            �            1259    16441    programa_de_formacion    TABLE     �   CREATE TABLE public.programa_de_formacion (
    codigo_pr integer NOT NULL,
    nombre character varying(20),
    codigo_am integer
);
 )   DROP TABLE public.programa_de_formacion;
       public         heap    postgres    false            �            1259    16440 #   programa_de_formacion_codigo_pr_seq    SEQUENCE     �   CREATE SEQUENCE public.programa_de_formacion_codigo_pr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.programa_de_formacion_codigo_pr_seq;
       public          postgres    false    227            �           0    0 #   programa_de_formacion_codigo_pr_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.programa_de_formacion_codigo_pr_seq OWNED BY public.programa_de_formacion.codigo_pr;
          public          postgres    false    226            �            1259    16451    tipo_contrato    TABLE     h   CREATE TABLE public.tipo_contrato (
    codigo_tc integer NOT NULL,
    nombre character varying(20)
);
 !   DROP TABLE public.tipo_contrato;
       public         heap    postgres    false            �            1259    16450    tipo_contrato_codigo_tc_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_contrato_codigo_tc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipo_contrato_codigo_tc_seq;
       public          postgres    false    230            �           0    0    tipo_contrato_codigo_tc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tipo_contrato_codigo_tc_seq OWNED BY public.tipo_contrato.codigo_tc;
          public          postgres    false    229            �           2604    16423    acta_de_inicio codigo_ac    DEFAULT     �   ALTER TABLE ONLY public.acta_de_inicio ALTER COLUMN codigo_ac SET DEFAULT nextval('public.acta_de_inicio_codigo_ac_seq'::regclass);
 G   ALTER TABLE public.acta_de_inicio ALTER COLUMN codigo_ac DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16485    ambiente codigo_am    DEFAULT     x   ALTER TABLE ONLY public.ambiente ALTER COLUMN codigo_am SET DEFAULT nextval('public.ambiente_codigo_am_seq'::regclass);
 A   ALTER TABLE public.ambiente ALTER COLUMN codigo_am DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16461    aprendiz codigo_a    DEFAULT     v   ALTER TABLE ONLY public.aprendiz ALTER COLUMN codigo_a SET DEFAULT nextval('public.aprendiz_codigo_a_seq'::regclass);
 @   ALTER TABLE public.aprendiz ALTER COLUMN codigo_a DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16402    centro codigo_centro    DEFAULT     |   ALTER TABLE ONLY public.centro ALTER COLUMN codigo_centro SET DEFAULT nextval('public.centro_codigo_centro_seq'::regclass);
 C   ALTER TABLE public.centro ALTER COLUMN codigo_centro DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16492    competencias codigo_com    DEFAULT     �   ALTER TABLE ONLY public.competencias ALTER COLUMN codigo_com SET DEFAULT nextval('public.competencias_codigo_com_seq'::regclass);
 F   ALTER TABLE public.competencias ALTER COLUMN codigo_com DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16416    contrato codigo_cont    DEFAULT     |   ALTER TABLE ONLY public.contrato ALTER COLUMN codigo_cont SET DEFAULT nextval('public.contrato_codigo_cont_seq'::regclass);
 C   ALTER TABLE public.contrato ALTER COLUMN codigo_cont DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16437    coordinador codigo_co    DEFAULT     ~   ALTER TABLE ONLY public.coordinador ALTER COLUMN codigo_co SET DEFAULT nextval('public.coordinador_codigo_co_seq'::regclass);
 D   ALTER TABLE public.coordinador ALTER COLUMN codigo_co DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16468    curso_complementario codigo_cu    DEFAULT     �   ALTER TABLE ONLY public.curso_complementario ALTER COLUMN codigo_cu SET DEFAULT nextval('public.curso_complementario_codigo_cu_seq'::regclass);
 M   ALTER TABLE public.curso_complementario ALTER COLUMN codigo_cu DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16430    horario codigo_ho    DEFAULT     v   ALTER TABLE ONLY public.horario ALTER COLUMN codigo_ho SET DEFAULT nextval('public.horario_codigo_ho_seq'::regclass);
 @   ALTER TABLE public.horario ALTER COLUMN codigo_ho DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16478    horario_ambiente codigo_h    DEFAULT     �   ALTER TABLE ONLY public.horario_ambiente ALTER COLUMN codigo_h SET DEFAULT nextval('public.horario_ambiente_codigo_h_seq'::regclass);
 H   ALTER TABLE public.horario_ambiente ALTER COLUMN codigo_h DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16409    instructor cedula    DEFAULT     v   ALTER TABLE ONLY public.instructor ALTER COLUMN cedula SET DEFAULT nextval('public.instructor_cedula_seq'::regclass);
 @   ALTER TABLE public.instructor ALTER COLUMN cedula DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16444    programa_de_formacion codigo_pr    DEFAULT     �   ALTER TABLE ONLY public.programa_de_formacion ALTER COLUMN codigo_pr SET DEFAULT nextval('public.programa_de_formacion_codigo_pr_seq'::regclass);
 N   ALTER TABLE public.programa_de_formacion ALTER COLUMN codigo_pr DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16454    tipo_contrato codigo_tc    DEFAULT     �   ALTER TABLE ONLY public.tipo_contrato ALTER COLUMN codigo_tc SET DEFAULT nextval('public.tipo_contrato_codigo_tc_seq'::regclass);
 F   ALTER TABLE public.tipo_contrato ALTER COLUMN codigo_tc DROP DEFAULT;
       public          postgres    false    230    229    230            x          0    16420    acta_de_inicio 
   TABLE DATA           [   COPY public.acta_de_inicio (codigo_ac, fecha_inicio, descripcion, codigo_cont) FROM stdin;
    public          postgres    false    221   X�       �          0    16482    ambiente 
   TABLE DATA           ?   COPY public.ambiente (codigo_am, nombre, codigo_h) FROM stdin;
    public          postgres    false    239   u�       �          0    16458    aprendiz 
   TABLE DATA           ^   COPY public.aprendiz (codigo_a, nombre, apellido, direccion, telefono, codigo_pr) FROM stdin;
    public          postgres    false    232   ��       �          0    16471    aprendiz_curso_complementario 
   TABLE DATA           L   COPY public.aprendiz_curso_complementario (codigo_a, codigo_cu) FROM stdin;
    public          postgres    false    235   ��       r          0    16399    centro 
   TABLE DATA           7   COPY public.centro (codigo_centro, nombre) FROM stdin;
    public          postgres    false    215   ̌       �          0    16495 "   competencia_programas_de_formacion 
   TABLE DATA           S   COPY public.competencia_programas_de_formacion (codigo_pr, codigo_com) FROM stdin;
    public          postgres    false    242   #�       �          0    16489    competencias 
   TABLE DATA           :   COPY public.competencias (codigo_com, nombre) FROM stdin;
    public          postgres    false    241   @�       v          0    16413    contrato 
   TABLE DATA           ^   COPY public.contrato (codigo_cont, numero, fecha, salario, tipo_contrato, cedula) FROM stdin;
    public          postgres    false    219   ]�       |          0    16434    coordinador 
   TABLE DATA           S   COPY public.coordinador (codigo_co, nombre, apellido, gmail, telefono) FROM stdin;
    public          postgres    false    225   z�       �          0    16465    curso_complementario 
   TABLE DATA           A   COPY public.curso_complementario (codigo_cu, nombre) FROM stdin;
    public          postgres    false    234   ��       z          0    16427    horario 
   TABLE DATA           a   COPY public.horario (codigo_ho, fecha_i, fecha_f, hora_i, hora_f, cedula, codigo_co) FROM stdin;
    public          postgres    false    223   ��       �          0    16475    horario_ambiente 
   TABLE DATA           S   COPY public.horario_ambiente (codigo_h, nombre, hora_inicio, hora_fin) FROM stdin;
    public          postgres    false    237   э       t          0    16406 
   instructor 
   TABLE DATA           t   COPY public.instructor (cedula, nombre, apellido, gmail, telefono, direccion, codigo_centro, codigo_tc) FROM stdin;
    public          postgres    false    217   �                 0    16447     instructor_programa_de_formacion 
   TABLE DATA           M   COPY public.instructor_programa_de_formacion (cedula, codigo_pr) FROM stdin;
    public          postgres    false    228   �       ~          0    16441    programa_de_formacion 
   TABLE DATA           M   COPY public.programa_de_formacion (codigo_pr, nombre, codigo_am) FROM stdin;
    public          postgres    false    227   (�       �          0    16451    tipo_contrato 
   TABLE DATA           :   COPY public.tipo_contrato (codigo_tc, nombre) FROM stdin;
    public          postgres    false    230   E�       �           0    0    acta_de_inicio_codigo_ac_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.acta_de_inicio_codigo_ac_seq', 1, false);
          public          postgres    false    220            �           0    0    ambiente_codigo_am_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ambiente_codigo_am_seq', 1, false);
          public          postgres    false    238            �           0    0    aprendiz_codigo_a_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.aprendiz_codigo_a_seq', 1, false);
          public          postgres    false    231            �           0    0    centro_codigo_centro_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.centro_codigo_centro_seq', 1, false);
          public          postgres    false    214            �           0    0    competencias_codigo_com_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.competencias_codigo_com_seq', 1, false);
          public          postgres    false    240            �           0    0    contrato_codigo_cont_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.contrato_codigo_cont_seq', 1, false);
          public          postgres    false    218            �           0    0    coordinador_codigo_co_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.coordinador_codigo_co_seq', 1, false);
          public          postgres    false    224            �           0    0 "   curso_complementario_codigo_cu_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.curso_complementario_codigo_cu_seq', 1, false);
          public          postgres    false    233            �           0    0    horario_ambiente_codigo_h_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.horario_ambiente_codigo_h_seq', 1, false);
          public          postgres    false    236            �           0    0    horario_codigo_ho_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.horario_codigo_ho_seq', 1, false);
          public          postgres    false    222            �           0    0    instructor_cedula_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.instructor_cedula_seq', 1, false);
          public          postgres    false    216            �           0    0 #   programa_de_formacion_codigo_pr_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.programa_de_formacion_codigo_pr_seq', 1, false);
          public          postgres    false    226            �           0    0    tipo_contrato_codigo_tc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tipo_contrato_codigo_tc_seq', 1, false);
          public          postgres    false    229            �           2606    16425 "   acta_de_inicio acta_de_inicio_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.acta_de_inicio
    ADD CONSTRAINT acta_de_inicio_pkey PRIMARY KEY (codigo_ac);
 L   ALTER TABLE ONLY public.acta_de_inicio DROP CONSTRAINT acta_de_inicio_pkey;
       public            postgres    false    221            �           2606    16487    ambiente ambiente_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.ambiente
    ADD CONSTRAINT ambiente_pkey PRIMARY KEY (codigo_am);
 @   ALTER TABLE ONLY public.ambiente DROP CONSTRAINT ambiente_pkey;
       public            postgres    false    239            �           2606    16463    aprendiz aprendiz_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.aprendiz
    ADD CONSTRAINT aprendiz_pkey PRIMARY KEY (codigo_a);
 @   ALTER TABLE ONLY public.aprendiz DROP CONSTRAINT aprendiz_pkey;
       public            postgres    false    232            �           2606    16404    centro centro_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.centro
    ADD CONSTRAINT centro_pkey PRIMARY KEY (codigo_centro);
 <   ALTER TABLE ONLY public.centro DROP CONSTRAINT centro_pkey;
       public            postgres    false    215            �           2606    16494    competencias competencias_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.competencias
    ADD CONSTRAINT competencias_pkey PRIMARY KEY (codigo_com);
 H   ALTER TABLE ONLY public.competencias DROP CONSTRAINT competencias_pkey;
       public            postgres    false    241            �           2606    16418    contrato contrato_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT contrato_pkey PRIMARY KEY (codigo_cont);
 @   ALTER TABLE ONLY public.contrato DROP CONSTRAINT contrato_pkey;
       public            postgres    false    219            �           2606    16439    coordinador coordinador_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.coordinador
    ADD CONSTRAINT coordinador_pkey PRIMARY KEY (codigo_co);
 F   ALTER TABLE ONLY public.coordinador DROP CONSTRAINT coordinador_pkey;
       public            postgres    false    225            �           2606    16470 .   curso_complementario curso_complementario_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.curso_complementario
    ADD CONSTRAINT curso_complementario_pkey PRIMARY KEY (codigo_cu);
 X   ALTER TABLE ONLY public.curso_complementario DROP CONSTRAINT curso_complementario_pkey;
       public            postgres    false    234            �           2606    16480 &   horario_ambiente horario_ambiente_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.horario_ambiente
    ADD CONSTRAINT horario_ambiente_pkey PRIMARY KEY (codigo_h);
 P   ALTER TABLE ONLY public.horario_ambiente DROP CONSTRAINT horario_ambiente_pkey;
       public            postgres    false    237            �           2606    16432    horario horario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (codigo_ho);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public            postgres    false    223            �           2606    16411    instructor instructor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (cedula);
 D   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_pkey;
       public            postgres    false    217            �           2606    16446 0   programa_de_formacion programa_de_formacion_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.programa_de_formacion
    ADD CONSTRAINT programa_de_formacion_pkey PRIMARY KEY (codigo_pr);
 Z   ALTER TABLE ONLY public.programa_de_formacion DROP CONSTRAINT programa_de_formacion_pkey;
       public            postgres    false    227            �           2606    16456     tipo_contrato tipo_contrato_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tipo_contrato
    ADD CONSTRAINT tipo_contrato_pkey PRIMARY KEY (codigo_tc);
 J   ALTER TABLE ONLY public.tipo_contrato DROP CONSTRAINT tipo_contrato_pkey;
       public            postgres    false    230            �           2606    16508    contrato fk_cedula    FK CONSTRAINT     y   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT fk_cedula FOREIGN KEY (cedula) REFERENCES public.instructor(cedula);
 <   ALTER TABLE ONLY public.contrato DROP CONSTRAINT fk_cedula;
       public          postgres    false    219    3261    217            �           2606    16523    horario fk_cedula_instructor    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_cedula_instructor FOREIGN KEY (cedula) REFERENCES public.instructor(cedula);
 F   ALTER TABLE ONLY public.horario DROP CONSTRAINT fk_cedula_instructor;
       public          postgres    false    217    3261    223            �           2606    16533 7   instructor_programa_de_formacion fk_cedula_instructor_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor_programa_de_formacion
    ADD CONSTRAINT fk_cedula_instructor_2 FOREIGN KEY (cedula) REFERENCES public.instructor(cedula);
 a   ALTER TABLE ONLY public.instructor_programa_de_formacion DROP CONSTRAINT fk_cedula_instructor_2;
       public          postgres    false    3261    228    217            �           2606    16528 "   programa_de_formacion fk_codigo_am    FK CONSTRAINT     �   ALTER TABLE ONLY public.programa_de_formacion
    ADD CONSTRAINT fk_codigo_am FOREIGN KEY (codigo_am) REFERENCES public.ambiente(codigo_am);
 L   ALTER TABLE ONLY public.programa_de_formacion DROP CONSTRAINT fk_codigo_am;
       public          postgres    false    239    3281    227            �           2606    16548 0   aprendiz_curso_complementario fk_codigo_aprendiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.aprendiz_curso_complementario
    ADD CONSTRAINT fk_codigo_aprendiz FOREIGN KEY (codigo_a) REFERENCES public.aprendiz(codigo_a);
 Z   ALTER TABLE ONLY public.aprendiz_curso_complementario DROP CONSTRAINT fk_codigo_aprendiz;
       public          postgres    false    3275    235    232            �           2606    16498    instructor fk_codigo_centro    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT fk_codigo_centro FOREIGN KEY (codigo_centro) REFERENCES public.centro(codigo_centro);
 E   ALTER TABLE ONLY public.instructor DROP CONSTRAINT fk_codigo_centro;
       public          postgres    false    215    217    3259            �           2606    16518    horario fk_codigo_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_codigo_co FOREIGN KEY (codigo_co) REFERENCES public.coordinador(codigo_co);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT fk_codigo_co;
       public          postgres    false    3269    223    225            �           2606    16568 8   competencia_programas_de_formacion fk_codigo_competencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.competencia_programas_de_formacion
    ADD CONSTRAINT fk_codigo_competencia FOREIGN KEY (codigo_com) REFERENCES public.competencias(codigo_com);
 b   ALTER TABLE ONLY public.competencia_programas_de_formacion DROP CONSTRAINT fk_codigo_competencia;
       public          postgres    false    3283    241    242            �           2606    16513    acta_de_inicio fk_codigo_cont    FK CONSTRAINT     �   ALTER TABLE ONLY public.acta_de_inicio
    ADD CONSTRAINT fk_codigo_cont FOREIGN KEY (codigo_cont) REFERENCES public.contrato(codigo_cont);
 G   ALTER TABLE ONLY public.acta_de_inicio DROP CONSTRAINT fk_codigo_cont;
       public          postgres    false    219    3263    221            �           2606    16553 -   aprendiz_curso_complementario fk_codigo_curso    FK CONSTRAINT     �   ALTER TABLE ONLY public.aprendiz_curso_complementario
    ADD CONSTRAINT fk_codigo_curso FOREIGN KEY (codigo_cu) REFERENCES public.curso_complementario(codigo_cu);
 W   ALTER TABLE ONLY public.aprendiz_curso_complementario DROP CONSTRAINT fk_codigo_curso;
       public          postgres    false    3277    235    234            �           2606    16558    ambiente fk_codigo_horario    FK CONSTRAINT     �   ALTER TABLE ONLY public.ambiente
    ADD CONSTRAINT fk_codigo_horario FOREIGN KEY (codigo_h) REFERENCES public.horario_ambiente(codigo_h);
 D   ALTER TABLE ONLY public.ambiente DROP CONSTRAINT fk_codigo_horario;
       public          postgres    false    237    3279    239            �           2606    16538 -   instructor_programa_de_formacion fk_codigo_pr    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor_programa_de_formacion
    ADD CONSTRAINT fk_codigo_pr FOREIGN KEY (codigo_pr) REFERENCES public.programa_de_formacion(codigo_pr);
 W   ALTER TABLE ONLY public.instructor_programa_de_formacion DROP CONSTRAINT fk_codigo_pr;
       public          postgres    false    3271    227    228            �           2606    16543    aprendiz fk_codigo_programa    FK CONSTRAINT     �   ALTER TABLE ONLY public.aprendiz
    ADD CONSTRAINT fk_codigo_programa FOREIGN KEY (codigo_pr) REFERENCES public.programa_de_formacion(codigo_pr);
 E   ALTER TABLE ONLY public.aprendiz DROP CONSTRAINT fk_codigo_programa;
       public          postgres    false    227    3271    232            �           2606    16503    instructor fk_codigo_tc    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT fk_codigo_tc FOREIGN KEY (codigo_tc) REFERENCES public.tipo_contrato(codigo_tc);
 A   ALTER TABLE ONLY public.instructor DROP CONSTRAINT fk_codigo_tc;
       public          postgres    false    3273    230    217            �           2606    16563 ;   competencia_programas_de_formacion fk_programa_de_formacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.competencia_programas_de_formacion
    ADD CONSTRAINT fk_programa_de_formacion FOREIGN KEY (codigo_pr) REFERENCES public.programa_de_formacion(codigo_pr);
 e   ALTER TABLE ONLY public.competencia_programas_de_formacion DROP CONSTRAINT fk_programa_de_formacion;
       public          postgres    false    227    3271    242            x      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      r   G   x�3�t�Sp�,N=�$���I-N,*�����2�CR���s��-L�2	x楔�e&�p�"����� ��      �      x������ � �      �      x������ � �      v      x������ � �      |      x������ � �      �      x������ � �      z      x������ � �      �      x������ � �      t      x������ � �            x������ � �      ~      x������ � �      �      x������ � �     