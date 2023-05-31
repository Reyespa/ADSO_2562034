PGDMP                          {            ventas    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    ventas    DATABASE     b   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    16412    book    TABLE     g  CREATE TABLE public.book (
    book_id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(300),
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16431 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16419    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    order_id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character varying(300),
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16424    usuario    TABLE     o  CREATE TABLE public.usuario (
    customer_id integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role character varying(200),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �          0    16412    book 
   TABLE DATA           w   COPY public.book (book_id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �                  0    16431 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    212   �       �          0    16419    sales_order 
   TABLE DATA           _   COPY public.sales_order (order_id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    210          �          0    16424    usuario 
   TABLE DATA           |   COPY public.usuario (customer_id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    211   �       h           2606    16418    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            n           2606    16435    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    212            j           2606    16423    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (order_id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    210            l           2606    16430    usuario usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (customer_id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    211            p           2606    16441    sales_item fk_book_id    FK CONSTRAINT     x   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES public.book(book_id);
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_book_id;
       public          postgres    false    3176    212    209            o           2606    16436    sales_order fk_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public.usuario(customer_id);
 D   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_customer_id;
       public          postgres    false    3180    210    211            q           2606    16446    sales_item fk_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(order_id);
 @   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_order_id;
       public          postgres    false    210    3178    212            �   �   x�}�K� ��5�����.��p�ժ�D��ɬ�4$$���f;���q�Z4��}zM�3��e�!gS���4�­\�<N���GC�|�BK���w��e�\I��%qI�d�5L�u�0��Q%Y/��+��{�װ_�qY��dY`��Iìa^�!%�"V������}u�pX���E�*���Z� �i          ;   x��� 1�7c-sH;�8�8l,^�F�ݬ�c �2���_�Y�k��l��{*���=
�      �   z   x�}�9�@@��>�5��v�BGF	B
�/�6"���g`(��m��m��4ѩ�$��17�E�؅Ԩ.��v���
)��D�/�۶F��[��F����b��n$!�τ�oT+2D      �   �   x�}��n� ���S�A.1�U�"u�Х5T&2�����?JT)���8����pHnt
�1�ݯ	�ޱ6����i�\H��n Q	���Fl)�w��	͚
Qɕ�8����W7G����>T�'>Y3ld��JE$̏���B�Fv����|||����JENf0����&���E��h�V�!�.|�"
^}���ː��Ft��PQl�gQ,���+����;#����F     