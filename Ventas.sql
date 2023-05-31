PGDMP     2    &                {            ventas    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16565    ventas    DATABASE     |   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            Q           1247    16595    payment_status    TYPE     M   CREATE TYPE public.payment_status AS ENUM (
    'pagado',
    'pendiente'
);
 !   DROP TYPE public.payment_status;
       public          postgres    false            K           1247    16574    role    TYPE     =   CREATE TYPE public.role AS ENUM (
    'admin',
    'user'
);
    DROP TYPE public.role;
       public          postgres    false            �            1259    16566    books    TABLE     ;  CREATE TABLE public.books (
    id integer NOT NULL,
    title character(250),
    slug character(250),
    description character(250),
    price double precision,
    cover_path character(250),
    file_path character(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    16604 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16599    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status public.payment_status,
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false    849            �            1259    16579    user    TABLE     2  CREATE TABLE public."user" (
    id integer NOT NULL,
    firstname character(45),
    lastname character(45),
    fullname character(100),
    email character(45),
    password character(250),
    role public.role,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public."user";
       public         heap    postgres    false    843                      0    16566    books 
   TABLE DATA           s   COPY public.books (id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �                 0    16604 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    217   �                 0    16599    sales_order 
   TABLE DATA           Y   COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    216   �                 0    16579    user 
   TABLE DATA           r   COPY public."user" (id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    215   M       w           2606    16572    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    214            }           2606    16608    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    217            {           2606    16603    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    216            y           2606    16583    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215            ~           2606    16609 "   sales_item sales_item_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);
 L   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_book_id_fkey;
       public          postgres    false    214    3191    217                       2606    16614 #   sales_item sales_item_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.sales_order(id);
 M   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_order_id_fkey;
       public          postgres    false    217    216    3195               �  x��AN�@@��)����*eg�h��­���4C�N�i5p5��'�EI��.�Ф��t��ퟗ��%�X��b-�,+ Q�NY*5��ڥ~/_P0@)�3Ȥ�k6UE�TQ��`\����N���5��0$ݨ�JwM[�̳��1��θ�̳x��|G���ߣn@�|o�þ��³�=��U�'^8�7=|3ج��ɘ���x�WL�*A��W�m��~�v%�%hw��Trm��*�s`%{�J@�XZ�!r=]4�qJ
Z���>u�er��C$�F<_&�������\%ww��\n"�gnC.�d�LTR!a��y�#.�v9D~���N��[�"\:Ǵ�q�@��v$;��Rn"i2oy)�d@�,g
)��k,WՁ��T�SF����S{���a*Cw�m�duR��Jv��J���+i����t>IW�f         1   x�ȱ 0���bo�����*]mv8sBA�
kn����h         J   x�3�4�440�,H�K�L�+I�4202�50�52S04�21�2��2�B���9���*N $�ʔ	������ �+�         7  x�͖Aj�0EףS�	�d�U��$���F�c�`������$=�OV'(P�RF�^�?�=V���#*����x��@;~����i�~�f[��m�>�E�S�23g`�s����FI�����p����s�w�h��"���@iENFe�oz�eָ�H2�D�֘��
˖,�R�;r���W�7���P�Ӿ�}�͌q�!�T����^U��T����sK�����5z��J<@�Ԕ�A��72��ΰ5&a��xR��<b�ǣΉ����_�/�(S)�mc��3hL+���M&�p�{[2ƾ ǥ�     