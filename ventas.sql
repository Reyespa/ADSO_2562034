PGDMP         .                {            ventas    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16636    ventas    DATABASE     b   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    16637    book    TABLE     ?  CREATE TABLE public.book (
    book_id integer NOT NULL,
    title character(250),
    slug character(250),
    description character(200),
    price double precision,
    cover_path character(250),
    file_path character(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16644 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    item_id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16649    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    order_id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character(10),
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16654    usuario    TABLE     7  CREATE TABLE public.usuario (
    usuario_id integer NOT NULL,
    firstname character(45),
    lastname character(45),
    fullname character(100),
    email character(45),
    password character(250),
    role integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �          0    16637    book 
   TABLE DATA           w   COPY public.book (book_id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �       �          0    16644 
   sales_item 
   TABLE DATA           R   COPY public.sales_item (item_id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    210   9       �          0    16649    sales_order 
   TABLE DATA           _   COPY public.sales_order (order_id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    211   �                  0    16654    usuario 
   TABLE DATA           {   COPY public.usuario (usuario_id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    212           h           2606    16643    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            j           2606    16648    sales_item sales_item_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (item_id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    210            l           2606    16653    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (order_id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    211            n           2606    16658    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuario_id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    212            o           2606    16659    sales_item fk_book_id    FK CONSTRAINT     x   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES public.book(book_id);
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_book_id;
       public          postgres    false    209    210    3176            q           2606    16669    sales_order fk_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public.usuario(usuario_id);
 D   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_customer_id;
       public          postgres    false    3182    212    211            p           2606    16664    sales_item fk_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(order_id);
 @   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_order_id;
       public          postgres    false    3180    210    211            �   �   x���1�0��zs
. � #g�ј�8�Q�>��),v&���U���^K��w��E�}�H����a�S|���_���h'�B�q���I�?"g�k;Ԯ��G���o뾛q Nc ��@\���iĕ��ׁ8���2qy�z�1WF .Oܡ1�l�H�      �   9   x����0���0��؎�K���'~�cq�x��Ms")]Eٷ�4;|��e�}!�"	�      �   n   x�U���@�N4�+;�oj��:�		|�x�ë���R��CJ1Ih���o��p��=%���7|l�����6��m���������m�l*�m�;��Y��<J�          #  x�͖MN!��p���L�m{Xy78�d�2���"n�&޲B�z���V�]�D��>ɧ�wSK�r�4I�_V��3�����~aF�L	!B���r�䴪5=����I�;�-��9x����M=�J�� E���/��bK!��T��	㴨5���B0�������ad�л��/�C�m(TT�4�ͅ [w����TX��BIn�����{�PWp�njiW��F��\�'T�,C��B��vž�Q�������s����_���T�0#��B�]�Bgj훊�?9�_ꅖ�     