PGDMP         '                {            ventas    14.8    14.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17128    ventas    DATABASE     e   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    17129    book    TABLE     b  CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(200),
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    17148 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    17143    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character varying(200),
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    17136    usuario    TABLE     e  CREATE TABLE public.usuario (
    id integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role character varying(50),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �          0    17129    book 
   TABLE DATA           r   COPY public.book (id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �                  0    17148 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    212   �       �          0    17143    sales_order 
   TABLE DATA           Y   COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    211   �       �          0    17136    usuario 
   TABLE DATA           s   COPY public.usuario (id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    210   _       h           2606    17135    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            n           2606    17152    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    212            l           2606    17147    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    211            j           2606    17142    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    210            p           2606    17153    sales_item fk_sales_item_book    FK CONSTRAINT     {   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_book FOREIGN KEY (book_id) REFERENCES public.book(id);
 G   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item_book;
       public          postgres    false    3176    212    209            q           2606    17158    sales_item fk_sales_item_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_order FOREIGN KEY (order_id) REFERENCES public.sales_order(id);
 H   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item_order;
       public          postgres    false    3180    212    211            o           2606    17163 #   sales_order fk_sales_order_customer    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_sales_order_customer FOREIGN KEY (customer_id) REFERENCES public.usuario(id);
 M   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_sales_order_customer;
       public          postgres    false    210    3178    211            �   �   x���=�0��9E.��	(�9Ki*� 
�B����)UX:Yz~z�v�!]5���¶��i���|\t׏z���Ԭ�5MMנ9��/�����d�+�+
�f��5�`����	�B%�{e�B ,� 3g^�p�p�p%�t9�e� ���K4���@�F)��9��          8   x���	 0��]1O��K��#*��`S�*$��r:���D�b$&r�*����
�      �   \   x�3�4�440�H�K�L�+I�4202�50�5�T04�2!=s3CcK.#�bS����Ĕ||
�9�8�M�3Ԅ�ڀSM�����=... �x/      �   �   x��Ͻ�0���p�m!Q'cp!qrpq��	%�!TE�^��Fd{�t�N1Զ5PY�<�	܊�x1�+�5VCϜ��10�����eJ�����f� d�<%jf�����(���7	<����p�M˄
�s�̍�ֱ����5p�R��0��D�h�}�\\-֬�P���p��2��1/�k��Y�$����     