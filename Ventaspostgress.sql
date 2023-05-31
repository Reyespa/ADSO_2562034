PGDMP     *                    {         
   Biblioteca    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24620 
   Biblioteca    DATABASE     �   CREATE DATABASE "Biblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Biblioteca";
                postgres    false                        3079    24621 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            I           1247    24632    payment_status    TYPE     Z   CREATE TYPE public.payment_status AS ENUM (
    'pending',
    'paid',
    'cancelled'
);
 !   DROP TYPE public.payment_status;
       public          postgres    false            L           1247    24640    role    TYPE     =   CREATE TYPE public.role AS ENUM (
    'user',
    'admin'
);
    DROP TYPE public.role;
       public          postgres    false            �            1259    24645    books    TABLE     ;  CREATE TABLE public.books (
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
       public         heap    postgres    false            �            1259    24650 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    24653    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status public.payment_status,
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false    841            �            1259    24656    user    TABLE     2  CREATE TABLE public."user" (
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
       public         heap    postgres    false    844                      0    24645    books 
   TABLE DATA           s   COPY public.books (id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    215   !                 0    24650 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    216   X                 0    24653    sales_order 
   TABLE DATA           Y   COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    217   �                 0    24656    user 
   TABLE DATA           r   COPY public."user" (id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �       x           2606    24660    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    215            z           2606    24662    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    216            |           2606    24664    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    217            ~           2606    24666    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    218            �           2606    24667    sales_order fk_user    FK CONSTRAINT     w   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_user FOREIGN KEY (customer_id) REFERENCES public."user"(id);
 =   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_user;
       public          postgres    false    3198    217    218                       2606    24672 "   sales_item sales_item_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);
 L   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_book_id_fkey;
       public          postgres    false    3192    216    215            �           2606    24677 #   sales_item sales_item_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.sales_order(id);
 M   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_order_id_fkey;
       public          postgres    false    217    216    3196               '  x���o�0���x��B[v�PQi�*��N��b{;�MY���xZ�Z5�WG�?�󇗤�^"��R�Z� ]
�M�Tvcx��D���k�᎛���@��pvRy�v���������L[z �!ly�4����!,�:?�+���R4=�w,�]=%/�鉽�h8'�I2:���]٤�f����(�Z���j����|�r�`c�Ϲ�??P��%ѐ��'�&O�M��br2d����.H �胳yrQőoVX㛞�KG{�|� Z��]C�D�2o�h�q4䍥.��\|UF��XM4�&���2\wЏ�:y��R-�o
j)�'_:���`�Thj�^���M��=t�yP -s�~vyH�2'��DCf���g�5p�b�+Z����Ӆ0��\zu�Џ�zmH0d]K𚻒�D(7�ڇ_�����i�����_C+�n�(�Cr���e���I�ѣ��[*��8G�­�"I��i��������)Go骄[�M�=����*�Z��c�H�j!�DC~��z�_S:�         1   x�ȱ 0���bo�����*]mv8sBA�
kn����h         M   x�3�4�440�,H�L�4202�50�52S04�21�2��2�B��Լ�̼t�j�9���N $�Ɣ�9&F��� ,�$�         �  x���j�@�ϳO�(ɚ�� X
z�ek�1�$Z۷o&�Rۡ���a���#���:�q�²�ZoQ�\��C�������v�*�V�LU�2����:(8T���a��:���$�'�GՔ�����,ݯ٫oQ�\��C*��q#G���I�C{5�����!,L��7��)�W7ޢ� �C6�!#����I�`�XSL��o�\�NM�;��[�"����S�U6~���ю:*M��5��P�%�eq�n�E=bA�!����d��G��ٞ:)�!��f�=M����|0ZoQ�X�`�fH��=_;�S'E�``ME�HWkc�ӤygT��ޢ.� kC6m�8.FI�dC]	FH��55��)��!�c��n/Pa��q��$��fG	ƈ k*�'��%���U�z�zĂ��<�<K.F�m�� ��0��|M�b?X�>Ol�'oQ�X�c�9e�?�,��$c�����R���S]     