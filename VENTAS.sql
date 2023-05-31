PGDMP                         {            VENTAS    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17208    VENTAS    DATABASE     d   CREATE DATABASE "VENTAS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "VENTAS";
                postgres    false            �            1259    17209    book    TABLE     -  CREATE TABLE public.book (
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
       public         heap    postgres    false            �            1259    17216 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id_sales_item integer NOT NULL,
    price character varying(50),
    downs_ava integer,
    id_book integer,
    id_sales_order integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    17228    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id_sales_order integer NOT NULL,
    total character varying(50),
    payment_status character varying(45),
    created_at date,
    id_userr integer
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    17221    userr    TABLE     =  CREATE TABLE public.userr (
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
       public         heap    postgres    false            �          0    17209    book 
   TABLE DATA           x   COPY public.book (id_book, title, slug, description, price, cover_path, file_patch, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �       �          0    17216 
   sales_item 
   TABLE DATA           ^   COPY public.sales_item (id_sales_item, price, downs_ava, id_book, id_sales_order) FROM stdin;
    public          postgres    false    210                     0    17228    sales_order 
   TABLE DATA           b   COPY public.sales_order (id_sales_order, total, payment_status, created_at, id_userr) FROM stdin;
    public          postgres    false    212   f       �          0    17221    userr 
   TABLE DATA           y   COPY public.userr (id_userr, firstname, lastname, fullname, email, passwordd, rolee, created_at, updated_at) FROM stdin;
    public          postgres    false    211   �       h           2606    17215    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            j           2606    17220    sales_item sales_item_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_sales_item);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    210            n           2606    17232    sales_order sales_order_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_sales_order);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    212            l           2606    17227    userr userr_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.userr
    ADD CONSTRAINT userr_pkey PRIMARY KEY (id_userr);
 :   ALTER TABLE ONLY public.userr DROP CONSTRAINT userr_pkey;
       public            postgres    false    211            o           2606    17233    sales_item fk_id_book    FK CONSTRAINT     x   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_id_book FOREIGN KEY (id_book) REFERENCES public.book(id_book);
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_id_book;
       public          postgres    false    3176    210    209            p           2606    17238    sales_item fk_id_sales_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_id_sales_order FOREIGN KEY (id_sales_order) REFERENCES public.sales_order(id_sales_order);
 F   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_id_sales_order;
       public          postgres    false    3182    210    212            q           2606    17243    sales_order fk_id_userr    FK CONSTRAINT     }   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_id_userr FOREIGN KEY (id_userr) REFERENCES public.userr(id_userr);
 A   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_id_userr;
       public          postgres    false    211    3180    212            �   S  x�m�=r� Fkt

��~&HJwI�f%66�ʀr��!�X8���j�}O��BH���r��"�rO(���!�zp�G�^+t���D|��ip�'@�]#�^��L<���?��G�Y}���֢���z�j!k�TR�����E�)�f�,;�`�k��eAn�E�������-#`�+��,��f�BW^�{�"vE�-�m</`�ژJ�X�Ţ�r�Eb�#�]������yS�/�pYޱ�㳘2��n '��|�r4&rq~���'��"�@���d˒ݳW�G��O3���_Ǜ���'r��.r�O������o��"����~ #&��      �   Q   x�%ɹ�0�X�C��N��^��q�K��`�2�&�$�"O�lU�RUu�U�J�}���V�j,�ԞV�j�]��B�          V   x�E̹�0C�ښC�ꊑ]�����X��ÆZ- C�:9m� L�ጚ��l��^|�FqP2����(*F����<KD^�[�      �     x�]��n� ��������ئ顇��z�e�֐(����������|󣄐��4��.0kn�Qf�&��f��@09���4Π'��_KC�V��zm�Gb��E%�J�C)+!+YJ���MhX�S]�z�5����j�>�Ǐ�4�����H�v����b�l�ɰ��6>�}��ݚ�|����X��6����=�q��C��+_��?�?�Jy0�ތu�t�s�d�:�'����_�FQf1x��&d-�|��ɽ�ا�N8F��@=$�/�����     