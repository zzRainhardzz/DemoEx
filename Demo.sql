PGDMP                        }         
   Demoexamen    17.0    17.0 Z    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            _           1262    16802 
   Demoexamen    DATABASE     �   CREATE DATABASE "Demoexamen" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Demoexamen";
                     postgres    false            �            1259    16926    Доступ    TABLE     �   CREATE TABLE public."Доступ" (
    "id_Доступа" integer NOT NULL,
    "id_Кадров" integer,
    "Перемещения" text,
    "Дата_доступа" date
);
 "   DROP TABLE public."Доступ";
       public         heap r       postgres    false            �            1259    16925 "   Доступ_id_Доступа_seq    SEQUENCE     �   CREATE SEQUENCE public."Доступ_id_Доступа_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Доступ_id_Доступа_seq";
       public               postgres    false    238            `           0    0 "   Доступ_id_Доступа_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."Доступ_id_Доступа_seq" OWNED BY public."Доступ"."id_Доступа";
          public               postgres    false    237            �            1259    16886    Заявки    TABLE     �  CREATE TABLE public."Заявки" (
    "id_Заявки" integer NOT NULL,
    "id_Партнера" integer,
    "id_Продукции" integer,
    "Дата_создания" date,
    "Оплата" numeric(10,2),
    "Статус" character varying(50),
    "Продукция" text,
    "Произвел" integer,
    "ФИО_менеджера" character varying(255)
);
 "   DROP TABLE public."Заявки";
       public         heap r       postgres    false            �            1259    16885     Заявки_id_Заявки_seq    SEQUENCE     �   CREATE SEQUENCE public."Заявки_id_Заявки_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Заявки_id_Заявки_seq";
       public               postgres    false    232            a           0    0     Заявки_id_Заявки_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Заявки_id_Заявки_seq" OWNED BY public."Заявки"."id_Заявки";
          public               postgres    false    231            �            1259    16914 
   Кадры    TABLE     �   CREATE TABLE public."Кадры" (
    "id_Кадров" integer NOT NULL,
    "id_Сотрудника" integer,
    "Тип_доступа" character varying(50)
);
     DROP TABLE public."Кадры";
       public         heap r       postgres    false            �            1259    16913    Кадры_id_Кадров_seq    SEQUENCE     �   CREATE SEQUENCE public."Кадры_id_Кадров_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Кадры_id_Кадров_seq";
       public               postgres    false    236            b           0    0    Кадры_id_Кадров_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Кадры_id_Кадров_seq" OWNED BY public."Кадры"."id_Кадров";
          public               postgres    false    235            �            1259    16825    Материалы    TABLE     �  CREATE TABLE public."Материалы" (
    "id_Материала" integer NOT NULL,
    "id_Склада" integer,
    "Тип" character varying(50),
    "Наименование" character varying(255),
    "Количество_в_упаковке" integer,
    "Единица_измерения" character varying(50),
    "Описание" text,
    "Стоимость" numeric(10,2),
    "Процент_брака" numeric(5,2)
);
 (   DROP TABLE public."Материалы";
       public         heap r       postgres    false            �            1259    16824 ,   Материалы_id_Материала_seq    SEQUENCE     �   CREATE SEQUENCE public."Материалы_id_Материала_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."Материалы_id_Материала_seq";
       public               postgres    false    222            c           0    0 ,   Материалы_id_Материала_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Материалы_id_Материала_seq" OWNED BY public."Материалы"."id_Материала";
          public               postgres    false    221            �            1259    16877    Партнеры    TABLE     �  CREATE TABLE public."Партнеры" (
    "id_Партнера" integer NOT NULL,
    "Тип" character varying(50),
    "Наименование_компании" character varying(255),
    "Юридический_адрес" text,
    "ИНН" character varying(20),
    "ФИО_директора" character varying(255),
    "Телефон" character varying(20),
    email character varying(100),
    "Рейтинг" integer,
    "Юридический_адрес_повторный" text
);
 &   DROP TABLE public."Партнеры";
       public         heap r       postgres    false            �            1259    16876 (   Партнеры_id_Партнера_seq    SEQUENCE     �   CREATE SEQUENCE public."Партнеры_id_Партнера_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."Партнеры_id_Партнера_seq";
       public               postgres    false    230            d           0    0 (   Партнеры_id_Партнера_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."Партнеры_id_Партнера_seq" OWNED BY public."Партнеры"."id_Партнера";
          public               postgres    false    229            �            1259    16804    Поставщики    TABLE     
  CREATE TABLE public."Поставщики" (
    "id_Поставщика" integer NOT NULL,
    "Тип" character varying(50),
    "Наименование" character varying(255),
    "ИНН" character varying(20),
    "История_поставок" text
);
 *   DROP TABLE public."Поставщики";
       public         heap r       postgres    false            �            1259    16803 0   Поставщики_id_Поставщика_seq    SEQUENCE     �   CREATE SEQUENCE public."Поставщики_id_Поставщика_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."Поставщики_id_Поставщика_seq";
       public               postgres    false    218            e           0    0 0   Поставщики_id_Поставщика_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Поставщики_id_Поставщика_seq" OWNED BY public."Поставщики"."id_Поставщика";
          public               postgres    false    217            �            1259    16865    Продажи    TABLE     �  CREATE TABLE public."Продажи" (
    "id_Продажи" integer NOT NULL,
    "id_Продукции" integer,
    "id_Партнера" integer,
    "Наименование_партнера" character varying(255),
    "Количество_проданной_продукции" integer,
    "Дата_продажи" date,
    "Продукция" character varying(255)
);
 $   DROP TABLE public."Продажи";
       public         heap r       postgres    false            �            1259    16864 $   Продажи_id_Продажи_seq    SEQUENCE     �   CREATE SEQUENCE public."Продажи_id_Продажи_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Продажи_id_Продажи_seq";
       public               postgres    false    228            f           0    0 $   Продажи_id_Продажи_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."Продажи_id_Продажи_seq" OWNED BY public."Продажи"."id_Продажи";
          public               postgres    false    227            �            1259    16846    Продукция    TABLE     �  CREATE TABLE public."Продукция" (
    "id_Продукции" integer NOT NULL,
    "id_Материала" integer,
    "id_Типа" integer,
    "Артикул" character varying(50),
    "Тип" character varying(50),
    "Наименование" character varying(255),
    "Описание" text,
    "Минимальная_стоимость_для_партнер" numeric(10,2),
    "Размер_упаковки" integer,
    "Вес_без_упаковки" numeric(10,2),
    "Вес_с_упаковкой" numeric(10,2),
    "Сертификат_качества" text,
    "Номер_стандарта" character varying(50),
    "Время_изготовления" integer,
    "Себестоимость" numeric(10,2),
    "Номер_цеха" integer,
    "Количество_человек_на_производств" integer,
    "Необходимые_материалы_для_произво" text
);
 (   DROP TABLE public."Продукция";
       public         heap r       postgres    false            �            1259    16845 ,   Продукция_id_Продукции_seq    SEQUENCE     �   CREATE SEQUENCE public."Продукция_id_Продукции_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."Продукция_id_Продукции_seq";
       public               postgres    false    226            g           0    0 ,   Продукция_id_Продукции_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Продукция_id_Продукции_seq" OWNED BY public."Продукция"."id_Продукции";
          public               postgres    false    225            �            1259    16813 
   Склад    TABLE       CREATE TABLE public."Склад" (
    "id_Склада" integer NOT NULL,
    "id_Поставщика" integer,
    "Количество_на_складе" integer,
    "Тип" character varying(50),
    "Наименование" character varying(255)
);
     DROP TABLE public."Склад";
       public         heap r       postgres    false            �            1259    16812    Склад_id_Склада_seq    SEQUENCE     �   CREATE SEQUENCE public."Склад_id_Склада_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Склад_id_Склада_seq";
       public               postgres    false    220            h           0    0    Склад_id_Склада_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Склад_id_Склада_seq" OWNED BY public."Склад"."id_Склада";
          public               postgres    false    219            �            1259    16905    Сотрудники    TABLE     �  CREATE TABLE public."Сотрудники" (
    "id_Сотрудника" integer NOT NULL,
    "Должность" character varying(50),
    "ФИО" character varying(255),
    "Дата_рождения" date,
    "Паспортные_данные" character varying(100),
    "Банковские_реквизиты" text,
    "Наличие_семьи" boolean,
    "Состояние_здоровья" text,
    "Логин" character varying(50),
    "Пароль" character varying(50)
);
 *   DROP TABLE public."Сотрудники";
       public         heap r       postgres    false            �            1259    16904 0   Сотрудники_id_Сотрудника_seq    SEQUENCE     �   CREATE SEQUENCE public."Сотрудники_id_Сотрудника_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."Сотрудники_id_Сотрудника_seq";
       public               postgres    false    234            i           0    0 0   Сотрудники_id_Сотрудника_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Сотрудники_id_Сотрудника_seq" OWNED BY public."Сотрудники"."id_Сотрудника";
          public               postgres    false    233            �            1259    16839    Тип_продукции    TABLE     �   CREATE TABLE public."Тип_продукции" (
    "id_Типа" integer NOT NULL,
    "Тип" character varying(50),
    "Коэффициент_типа" numeric(5,2)
);
 /   DROP TABLE public."Тип_продукции";
       public         heap r       postgres    false            �            1259    16838 )   Тип_продукции_id_Типа_seq    SEQUENCE     �   CREATE SEQUENCE public."Тип_продукции_id_Типа_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."Тип_продукции_id_Типа_seq";
       public               postgres    false    224            j           0    0 )   Тип_продукции_id_Типа_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."Тип_продукции_id_Типа_seq" OWNED BY public."Тип_продукции"."id_Типа";
          public               postgres    false    223            �           2604    16929    Доступ id_Доступа    DEFAULT     �   ALTER TABLE ONLY public."Доступ" ALTER COLUMN "id_Доступа" SET DEFAULT nextval('public."Доступ_id_Доступа_seq"'::regclass);
 Q   ALTER TABLE public."Доступ" ALTER COLUMN "id_Доступа" DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    16889    Заявки id_Заявки    DEFAULT     �   ALTER TABLE ONLY public."Заявки" ALTER COLUMN "id_Заявки" SET DEFAULT nextval('public."Заявки_id_Заявки_seq"'::regclass);
 O   ALTER TABLE public."Заявки" ALTER COLUMN "id_Заявки" DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    16917    Кадры id_Кадров    DEFAULT     �   ALTER TABLE ONLY public."Кадры" ALTER COLUMN "id_Кадров" SET DEFAULT nextval('public."Кадры_id_Кадров_seq"'::regclass);
 M   ALTER TABLE public."Кадры" ALTER COLUMN "id_Кадров" DROP DEFAULT;
       public               postgres    false    236    235    236            �           2604    16828 (   Материалы id_Материала    DEFAULT     �   ALTER TABLE ONLY public."Материалы" ALTER COLUMN "id_Материала" SET DEFAULT nextval('public."Материалы_id_Материала_seq"'::regclass);
 [   ALTER TABLE public."Материалы" ALTER COLUMN "id_Материала" DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    16880 $   Партнеры id_Партнера    DEFAULT     �   ALTER TABLE ONLY public."Партнеры" ALTER COLUMN "id_Партнера" SET DEFAULT nextval('public."Партнеры_id_Партнера_seq"'::regclass);
 W   ALTER TABLE public."Партнеры" ALTER COLUMN "id_Партнера" DROP DEFAULT;
       public               postgres    false    230    229    230            �           2604    16807 ,   Поставщики id_Поставщика    DEFAULT     �   ALTER TABLE ONLY public."Поставщики" ALTER COLUMN "id_Поставщика" SET DEFAULT nextval('public."Поставщики_id_Поставщика_seq"'::regclass);
 _   ALTER TABLE public."Поставщики" ALTER COLUMN "id_Поставщика" DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16868     Продажи id_Продажи    DEFAULT     �   ALTER TABLE ONLY public."Продажи" ALTER COLUMN "id_Продажи" SET DEFAULT nextval('public."Продажи_id_Продажи_seq"'::regclass);
 S   ALTER TABLE public."Продажи" ALTER COLUMN "id_Продажи" DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    16849 (   Продукция id_Продукции    DEFAULT     �   ALTER TABLE ONLY public."Продукция" ALTER COLUMN "id_Продукции" SET DEFAULT nextval('public."Продукция_id_Продукции_seq"'::regclass);
 [   ALTER TABLE public."Продукция" ALTER COLUMN "id_Продукции" DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    16816    Склад id_Склада    DEFAULT     �   ALTER TABLE ONLY public."Склад" ALTER COLUMN "id_Склада" SET DEFAULT nextval('public."Склад_id_Склада_seq"'::regclass);
 M   ALTER TABLE public."Склад" ALTER COLUMN "id_Склада" DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16908 ,   Сотрудники id_Сотрудника    DEFAULT     �   ALTER TABLE ONLY public."Сотрудники" ALTER COLUMN "id_Сотрудника" SET DEFAULT nextval('public."Сотрудники_id_Сотрудника_seq"'::regclass);
 _   ALTER TABLE public."Сотрудники" ALTER COLUMN "id_Сотрудника" DROP DEFAULT;
       public               postgres    false    234    233    234            �           2604    16842 %   Тип_продукции id_Типа    DEFAULT     �   ALTER TABLE ONLY public."Тип_продукции" ALTER COLUMN "id_Типа" SET DEFAULT nextval('public."Тип_продукции_id_Типа_seq"'::regclass);
 X   ALTER TABLE public."Тип_продукции" ALTER COLUMN "id_Типа" DROP DEFAULT;
       public               postgres    false    223    224    224            Y          0    16926    Доступ 
   TABLE DATA           �   COPY public."Доступ" ("id_Доступа", "id_Кадров", "Перемещения", "Дата_доступа") FROM stdin;
    public               postgres    false    238   w�       S          0    16886    Заявки 
   TABLE DATA           �   COPY public."Заявки" ("id_Заявки", "id_Партнера", "id_Продукции", "Дата_создания", "Оплата", "Статус", "Продукция", "Произвел", "ФИО_менеджера") FROM stdin;
    public               postgres    false    232   ��       W          0    16914 
   Кадры 
   TABLE DATA           m   COPY public."Кадры" ("id_Кадров", "id_Сотрудника", "Тип_доступа") FROM stdin;
    public               postgres    false    236   ^�       I          0    16825    Материалы 
   TABLE DATA             COPY public."Материалы" ("id_Материала", "id_Склада", "Тип", "Наименование", "Количество_в_упаковке", "Единица_измерения", "Описание", "Стоимость", "Процент_брака") FROM stdin;
    public               postgres    false    222   {�       Q          0    16877    Партнеры 
   TABLE DATA           )  COPY public."Партнеры" ("id_Партнера", "Тип", "Наименование_компании", "Юридический_адрес", "ИНН", "ФИО_директора", "Телефон", email, "Рейтинг", "Юридический_адрес_повторный") FROM stdin;
    public               postgres    false    230   �       E          0    16804    Поставщики 
   TABLE DATA           �   COPY public."Поставщики" ("id_Поставщика", "Тип", "Наименование", "ИНН", "История_поставок") FROM stdin;
    public               postgres    false    218   r�       O          0    16865    Продажи 
   TABLE DATA             COPY public."Продажи" ("id_Продажи", "id_Продукции", "id_Партнера", "Наименование_партнера", "Количество_проданной_продукции", "Дата_продажи", "Продукция") FROM stdin;
    public               postgres    false    228   ��       M          0    16846    Продукция 
   TABLE DATA           �  COPY public."Продукция" ("id_Продукции", "id_Материала", "id_Типа", "Артикул", "Тип", "Наименование", "Описание", "Минимальная_стоимость_для_партнер", "Размер_упаковки", "Вес_без_упаковки", "Вес_с_упаковкой", "Сертификат_качества", "Номер_стандарта", "Время_изготовления", "Себестоимость", "Номер_цеха", "Количество_человек_на_производств", "Необходимые_материалы_для_произво") FROM stdin;
    public               postgres    false    226   ��       G          0    16813 
   Склад 
   TABLE DATA           �   COPY public."Склад" ("id_Склада", "id_Поставщика", "Количество_на_складе", "Тип", "Наименование") FROM stdin;
    public               postgres    false    220   �       U          0    16905    Сотрудники 
   TABLE DATA           :  COPY public."Сотрудники" ("id_Сотрудника", "Должность", "ФИО", "Дата_рождения", "Паспортные_данные", "Банковские_реквизиты", "Наличие_семьи", "Состояние_здоровья", "Логин", "Пароль") FROM stdin;
    public               postgres    false    234    �       K          0    16839    Тип_продукции 
   TABLE DATA           q   COPY public."Тип_продукции" ("id_Типа", "Тип", "Коэффициент_типа") FROM stdin;
    public               postgres    false    224   ��       k           0    0 "   Доступ_id_Доступа_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."Доступ_id_Доступа_seq"', 1, false);
          public               postgres    false    237            l           0    0     Заявки_id_Заявки_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Заявки_id_Заявки_seq"', 6, true);
          public               postgres    false    231            m           0    0    Кадры_id_Кадров_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Кадры_id_Кадров_seq"', 1, false);
          public               postgres    false    235            n           0    0 ,   Материалы_id_Материала_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."Материалы_id_Материала_seq"', 5, true);
          public               postgres    false    221            o           0    0 (   Партнеры_id_Партнера_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."Партнеры_id_Партнера_seq"', 5, true);
          public               postgres    false    229            p           0    0 0   Поставщики_id_Поставщика_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."Поставщики_id_Поставщика_seq"', 1, false);
          public               postgres    false    217            q           0    0 $   Продажи_id_Продажи_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."Продажи_id_Продажи_seq"', 15, true);
          public               postgres    false    227            r           0    0 ,   Продукция_id_Продукции_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."Продукция_id_Продукции_seq"', 5, true);
          public               postgres    false    225            s           0    0    Склад_id_Склада_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Склад_id_Склада_seq"', 1, false);
          public               postgres    false    219            t           0    0 0   Сотрудники_id_Сотрудника_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."Сотрудники_id_Сотрудника_seq"', 2, true);
          public               postgres    false    233            u           0    0 )   Тип_продукции_id_Типа_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."Тип_продукции_id_Типа_seq"', 4, true);
          public               postgres    false    223            �           2606    16933    Доступ Доступ_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."Доступ"
    ADD CONSTRAINT "Доступ_pkey" PRIMARY KEY ("id_Доступа");
 L   ALTER TABLE ONLY public."Доступ" DROP CONSTRAINT "Доступ_pkey";
       public                 postgres    false    238            �           2606    16893    Заявки Заявки_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Заявки"
    ADD CONSTRAINT "Заявки_pkey" PRIMARY KEY ("id_Заявки");
 L   ALTER TABLE ONLY public."Заявки" DROP CONSTRAINT "Заявки_pkey";
       public                 postgres    false    232            �           2606    16919    Кадры Кадры_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."Кадры"
    ADD CONSTRAINT "Кадры_pkey" PRIMARY KEY ("id_Кадров");
 H   ALTER TABLE ONLY public."Кадры" DROP CONSTRAINT "Кадры_pkey";
       public                 postgres    false    236            �           2606    16832 *   Материалы Материалы_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Материалы"
    ADD CONSTRAINT "Материалы_pkey" PRIMARY KEY ("id_Материала");
 X   ALTER TABLE ONLY public."Материалы" DROP CONSTRAINT "Материалы_pkey";
       public                 postgres    false    222            �           2606    16884 &   Партнеры Партнеры_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."Партнеры"
    ADD CONSTRAINT "Партнеры_pkey" PRIMARY KEY ("id_Партнера");
 T   ALTER TABLE ONLY public."Партнеры" DROP CONSTRAINT "Партнеры_pkey";
       public                 postgres    false    230            �           2606    16811 .   Поставщики Поставщики_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Поставщики"
    ADD CONSTRAINT "Поставщики_pkey" PRIMARY KEY ("id_Поставщика");
 \   ALTER TABLE ONLY public."Поставщики" DROP CONSTRAINT "Поставщики_pkey";
       public                 postgres    false    218            �           2606    16870 "   Продажи Продажи_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."Продажи"
    ADD CONSTRAINT "Продажи_pkey" PRIMARY KEY ("id_Продажи");
 P   ALTER TABLE ONLY public."Продажи" DROP CONSTRAINT "Продажи_pkey";
       public                 postgres    false    228            �           2606    16853 *   Продукция Продукция_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Продукция"
    ADD CONSTRAINT "Продукция_pkey" PRIMARY KEY ("id_Продукции");
 X   ALTER TABLE ONLY public."Продукция" DROP CONSTRAINT "Продукция_pkey";
       public                 postgres    false    226            �           2606    16818    Склад Склад_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."Склад"
    ADD CONSTRAINT "Склад_pkey" PRIMARY KEY ("id_Склада");
 H   ALTER TABLE ONLY public."Склад" DROP CONSTRAINT "Склад_pkey";
       public                 postgres    false    220            �           2606    16912 .   Сотрудники Сотрудники_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Сотрудники"
    ADD CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("id_Сотрудника");
 \   ALTER TABLE ONLY public."Сотрудники" DROP CONSTRAINT "Сотрудники_pkey";
       public                 postgres    false    234            �           2606    16844 8   Тип_продукции Тип_продукции_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Тип_продукции"
    ADD CONSTRAINT "Тип_продукции_pkey" PRIMARY KEY ("id_Типа");
 f   ALTER TABLE ONLY public."Тип_продукции" DROP CONSTRAINT "Тип_продукции_pkey";
       public                 postgres    false    224            �           2606    16934 .   Доступ Доступ_id_Кадров_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Доступ"
    ADD CONSTRAINT "Доступ_id_Кадров_fkey" FOREIGN KEY ("id_Кадров") REFERENCES public."Кадры"("id_Кадров");
 \   ALTER TABLE ONLY public."Доступ" DROP CONSTRAINT "Доступ_id_Кадров_fkey";
       public               postgres    false    236    4775    238            �           2606    16894 2   Заявки Заявки_id_Партнера_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заявки"
    ADD CONSTRAINT "Заявки_id_Партнера_fkey" FOREIGN KEY ("id_Партнера") REFERENCES public."Партнеры"("id_Партнера");
 `   ALTER TABLE ONLY public."Заявки" DROP CONSTRAINT "Заявки_id_Партнера_fkey";
       public               postgres    false    230    4769    232            �           2606    16899 4   Заявки Заявки_id_Продукции_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заявки"
    ADD CONSTRAINT "Заявки_id_Продукции_fkey" FOREIGN KEY ("id_Продукции") REFERENCES public."Продукция"("id_Продукции");
 b   ALTER TABLE ONLY public."Заявки" DROP CONSTRAINT "Заявки_id_Продукции_fkey";
       public               postgres    false    4765    232    226            �           2606    16920 2   Кадры Кадры_id_Сотрудника_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Кадры"
    ADD CONSTRAINT "Кадры_id_Сотрудника_fkey" FOREIGN KEY ("id_Сотрудника") REFERENCES public."Сотрудники"("id_Сотрудника");
 `   ALTER TABLE ONLY public."Кадры" DROP CONSTRAINT "Кадры_id_Сотрудника_fkey";
       public               postgres    false    234    236    4773            �           2606    16833 :   Материалы Материалы_id_Склада_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Материалы"
    ADD CONSTRAINT "Материалы_id_Склада_fkey" FOREIGN KEY ("id_Склада") REFERENCES public."Склад"("id_Склада");
 h   ALTER TABLE ONLY public."Материалы" DROP CONSTRAINT "Материалы_id_Склада_fkey";
       public               postgres    false    4759    220    222            �           2606    16871 8   Продажи Продажи_id_Продукции_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Продажи"
    ADD CONSTRAINT "Продажи_id_Продукции_fkey" FOREIGN KEY ("id_Продукции") REFERENCES public."Продукция"("id_Продукции");
 f   ALTER TABLE ONLY public."Продажи" DROP CONSTRAINT "Продажи_id_Продукции_fkey";
       public               postgres    false    226    228    4765            �           2606    16854 @   Продукция Продукция_id_Материала_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Продукция"
    ADD CONSTRAINT "Продукция_id_Материала_fkey" FOREIGN KEY ("id_Материала") REFERENCES public."Материалы"("id_Материала");
 n   ALTER TABLE ONLY public."Продукция" DROP CONSTRAINT "Продукция_id_Материала_fkey";
       public               postgres    false    226    222    4761            �           2606    16859 6   Продукция Продукция_id_Типа_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Продукция"
    ADD CONSTRAINT "Продукция_id_Типа_fkey" FOREIGN KEY ("id_Типа") REFERENCES public."Тип_продукции"("id_Типа");
 d   ALTER TABLE ONLY public."Продукция" DROP CONSTRAINT "Продукция_id_Типа_fkey";
       public               postgres    false    4763    224    226            �           2606    16819 2   Склад Склад_id_Поставщика_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Склад"
    ADD CONSTRAINT "Склад_id_Поставщика_fkey" FOREIGN KEY ("id_Поставщика") REFERENCES public."Поставщики"("id_Поставщика");
 `   ALTER TABLE ONLY public."Склад" DROP CONSTRAINT "Склад_id_Поставщика_fkey";
       public               postgres    false    218    4757    220            Y      x������ � �      S   �   x��н�0�ڞ���`	&�0�(h�̐"�
�q	M$h(���w��tv�X0ˌ2>S:3��0w2x�#��:Ti�wD�*��ҥJ+�}Z���zzD��3���Q�
kn�2�BA���惞��N?��p�)l��W_��J4i��̔���E��"�Q�+繖�����9nr	T      W      x������ � �      I   \   x�3��㼰��.칰�bӅ���v_ؠ`�FFz�\F�5aj�4�2Ư�S���	~M&��LM�L�k2��dl����� ��vb      Q   {  x��TKnA]������fv$��2�, �6X��;R�(q�}�c���+T�(�z�8Y����t��իW�}���	����[?�Ǵ��QI+.N�.�I���_T��Ғ&��ğ;Za;��9��iLf�~`sO���'��K��!=�_M*'4�uN5SA_h
��q\ fIK����p��Q�M�T�H�d�)�v~��:oz�A�u�E�zۮ�މ�3�iAc�	���1"�~$u*Tú�s^�c�>����+�-l��3����~;��	�B�$IP,�)7SI9B��-��;���4i]C6Q�^�h�^���pA���|8#
�$�bHh��KB��56s�@ٶ0h������Ɍܬ�tι(Vi�͒i����`1	%3���R�Z�e���ﶻE^����/VHdY��ӛ0k�a$i�`~�GF��I�
�*�^`֟ ��6 ���&�

M\S@���]�'����hz�lL�zY(��
�o-x���P"?�yՋn��:ߍ�{�j"�{A�*B��!�e-L�Vss����oj8J>ce�7�W;$7��t�i-�s��l�9oK�� Ldx�ʝLS�/�i���#~@[Ն�T����GQ�_��|      E      x������ � �      O   �  x��TQn�0��O��%+���4i�~,�0`6���%[�:M�]���%{I1w���"���D�a�;^�=/5��x��q�o�BQ�*g�7����>�����������6?ƅN!vؾ�F�5�;��o���]*5�v�S��Cτ����p�q�"�5��W� �⍜����R���-��8��2�W�p_�Y��؉��3��|��H�i��`��Z�`�xS��aJ�]��gs)S8| ̝�*�GT�S�
�����}��#R�n�>B�CPa��Aw!��$�*��_�%N�	���7X��XDh���>}LP#�h�?_��Q��{o���rg�
a����sU�T��p�kOƽ\%Ԩ�R��H�@���5����P��h�ᜅAt��;V�8'�R�"9
�G���J��t&��{��V2(��P}�'FYL�=��*��]��(��	��,�s�&�<e���Pz���(�_o�      M   H  x���MN�0���)|���ؗ�=LR,�Ć6�I���$�
���T��R�'�y�Ϟ6�b���Xe�jBE[�aN�N+�C�T�����.,8dO-�{�p�Q�����K�÷Bs��@ks��"���L�a����)�'�>#�j�1\Ӓ�+����~Z,�@Meg�偾T�ȝ��W�-YY�BZ���-��r��n�#l�]�����ZF�t�Jq0� ֡>�s�R@z�R����jp���6�C��&� ���ʺ"�bƤRf
!�V�-��c�q�w�S��g�&?ZءSa���F�k|��m���F�"7SM��Y�� ��s      G      x������ � �      U   �   x�3�0���{�x˅m�^l�0�¦�B�.lR�q�E/���ihia�k`�kh�ihdl�`jfnai�ib`ahnah``ii	$L��8K8/L���bH;gbJnf��2�0(�x�	h����v\�E�L�qBfYb^~X���W� o|      K   v   x�e���0�wUP�	c���y�� т�Bര�QV��u����
N�P|��b�A�2�>��~ͽ���@�l!kl,&��˿�,&M��4<�5���'�q��J���h���Q�     