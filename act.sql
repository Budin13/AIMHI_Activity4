PGDMP     
    :                {            ActivityData    13.11    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16726    ActivityData    DATABASE     �   CREATE DATABASE "ActivityData" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Philippines.1252';
    DROP DATABASE "ActivityData";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16734 
   DataSource    TABLE     y  CREATE TABLE public."DataSource" (
    id integer NOT NULL,
    "Ref" character varying(200) NOT NULL,
    "Status" character varying(250) NOT NULL,
    "Location" character varying(250) NOT NULL,
    "Name" character varying(250) NOT NULL,
    "Created" character varying(250) NOT NULL,
    "Type" character varying(250) NOT NULL,
    "Status_Changed" character varying(250) NOT NULL,
    "Open_Actions" character varying(250) NOT NULL,
    "Total_Actions" character varying(250) NOT NULL,
    "Association" character varying(250),
    "OverDue" character varying(250) NOT NULL,
    "Images" character varying(250) NOT NULL,
    "Comments" character varying(250) NOT NULL,
    "Documents" character varying(250) NOT NULL,
    "Project" character varying(250) NOT NULL,
    "Report_Forms_Status" character varying(250) NOT NULL,
    "Report_Forms_Group" character varying(250) NOT NULL
);
     DROP TABLE public."DataSource";
       public         heap    postgres    false    4            �            1259    16732    DataSource_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DataSource_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."DataSource_id_seq";
       public          postgres    false    202    4            �           0    0    DataSource_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."DataSource_id_seq" OWNED BY public."DataSource".id;
          public          postgres    false    201            �            1259    16727    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false    4            '           2604    16737    DataSource id    DEFAULT     r   ALTER TABLE ONLY public."DataSource" ALTER COLUMN id SET DEFAULT nextval('public."DataSource_id_seq"'::regclass);
 >   ALTER TABLE public."DataSource" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            �          0    16734 
   DataSource 
   TABLE DATA           
  COPY public."DataSource" (id, "Ref", "Status", "Location", "Name", "Created", "Type", "Status_Changed", "Open_Actions", "Total_Actions", "Association", "OverDue", "Images", "Comments", "Documents", "Project", "Report_Forms_Status", "Report_Forms_Group") FROM stdin;
    public          postgres    false    202   �       �          0    16727    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    200   �       �           0    0    DataSource_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DataSource_id_seq"', 30765, true);
          public          postgres    false    201            +           2606    16742    DataSource DataSource_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."DataSource"
    ADD CONSTRAINT "DataSource_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."DataSource" DROP CONSTRAINT "DataSource_pkey";
       public            postgres    false    202            )           2606    16731 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    200            �      x������ � �      �      x�K�40�0NL6�H5����� *��     