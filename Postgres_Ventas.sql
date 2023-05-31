PGDMP     *                    {            Ventas    14.8    14.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16396    Ventas    DATABASE     g   CREATE DATABASE "Ventas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Ventas";
                postgres    false            �            1259    16482    book    TABLE     -  CREATE TABLE public.book (
    id_book integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description text,
    price character varying(50),
    cover_path character varying(250),
    file_patch character varying(250),
    created_at date,
    updated_at date
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16489 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id_sales_item integer NOT NULL,
    price character varying(50),
    downs_ava integer,
    id_book integer,
    id_sales_order integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16501    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id_sales_order integer NOT NULL,
    total character varying(50),
    payment_status character varying(45),
    created_at date,
    id_userr integer
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16494    userr    TABLE     =  CREATE TABLE public.userr (
    id_userr integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    passwordd character varying(250),
    rolee character varying(45),
    created_at date,
    updated_at date
);
    DROP TABLE public.userr;
       public         heap    postgres    false            �          0    16482    book 
   TABLE DATA           x   COPY public.book (id_book, title, slug, description, price, cover_path, file_patch, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �       �          0    16489 
   sales_item 
   TABLE DATA           ^   COPY public.sales_item (id_sales_item, price, downs_ava, id_book, id_sales_order) FROM stdin;
    public          postgres    false    210   :                  0    16501    sales_order 
   TABLE DATA           b   COPY public.sales_order (id_sales_order, total, payment_status, created_at, id_userr) FROM stdin;
    public          postgres    false    212   �       �          0    16494    userr 
   TABLE DATA           y   COPY public.userr (id_userr, firstname, lastname, fullname, email, passwordd, rolee, created_at, updated_at) FROM stdin;
    public          postgres    false    211          h           2606    16488    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            j           2606    16493    sales_item sales_item_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_sales_item);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    210            n           2606    16505    sales_order sales_order_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_sales_order);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    212            l           2606    16500    userr userr_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id_userr);
 :   ALTER TABLE ONLY public.userr DROP CONSTRAINT userr_pkey;
       public            postgres    false    211            o           2606    16506    sales_item fk_id_book    FK CONSTRAINT     x   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_id_book FOREIGN KEY (id_book) REFERENCES public.book(id_book);
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_id_book;
       public          postgres    false    3176    210    209            p           2606    16511    sales_item fk_id_sales_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_id_sales_order FOREIGN KEY (id_sales_order) REFERENCES public.sales_order(id_sales_order);
 F   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_id_sales_order;
       public          postgres    false    3182    210    212            q           2606    16516    sales_order fk_id_userr    FK CONSTRAINT     }   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_id_userr FOREIGN KEY (id_userr) REFERENCES public.userr(id_userr);
 A   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_id_userr;
       public          postgres    false    211    3180    212            �   �  x�m�=r�0�k�[���D%}RzƅS�Y�+K��3:N��#�bY���8�]��`�z	����@�l;���6e�f�>�� �K��ȑ��|z�	�G�u{�쩓	K���G�d~��Z�lw���������U�uS�]%��V�T�^�Z�f��9��N�o�z���g�! 6&�t���#�
���z��dOg���mc��me~L��oS��=�!/���,\��т�"�l�꩹qLw�|�J�XZ��ݻ�zo�����8�h����Ҷ#�,���Rр���Y�=B/��Y&FQF�4M�E�,�E��}�-p��\����hN�4�{`�CbP~���p|�[8�#������@���^�V� #���      �   R   x�=���0�7�����8iw��s4R�>9$�3FD�Y�Q�1��Y�+(�X���Te����$���[��f��4�          _   x�=λ�0��u���d��?Gr��BO:`Fbu�*��w]5�bXS�1�I��	r,r�A�$ы�$�� v{ї�$�`d��N���|�� ��,      �   �   x�e�Ar� E����=鲙^�%P�\2�^ħ{��K����g`?v��e��RD�MK���?�iho~,u�}y94>0�o�j��Bh84 *��X����C�ˢ��z��<8�Mɀ�c
�m�|�����I�����,�H!�yK�mI�8�m��w��-�B�n����������,��b=Q�;��O�v�|O"�>"y�ޭQ��R���͙�f$G��}�iG��n��zg2�Q     