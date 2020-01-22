.class public Lcom/mysql/jdbc/CharsetMapping;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# static fields
.field public static final CHARSET_NAME_TO_CHARSET:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/MysqlCharset;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset; = null

.field public static final COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String; = null

.field public static final COLLATION_NOT_DEFINED:Ljava/lang/String; = "none"

.field private static final ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_ENCODINGS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/MysqlCharset;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MAP_SIZE:I = 0x800

.field private static final MULTIBYTE_ENCODINGS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MYSQL_4_0_CHARSET_NAME_cp1251cias:Ljava/lang/String; = "cp1251cias"

.field private static final MYSQL_4_0_CHARSET_NAME_cp1251csas:Ljava/lang/String; = "cp1251csas"

.field private static final MYSQL_4_0_CHARSET_NAME_croat:Ljava/lang/String; = "croat"

.field private static final MYSQL_4_0_CHARSET_NAME_czech:Ljava/lang/String; = "czech"

.field private static final MYSQL_4_0_CHARSET_NAME_danish:Ljava/lang/String; = "danish"

.field private static final MYSQL_4_0_CHARSET_NAME_dos:Ljava/lang/String; = "dos"

.field private static final MYSQL_4_0_CHARSET_NAME_estonia:Ljava/lang/String; = "estonia"

.field private static final MYSQL_4_0_CHARSET_NAME_euc_kr:Ljava/lang/String; = "euc_kr"

.field private static final MYSQL_4_0_CHARSET_NAME_german1:Ljava/lang/String; = "german1"

.field private static final MYSQL_4_0_CHARSET_NAME_hungarian:Ljava/lang/String; = "hungarian"

.field private static final MYSQL_4_0_CHARSET_NAME_koi8_ru:Ljava/lang/String; = "koi8_ru"

.field private static final MYSQL_4_0_CHARSET_NAME_koi8_ukr:Ljava/lang/String; = "koi8_ukr"

.field private static final MYSQL_4_0_CHARSET_NAME_latin1_de:Ljava/lang/String; = "latin1_de"

.field private static final MYSQL_4_0_CHARSET_NAME_latvian:Ljava/lang/String; = "latvian"

.field private static final MYSQL_4_0_CHARSET_NAME_latvian1:Ljava/lang/String; = "latvian1"

.field private static final MYSQL_4_0_CHARSET_NAME_usa7:Ljava/lang/String; = "usa7"

.field private static final MYSQL_4_0_CHARSET_NAME_win1250:Ljava/lang/String; = "win1250"

.field private static final MYSQL_4_0_CHARSET_NAME_win1251:Ljava/lang/String; = "win1251"

.field private static final MYSQL_4_0_CHARSET_NAME_win1251ukr:Ljava/lang/String; = "win1251ukr"

.field private static final MYSQL_CHARSET_NAME_armscii8:Ljava/lang/String; = "armscii8"

.field private static final MYSQL_CHARSET_NAME_ascii:Ljava/lang/String; = "ascii"

.field private static final MYSQL_CHARSET_NAME_big5:Ljava/lang/String; = "big5"

.field private static final MYSQL_CHARSET_NAME_binary:Ljava/lang/String; = "binary"

.field private static final MYSQL_CHARSET_NAME_cp1250:Ljava/lang/String; = "cp1250"

.field private static final MYSQL_CHARSET_NAME_cp1251:Ljava/lang/String; = "cp1251"

.field private static final MYSQL_CHARSET_NAME_cp1256:Ljava/lang/String; = "cp1256"

.field private static final MYSQL_CHARSET_NAME_cp1257:Ljava/lang/String; = "cp1257"

.field private static final MYSQL_CHARSET_NAME_cp850:Ljava/lang/String; = "cp850"

.field private static final MYSQL_CHARSET_NAME_cp852:Ljava/lang/String; = "cp852"

.field private static final MYSQL_CHARSET_NAME_cp866:Ljava/lang/String; = "cp866"

.field private static final MYSQL_CHARSET_NAME_cp932:Ljava/lang/String; = "cp932"

.field private static final MYSQL_CHARSET_NAME_dec8:Ljava/lang/String; = "dec8"

.field private static final MYSQL_CHARSET_NAME_eucjpms:Ljava/lang/String; = "eucjpms"

.field private static final MYSQL_CHARSET_NAME_euckr:Ljava/lang/String; = "euckr"

.field private static final MYSQL_CHARSET_NAME_gb18030:Ljava/lang/String; = "gb18030"

.field private static final MYSQL_CHARSET_NAME_gb2312:Ljava/lang/String; = "gb2312"

.field private static final MYSQL_CHARSET_NAME_gbk:Ljava/lang/String; = "gbk"

.field private static final MYSQL_CHARSET_NAME_geostd8:Ljava/lang/String; = "geostd8"

.field private static final MYSQL_CHARSET_NAME_greek:Ljava/lang/String; = "greek"

.field private static final MYSQL_CHARSET_NAME_hebrew:Ljava/lang/String; = "hebrew"

.field private static final MYSQL_CHARSET_NAME_hp8:Ljava/lang/String; = "hp8"

.field private static final MYSQL_CHARSET_NAME_keybcs2:Ljava/lang/String; = "keybcs2"

.field private static final MYSQL_CHARSET_NAME_koi8r:Ljava/lang/String; = "koi8r"

.field private static final MYSQL_CHARSET_NAME_koi8u:Ljava/lang/String; = "koi8u"

.field private static final MYSQL_CHARSET_NAME_latin1:Ljava/lang/String; = "latin1"

.field private static final MYSQL_CHARSET_NAME_latin2:Ljava/lang/String; = "latin2"

.field private static final MYSQL_CHARSET_NAME_latin5:Ljava/lang/String; = "latin5"

.field private static final MYSQL_CHARSET_NAME_latin7:Ljava/lang/String; = "latin7"

.field private static final MYSQL_CHARSET_NAME_macce:Ljava/lang/String; = "macce"

.field private static final MYSQL_CHARSET_NAME_macroman:Ljava/lang/String; = "macroman"

.field private static final MYSQL_CHARSET_NAME_sjis:Ljava/lang/String; = "sjis"

.field private static final MYSQL_CHARSET_NAME_swe7:Ljava/lang/String; = "swe7"

.field private static final MYSQL_CHARSET_NAME_tis620:Ljava/lang/String; = "tis620"

.field private static final MYSQL_CHARSET_NAME_ucs2:Ljava/lang/String; = "ucs2"

.field private static final MYSQL_CHARSET_NAME_ujis:Ljava/lang/String; = "ujis"

.field private static final MYSQL_CHARSET_NAME_utf16:Ljava/lang/String; = "utf16"

.field private static final MYSQL_CHARSET_NAME_utf16le:Ljava/lang/String; = "utf16le"

.field private static final MYSQL_CHARSET_NAME_utf32:Ljava/lang/String; = "utf32"

.field private static final MYSQL_CHARSET_NAME_utf8:Ljava/lang/String; = "utf8"

.field private static final MYSQL_CHARSET_NAME_utf8mb4:Ljava/lang/String; = "utf8mb4"

.field public static final MYSQL_COLLATION_INDEX_binary:I = 0x3f

.field public static final MYSQL_COLLATION_INDEX_utf8:I = 0x21

.field public static final NOT_USED:Ljava/lang/String; = "latin1"

.field public static final UTF8MB4_INDEXES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static numberOfEncodingsConfigured:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 129
    const/4 v0, 0x0

    sput v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    .line 133
    const/16 v0, 0x3c

    new-array v8, v0, [Lcom/mysql/jdbc/MysqlCharset;

    const/4 v7, 0x0

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "usa7"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "US-ASCII"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/4 v0, 0x1

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "ascii"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "US-ASCII"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ASCII"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x2

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "big5"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Big5"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x3

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "gbk"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "GBK"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x4

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "sjis"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "SHIFT_JIS"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Cp943"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "WINDOWS-31J"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x5

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp932"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "WINDOWS-31J"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x6

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "gb2312"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "GB2312"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x7

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "ujis"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EUC_JP"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v9, 0x8

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "eucjpms"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EUC_JP_Solaris"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;III)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "gb18030"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "GB18030"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;III)V

    aput-object v0, v8, v9

    const/16 v7, 0xa

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "euc_kr"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EUC_KR"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0xb

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "euckr"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EUC-KR"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0xc

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "latin1"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1252"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ISO8859_1"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0xd

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "swe7"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1252"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0xe

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "hp8"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1252"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0xf

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "dec8"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1252"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x10

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "armscii8"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1252"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x11

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "geostd8"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1252"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x12

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "latin2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO8859_2"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x13

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "czech"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_2"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x14

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "hungarian"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_2"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x15

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "croat"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_2"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x16

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "greek"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO8859_7"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "greek"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x17

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "latin7"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO-8859-13"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x18

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "hebrew"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO8859_8"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x19

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "latin5"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO8859_9"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x1a

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "latvian"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_13"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x1b

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "latvian1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_13"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x1c

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "estonia"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_13"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x1d

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp850"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp850"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Cp437"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x1e

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "dos"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cp850"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Cp437"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x1f

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp852"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp852"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x20

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "keybcs2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp852"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x21

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp866"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp866"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x22

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "koi8_ru"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "KOI8_R"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x23

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "koi8r"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "KOI8_R"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x24

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "koi8u"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "KOI8_R"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x25

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "koi8_ukr"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "KOI8_R"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x26

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "tis620"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "TIS620"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x27

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp1250"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1250"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x28

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "win1250"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cp1250"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x29

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp1251"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1251"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x2a

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "win1251"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cp1251"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x2b

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "cp1251cias"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cp1251"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x2c

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "cp1251csas"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cp1251"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x2d

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "win1251ukr"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cp1251"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x2e

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp1256"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1256"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x2f

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "cp1257"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cp1257"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x30

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "macroman"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "MacRoman"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x31

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "macce"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "MacCentralEurope"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x32

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "utf8"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x33

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "utf8mb4"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x34

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "ucs2"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UnicodeBig"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x35

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "binary"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ISO8859_1"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v7, 0x36

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "latin1_de"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_1"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x37

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "german1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_1"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v7, 0x38

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v1, "danish"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ISO8859_1"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v0, v8, v7

    const/16 v0, 0x39

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "utf16"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-16"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x3a

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "utf16le"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-16LE"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x3b

    new-instance v1, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "utf32"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-32"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v1, v8, v0

    .line 217
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 218
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 219
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 220
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 221
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v8

    if-ge v2, v0, :cond_5

    .line 222
    aget-object v0, v8, v2

    iget-object v7, v0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 224
    aget-object v0, v8, v2

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    aget-object v1, v8, v2

    iget-object v1, v1, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    .line 228
    aget-object v0, v8, v2

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 232
    if-nez v1, :cond_1

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_1
    aget-object v10, v8, v2

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    aget-object v1, v8, v2

    iget v1, v1, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    const/4 v10, 0x1

    if-le v1, v10, :cond_0

    .line 240
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_2
    const-string v0, "big5"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "gbk"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sjis"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    :cond_3
    aget-object v0, v8, v2

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 252
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    .line 253
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;

    .line 254
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->MULTIBYTE_ENCODINGS:Ljava/util/Set;

    .line 255
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->ESCAPE_ENCODINGS:Ljava/util/Set;

    .line 258
    const/16 v0, 0x800

    new-array v4, v0, [Lcom/mysql/jdbc/Collation;

    .line 259
    const/4 v0, 0x1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x1

    const-string v3, "big5_chinese_ci"

    const/4 v5, 0x1

    const-string v6, "big5"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 260
    const/4 v0, 0x2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x2

    const-string v3, "latin2_czech_cs"

    const/4 v5, 0x0

    const-string v6, "latin2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 261
    const/4 v0, 0x3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x3

    const-string v3, "dec8_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "dec8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 262
    const/4 v0, 0x4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x4

    const-string v3, "cp850_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp850"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 263
    const/4 v0, 0x5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x5

    const-string v3, "latin1_german1_ci"

    const/4 v5, 0x1

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 264
    const/4 v0, 0x6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x6

    const-string v3, "hp8_english_ci"

    const/4 v5, 0x0

    const-string v6, "hp8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 265
    const/4 v0, 0x7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v2, 0x7

    const-string v3, "koi8r_general_ci"

    const/4 v5, 0x0

    const-string v6, "koi8r"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 266
    const/16 v0, 0x8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8

    const-string v3, "latin1_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 267
    const/16 v0, 0x9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x9

    const-string v3, "latin2_general_ci"

    const/4 v5, 0x1

    const-string v6, "latin2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 268
    const/16 v0, 0xa

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa

    const-string v3, "swe7_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "swe7"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 269
    const/16 v0, 0xb

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb

    const-string v3, "ascii_general_ci"

    const/4 v5, 0x0

    const-string v6, "ascii"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 270
    const/16 v0, 0xc

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc

    const-string v3, "ujis_japanese_ci"

    const/4 v5, 0x0

    const-string v6, "ujis"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 271
    const/16 v0, 0xd

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd

    const-string v3, "sjis_japanese_ci"

    const/4 v5, 0x0

    const-string v6, "sjis"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 272
    const/16 v0, 0xe

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe

    const-string v3, "cp1251_bulgarian_ci"

    const/4 v5, 0x0

    const-string v6, "cp1251"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 273
    const/16 v0, 0xf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf

    const-string v3, "latin1_danish_ci"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 274
    const/16 v0, 0x10

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10

    const-string v3, "hebrew_general_ci"

    const/4 v5, 0x0

    const-string v6, "hebrew"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 275
    const/16 v0, 0x11

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11

    const-string v3, "latin1_german1_ci"

    const/4 v5, 0x0

    const-string v6, "win1251"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 276
    const/16 v0, 0x12

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12

    const-string v3, "tis620_thai_ci"

    const/4 v5, 0x0

    const-string v6, "tis620"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 277
    const/16 v0, 0x13

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x13

    const-string v3, "euckr_korean_ci"

    const/4 v5, 0x0

    const-string v6, "euckr"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 278
    const/16 v0, 0x14

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x14

    const-string v3, "latin7_estonian_cs"

    const/4 v5, 0x0

    const-string v6, "latin7"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 279
    const/16 v0, 0x15

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x15

    const-string v3, "latin2_hungarian_ci"

    const/4 v5, 0x0

    const-string v6, "latin2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 280
    const/16 v0, 0x16

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x16

    const-string v3, "koi8u_general_ci"

    const/4 v5, 0x0

    const-string v6, "koi8u"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 281
    const/16 v0, 0x17

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x17

    const-string v3, "cp1251_ukrainian_ci"

    const/4 v5, 0x0

    const-string v6, "cp1251"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 282
    const/16 v0, 0x18

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x18

    const-string v3, "gb2312_chinese_ci"

    const/4 v5, 0x0

    const-string v6, "gb2312"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 283
    const/16 v0, 0x19

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x19

    const-string v3, "greek_general_ci"

    const/4 v5, 0x0

    const-string v6, "greek"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 284
    const/16 v0, 0x1a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1a

    const-string v3, "cp1250_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp1250"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 285
    const/16 v0, 0x1b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1b

    const-string v3, "latin2_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "latin2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 286
    const/16 v0, 0x1c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1c

    const-string v3, "gbk_chinese_ci"

    const/4 v5, 0x1

    const-string v6, "gbk"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 287
    const/16 v0, 0x1d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1d

    const-string v3, "cp1257_lithuanian_ci"

    const/4 v5, 0x0

    const-string v6, "cp1257"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 288
    const/16 v0, 0x1e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1e

    const-string v3, "latin5_turkish_ci"

    const/4 v5, 0x1

    const-string v6, "latin5"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 289
    const/16 v0, 0x1f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1f

    const-string v3, "latin1_german2_ci"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 290
    const/16 v0, 0x20

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x20

    const-string v3, "armscii8_general_ci"

    const/4 v5, 0x0

    const-string v6, "armscii8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 291
    const/16 v0, 0x21

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x21

    const-string v3, "utf8_general_ci"

    const/4 v5, 0x1

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 292
    const/16 v0, 0x22

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x22

    const-string v3, "cp1250_czech_cs"

    const/4 v5, 0x0

    const-string v6, "cp1250"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 293
    const/16 v0, 0x23

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x23

    const-string v3, "ucs2_general_ci"

    const/4 v5, 0x1

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 294
    const/16 v0, 0x24

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x24

    const-string v3, "cp866_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp866"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 295
    const/16 v0, 0x25

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x25

    const-string v3, "keybcs2_general_ci"

    const/4 v5, 0x1

    const-string v6, "keybcs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 296
    const/16 v0, 0x26

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x26

    const-string v3, "macce_general_ci"

    const/4 v5, 0x1

    const-string v6, "macce"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 297
    const/16 v0, 0x27

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x27

    const-string v3, "macroman_general_ci"

    const/4 v5, 0x1

    const-string v6, "macroman"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 298
    const/16 v0, 0x28

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x28

    const-string v3, "cp852_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp852"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 299
    const/16 v0, 0x29

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x29

    const-string v3, "latin7_general_ci"

    const/4 v5, 0x1

    const-string v6, "latin7"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 300
    const/16 v0, 0x2a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2a

    const-string v3, "latin7_general_cs"

    const/4 v5, 0x0

    const-string v6, "latin7"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 301
    const/16 v0, 0x2b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2b

    const-string v3, "macce_bin"

    const/4 v5, 0x0

    const-string v6, "macce"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 302
    const/16 v0, 0x2c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2c

    const-string v3, "cp1250_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "cp1250"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 303
    const/16 v0, 0x2d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2d

    const-string v3, "utf8mb4_general_ci"

    const/4 v5, 0x1

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 304
    const/16 v0, 0x2e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2e

    const-string v3, "utf8mb4_bin"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 305
    const/16 v0, 0x2f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2f

    const-string v3, "latin1_bin"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 306
    const/16 v0, 0x30

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x30

    const-string v3, "latin1_general_ci"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 307
    const/16 v0, 0x31

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x31

    const-string v3, "latin1_general_cs"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 308
    const/16 v0, 0x32

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x32

    const-string v3, "cp1251_bin"

    const/4 v5, 0x0

    const-string v6, "cp1251"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 309
    const/16 v0, 0x33

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x33

    const-string v3, "cp1251_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp1251"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 310
    const/16 v0, 0x34

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x34

    const-string v3, "cp1251_general_cs"

    const/4 v5, 0x0

    const-string v6, "cp1251"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 311
    const/16 v0, 0x35

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x35

    const-string v3, "macroman_bin"

    const/4 v5, 0x0

    const-string v6, "macroman"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 312
    const/16 v0, 0x36

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x36

    const-string v3, "utf16_general_ci"

    const/4 v5, 0x1

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 313
    const/16 v0, 0x37

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x37

    const-string v3, "utf16_bin"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 314
    const/16 v0, 0x38

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x38

    const-string v3, "utf16le_general_ci"

    const/4 v5, 0x1

    const-string v6, "utf16le"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 315
    const/16 v0, 0x39

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x39

    const-string v3, "cp1256_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp1256"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 316
    const/16 v0, 0x3a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3a

    const-string v3, "cp1257_bin"

    const/4 v5, 0x0

    const-string v6, "cp1257"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 317
    const/16 v0, 0x3b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3b

    const-string v3, "cp1257_general_ci"

    const/4 v5, 0x1

    const-string v6, "cp1257"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 318
    const/16 v0, 0x3c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3c

    const-string v3, "utf32_general_ci"

    const/4 v5, 0x1

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 319
    const/16 v0, 0x3d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3d

    const-string v3, "utf32_bin"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 320
    const/16 v0, 0x3e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3e

    const-string v3, "utf16le_bin"

    const/4 v5, 0x0

    const-string v6, "utf16le"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 321
    const/16 v0, 0x3f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3f

    const-string v3, "binary"

    const/4 v5, 0x1

    const-string v6, "binary"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 322
    const/16 v0, 0x40

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x40

    const-string v3, "armscii8_bin"

    const/4 v5, 0x0

    const-string v6, "armscii8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 323
    const/16 v0, 0x41

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x41

    const-string v3, "ascii_bin"

    const/4 v5, 0x0

    const-string v6, "ascii"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 324
    const/16 v0, 0x42

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x42

    const-string v3, "cp1250_bin"

    const/4 v5, 0x0

    const-string v6, "cp1250"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 325
    const/16 v0, 0x43

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x43

    const-string v3, "cp1256_bin"

    const/4 v5, 0x0

    const-string v6, "cp1256"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 326
    const/16 v0, 0x44

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x44

    const-string v3, "cp866_bin"

    const/4 v5, 0x0

    const-string v6, "cp866"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 327
    const/16 v0, 0x45

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x45

    const-string v3, "dec8_bin"

    const/4 v5, 0x0

    const-string v6, "dec8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 328
    const/16 v0, 0x46

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x46

    const-string v3, "greek_bin"

    const/4 v5, 0x0

    const-string v6, "greek"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 329
    const/16 v0, 0x47

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x47

    const-string v3, "hebrew_bin"

    const/4 v5, 0x0

    const-string v6, "hebrew"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 330
    const/16 v0, 0x48

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x48

    const-string v3, "hp8_bin"

    const/4 v5, 0x0

    const-string v6, "hp8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 331
    const/16 v0, 0x49

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x49

    const-string v3, "keybcs2_bin"

    const/4 v5, 0x0

    const-string v6, "keybcs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 332
    const/16 v0, 0x4a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4a

    const-string v3, "koi8r_bin"

    const/4 v5, 0x0

    const-string v6, "koi8r"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 333
    const/16 v0, 0x4b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4b

    const-string v3, "koi8u_bin"

    const/4 v5, 0x0

    const-string v6, "koi8u"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 334
    const/16 v0, 0x4c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4c

    const-string v3, "utf8_tolower_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 335
    const/16 v0, 0x4d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4d

    const-string v3, "latin2_bin"

    const/4 v5, 0x0

    const-string v6, "latin2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 336
    const/16 v0, 0x4e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4e

    const-string v3, "latin5_bin"

    const/4 v5, 0x0

    const-string v6, "latin5"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 337
    const/16 v0, 0x4f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4f

    const-string v3, "latin7_bin"

    const/4 v5, 0x0

    const-string v6, "latin7"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 338
    const/16 v0, 0x50

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x50

    const-string v3, "cp850_bin"

    const/4 v5, 0x0

    const-string v6, "cp850"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 339
    const/16 v0, 0x51

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x51

    const-string v3, "cp852_bin"

    const/4 v5, 0x0

    const-string v6, "cp852"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 340
    const/16 v0, 0x52

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x52

    const-string v3, "swe7_bin"

    const/4 v5, 0x0

    const-string v6, "swe7"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 341
    const/16 v0, 0x53

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x53

    const-string v3, "utf8_bin"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 342
    const/16 v0, 0x54

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x54

    const-string v3, "big5_bin"

    const/4 v5, 0x0

    const-string v6, "big5"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 343
    const/16 v0, 0x55

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x55

    const-string v3, "euckr_bin"

    const/4 v5, 0x0

    const-string v6, "euckr"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 344
    const/16 v0, 0x56

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x56

    const-string v3, "gb2312_bin"

    const/4 v5, 0x0

    const-string v6, "gb2312"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 345
    const/16 v0, 0x57

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x57

    const-string v3, "gbk_bin"

    const/4 v5, 0x0

    const-string v6, "gbk"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 346
    const/16 v0, 0x58

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x58

    const-string v3, "sjis_bin"

    const/4 v5, 0x0

    const-string v6, "sjis"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 347
    const/16 v0, 0x59

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x59

    const-string v3, "tis620_bin"

    const/4 v5, 0x0

    const-string v6, "tis620"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 348
    const/16 v0, 0x5a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5a

    const-string v3, "ucs2_bin"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 349
    const/16 v0, 0x5b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5b

    const-string v3, "ujis_bin"

    const/4 v5, 0x0

    const-string v6, "ujis"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 350
    const/16 v0, 0x5c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5c

    const-string v3, "geostd8_general_ci"

    const/4 v5, 0x0

    const-string v6, "geostd8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 351
    const/16 v0, 0x5d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5d

    const-string v3, "geostd8_bin"

    const/4 v5, 0x0

    const-string v6, "geostd8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 352
    const/16 v0, 0x5e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5e

    const-string v3, "latin1_spanish_ci"

    const/4 v5, 0x0

    const-string v6, "latin1"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 353
    const/16 v0, 0x5f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5f

    const-string v3, "cp932_japanese_ci"

    const/4 v5, 0x1

    const-string v6, "cp932"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 354
    const/16 v0, 0x60

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x60

    const-string v3, "cp932_bin"

    const/4 v5, 0x0

    const-string v6, "cp932"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 355
    const/16 v0, 0x61

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x61

    const-string v3, "eucjpms_japanese_ci"

    const/4 v5, 0x1

    const-string v6, "eucjpms"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 356
    const/16 v0, 0x62

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x62

    const-string v3, "eucjpms_bin"

    const/4 v5, 0x0

    const-string v6, "eucjpms"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 357
    const/16 v0, 0x63

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x63

    const-string v3, "cp1250_polish_ci"

    const/4 v5, 0x0

    const-string v6, "cp1250"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 359
    const/16 v0, 0x65

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x65

    const-string v3, "utf16_unicode_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 360
    const/16 v0, 0x66

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x66

    const-string v3, "utf16_icelandic_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 361
    const/16 v0, 0x67

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x67

    const-string v3, "utf16_latvian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 362
    const/16 v0, 0x68

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x68

    const-string v3, "utf16_romanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 363
    const/16 v0, 0x69

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x69

    const-string v3, "utf16_slovenian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 364
    const/16 v0, 0x6a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6a

    const-string v3, "utf16_polish_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 365
    const/16 v0, 0x6b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6b

    const-string v3, "utf16_estonian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 366
    const/16 v0, 0x6c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6c

    const-string v3, "utf16_spanish_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 367
    const/16 v0, 0x6d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6d

    const-string v3, "utf16_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 368
    const/16 v0, 0x6e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6e

    const-string v3, "utf16_turkish_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 369
    const/16 v0, 0x6f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6f

    const-string v3, "utf16_czech_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 370
    const/16 v0, 0x70

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x70

    const-string v3, "utf16_danish_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 371
    const/16 v0, 0x71

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x71

    const-string v3, "utf16_lithuanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 372
    const/16 v0, 0x72

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x72

    const-string v3, "utf16_slovak_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 373
    const/16 v0, 0x73

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x73

    const-string v3, "utf16_spanish2_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 374
    const/16 v0, 0x74

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x74

    const-string v3, "utf16_roman_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 375
    const/16 v0, 0x75

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x75

    const-string v3, "utf16_persian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 376
    const/16 v0, 0x76

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x76

    const-string v3, "utf16_esperanto_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 377
    const/16 v0, 0x77

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x77

    const-string v3, "utf16_hungarian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 378
    const/16 v0, 0x78

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x78

    const-string v3, "utf16_sinhala_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 379
    const/16 v0, 0x79

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x79

    const-string v3, "utf16_german2_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 380
    const/16 v0, 0x7a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7a

    const-string v3, "utf16_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 381
    const/16 v0, 0x7b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7b

    const-string v3, "utf16_unicode_520_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 382
    const/16 v0, 0x7c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7c

    const-string v3, "utf16_vietnamese_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 384
    const/16 v0, 0x80

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x80

    const-string v3, "ucs2_unicode_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 385
    const/16 v0, 0x81

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x81

    const-string v3, "ucs2_icelandic_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 386
    const/16 v0, 0x82

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x82

    const-string v3, "ucs2_latvian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 387
    const/16 v0, 0x83

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x83

    const-string v3, "ucs2_romanian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 388
    const/16 v0, 0x84

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x84

    const-string v3, "ucs2_slovenian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 389
    const/16 v0, 0x85

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x85

    const-string v3, "ucs2_polish_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 390
    const/16 v0, 0x86

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x86

    const-string v3, "ucs2_estonian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 391
    const/16 v0, 0x87

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x87

    const-string v3, "ucs2_spanish_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 392
    const/16 v0, 0x88

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x88

    const-string v3, "ucs2_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 393
    const/16 v0, 0x89

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x89

    const-string v3, "ucs2_turkish_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 394
    const/16 v0, 0x8a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8a

    const-string v3, "ucs2_czech_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 395
    const/16 v0, 0x8b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8b

    const-string v3, "ucs2_danish_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 396
    const/16 v0, 0x8c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8c

    const-string v3, "ucs2_lithuanian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 397
    const/16 v0, 0x8d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8d

    const-string v3, "ucs2_slovak_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 398
    const/16 v0, 0x8e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8e

    const-string v3, "ucs2_spanish2_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 399
    const/16 v0, 0x8f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8f

    const-string v3, "ucs2_roman_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 400
    const/16 v0, 0x90

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x90

    const-string v3, "ucs2_persian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 401
    const/16 v0, 0x91

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x91

    const-string v3, "ucs2_esperanto_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 402
    const/16 v0, 0x92

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x92

    const-string v3, "ucs2_hungarian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 403
    const/16 v0, 0x93

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x93

    const-string v3, "ucs2_sinhala_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 404
    const/16 v0, 0x94

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x94

    const-string v3, "ucs2_german2_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 405
    const/16 v0, 0x95

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x95

    const-string v3, "ucs2_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 406
    const/16 v0, 0x96

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x96

    const-string v3, "ucs2_unicode_520_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 407
    const/16 v0, 0x97

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x97

    const-string v3, "ucs2_vietnamese_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 409
    const/16 v0, 0x9f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x9f

    const-string v3, "ucs2_general_mysql500_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 410
    const/16 v0, 0xa0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa0

    const-string v3, "utf32_unicode_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 411
    const/16 v0, 0xa1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa1

    const-string v3, "utf32_icelandic_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 412
    const/16 v0, 0xa2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa2

    const-string v3, "utf32_latvian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 413
    const/16 v0, 0xa3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa3

    const-string v3, "utf32_romanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 414
    const/16 v0, 0xa4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa4

    const-string v3, "utf32_slovenian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 415
    const/16 v0, 0xa5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa5

    const-string v3, "utf32_polish_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 416
    const/16 v0, 0xa6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa6

    const-string v3, "utf32_estonian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 417
    const/16 v0, 0xa7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa7

    const-string v3, "utf32_spanish_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 418
    const/16 v0, 0xa8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa8

    const-string v3, "utf32_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 419
    const/16 v0, 0xa9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa9

    const-string v3, "utf32_turkish_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 420
    const/16 v0, 0xaa

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xaa

    const-string v3, "utf32_czech_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 421
    const/16 v0, 0xab

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xab

    const-string v3, "utf32_danish_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 422
    const/16 v0, 0xac

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xac

    const-string v3, "utf32_lithuanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 423
    const/16 v0, 0xad

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xad

    const-string v3, "utf32_slovak_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 424
    const/16 v0, 0xae

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xae

    const-string v3, "utf32_spanish2_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 425
    const/16 v0, 0xaf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xaf

    const-string v3, "utf32_roman_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 426
    const/16 v0, 0xb0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb0

    const-string v3, "utf32_persian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 427
    const/16 v0, 0xb1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb1

    const-string v3, "utf32_esperanto_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 428
    const/16 v0, 0xb2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb2

    const-string v3, "utf32_hungarian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 429
    const/16 v0, 0xb3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb3

    const-string v3, "utf32_sinhala_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 430
    const/16 v0, 0xb4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb4

    const-string v3, "utf32_german2_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 431
    const/16 v0, 0xb5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb5

    const-string v3, "utf32_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 432
    const/16 v0, 0xb6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb6

    const-string v3, "utf32_unicode_520_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 433
    const/16 v0, 0xb7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb7

    const-string v3, "utf32_vietnamese_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 435
    const/16 v0, 0xc0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc0

    const-string v3, "utf8_unicode_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 436
    const/16 v0, 0xc1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc1

    const-string v3, "utf8_icelandic_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 437
    const/16 v0, 0xc2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc2

    const-string v3, "utf8_latvian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 438
    const/16 v0, 0xc3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc3

    const-string v3, "utf8_romanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 439
    const/16 v0, 0xc4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc4

    const-string v3, "utf8_slovenian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 440
    const/16 v0, 0xc5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc5

    const-string v3, "utf8_polish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 441
    const/16 v0, 0xc6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc6

    const-string v3, "utf8_estonian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 442
    const/16 v0, 0xc7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc7

    const-string v3, "utf8_spanish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 443
    const/16 v0, 0xc8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc8

    const-string v3, "utf8_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 444
    const/16 v0, 0xc9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc9

    const-string v3, "utf8_turkish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 445
    const/16 v0, 0xca

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xca

    const-string v3, "utf8_czech_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 446
    const/16 v0, 0xcb

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcb

    const-string v3, "utf8_danish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 447
    const/16 v0, 0xcc

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcc

    const-string v3, "utf8_lithuanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 448
    const/16 v0, 0xcd

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcd

    const-string v3, "utf8_slovak_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 449
    const/16 v0, 0xce

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xce

    const-string v3, "utf8_spanish2_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 450
    const/16 v0, 0xcf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcf

    const-string v3, "utf8_roman_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 451
    const/16 v0, 0xd0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd0

    const-string v3, "utf8_persian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 452
    const/16 v0, 0xd1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd1

    const-string v3, "utf8_esperanto_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 453
    const/16 v0, 0xd2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd2

    const-string v3, "utf8_hungarian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 454
    const/16 v0, 0xd3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd3

    const-string v3, "utf8_sinhala_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 455
    const/16 v0, 0xd4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd4

    const-string v3, "utf8_german2_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 456
    const/16 v0, 0xd5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd5

    const-string v3, "utf8_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 457
    const/16 v0, 0xd6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd6

    const-string v3, "utf8_unicode_520_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 458
    const/16 v0, 0xd7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd7

    const-string v3, "utf8_vietnamese_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 460
    const/16 v0, 0xdf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xdf

    const-string v3, "utf8_general_mysql500_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 461
    const/16 v0, 0xe0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe0

    const-string v3, "utf8mb4_unicode_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 462
    const/16 v0, 0xe1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe1

    const-string v3, "utf8mb4_icelandic_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 463
    const/16 v0, 0xe2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe2

    const-string v3, "utf8mb4_latvian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 464
    const/16 v0, 0xe3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe3

    const-string v3, "utf8mb4_romanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 465
    const/16 v0, 0xe4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe4

    const-string v3, "utf8mb4_slovenian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 466
    const/16 v0, 0xe5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe5

    const-string v3, "utf8mb4_polish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 467
    const/16 v0, 0xe6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe6

    const-string v3, "utf8mb4_estonian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 468
    const/16 v0, 0xe7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe7

    const-string v3, "utf8mb4_spanish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 469
    const/16 v0, 0xe8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe8

    const-string v3, "utf8mb4_swedish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 470
    const/16 v0, 0xe9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe9

    const-string v3, "utf8mb4_turkish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 471
    const/16 v0, 0xea

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xea

    const-string v3, "utf8mb4_czech_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 472
    const/16 v0, 0xeb

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xeb

    const-string v3, "utf8mb4_danish_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 473
    const/16 v0, 0xec

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xec

    const-string v3, "utf8mb4_lithuanian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 474
    const/16 v0, 0xed

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xed

    const-string v3, "utf8mb4_slovak_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 475
    const/16 v0, 0xee

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xee

    const-string v3, "utf8mb4_spanish2_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 476
    const/16 v0, 0xef

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xef

    const-string v3, "utf8mb4_roman_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 477
    const/16 v0, 0xf0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf0

    const-string v3, "utf8mb4_persian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 478
    const/16 v0, 0xf1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf1

    const-string v3, "utf8mb4_esperanto_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 479
    const/16 v0, 0xf2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf2

    const-string v3, "utf8mb4_hungarian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 480
    const/16 v0, 0xf3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf3

    const-string v3, "utf8mb4_sinhala_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 481
    const/16 v0, 0xf4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf4

    const-string v3, "utf8mb4_german2_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 482
    const/16 v0, 0xf5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf5

    const-string v3, "utf8mb4_croatian_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 483
    const/16 v0, 0xf6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf6

    const-string v3, "utf8mb4_unicode_520_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 484
    const/16 v0, 0xf7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf7

    const-string v3, "utf8mb4_vietnamese_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 485
    const/16 v0, 0xf8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf8

    const-string v3, "gb18030_chinese_ci"

    const/4 v5, 0x1

    const-string v6, "gb18030"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 486
    const/16 v0, 0xf9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf9

    const-string v3, "gb18030_bin"

    const/4 v5, 0x0

    const-string v6, "gb18030"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 487
    const/16 v0, 0xfa

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xfa

    const-string v3, "gb18030_unicode_520_ci"

    const/4 v5, 0x0

    const-string v6, "gb18030"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 489
    const/16 v0, 0xff

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xff

    const-string v3, "utf8mb4_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 490
    const/16 v0, 0x100

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x100

    const-string v3, "utf8mb4_de_pb_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 491
    const/16 v0, 0x101

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x101

    const-string v3, "utf8mb4_is_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 492
    const/16 v0, 0x102

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x102

    const-string v3, "utf8mb4_lv_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 493
    const/16 v0, 0x103

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x103

    const-string v3, "utf8mb4_ro_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 494
    const/16 v0, 0x104

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x104

    const-string v3, "utf8mb4_sl_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 495
    const/16 v0, 0x105

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x105

    const-string v3, "utf8mb4_pl_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 496
    const/16 v0, 0x106

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x106

    const-string v3, "utf8mb4_et_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 497
    const/16 v0, 0x107

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x107

    const-string v3, "utf8mb4_es_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 498
    const/16 v0, 0x108

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x108

    const-string v3, "utf8mb4_sv_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 499
    const/16 v0, 0x109

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x109

    const-string v3, "utf8mb4_tr_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 500
    const/16 v0, 0x10a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10a

    const-string v3, "utf8mb4_cs_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 501
    const/16 v0, 0x10b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10b

    const-string v3, "utf8mb4_da_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 502
    const/16 v0, 0x10c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10c

    const-string v3, "utf8mb4_lt_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 503
    const/16 v0, 0x10d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10d

    const-string v3, "utf8mb4_sk_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 504
    const/16 v0, 0x10e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10e

    const-string v3, "utf8mb4_es_trad_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 505
    const/16 v0, 0x10f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10f

    const-string v3, "utf8mb4_la_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 507
    const/16 v0, 0x111

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x111

    const-string v3, "utf8mb4_eo_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 508
    const/16 v0, 0x112

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x112

    const-string v3, "utf8mb4_hu_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 509
    const/16 v0, 0x113

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x113

    const-string v3, "utf8mb4_hr_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 511
    const/16 v0, 0x115

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x115

    const-string v3, "utf8mb4_vi_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 512
    const/16 v0, 0x116

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x116

    const-string v3, "utf8mb4_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 513
    const/16 v0, 0x117

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x117

    const-string v3, "utf8mb4_de_pb_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 514
    const/16 v0, 0x118

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x118

    const-string v3, "utf8mb4_is_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 515
    const/16 v0, 0x119

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x119

    const-string v3, "utf8mb4_lv_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 516
    const/16 v0, 0x11a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11a

    const-string v3, "utf8mb4_ro_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 517
    const/16 v0, 0x11b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11b

    const-string v3, "utf8mb4_sl_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 518
    const/16 v0, 0x11c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11c

    const-string v3, "utf8mb4_pl_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 519
    const/16 v0, 0x11d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11d

    const-string v3, "utf8mb4_et_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 520
    const/16 v0, 0x11e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11e

    const-string v3, "utf8mb4_es_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 521
    const/16 v0, 0x11f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11f

    const-string v3, "utf8mb4_sv_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 522
    const/16 v0, 0x120

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x120

    const-string v3, "utf8mb4_tr_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 523
    const/16 v0, 0x121

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x121

    const-string v3, "utf8mb4_cs_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 524
    const/16 v0, 0x122

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x122

    const-string v3, "utf8mb4_da_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 525
    const/16 v0, 0x123

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x123

    const-string v3, "utf8mb4_lt_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 526
    const/16 v0, 0x124

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x124

    const-string v3, "utf8mb4_sk_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 527
    const/16 v0, 0x125

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x125

    const-string v3, "utf8mb4_es_trad_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 528
    const/16 v0, 0x126

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x126

    const-string v3, "utf8mb4_la_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 530
    const/16 v0, 0x128

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x128

    const-string v3, "utf8mb4_eo_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 531
    const/16 v0, 0x129

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x129

    const-string v3, "utf8mb4_hu_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 532
    const/16 v0, 0x12a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12a

    const-string v3, "utf8mb4_hr_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 534
    const/16 v0, 0x12c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12c

    const-string v3, "utf8mb4_vi_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 536
    const/16 v0, 0x12f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12f

    const-string v3, "utf8mb4_ja_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 537
    const/16 v0, 0x130

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x130

    const-string v3, "utf8mb4_ja_0900_as_cs_ks"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 538
    const/16 v0, 0x131

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x131

    const-string v3, "utf8mb4_0900_as_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 539
    const/16 v0, 0x132

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x132

    const-string v3, "utf8mb4_ru_0900_ai_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 540
    const/16 v0, 0x133

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x133

    const-string v3, "utf8mb4_ru_0900_as_cs"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 542
    const/16 v0, 0x146

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x146

    const-string v3, "utf8mb4_test_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 543
    const/16 v0, 0x147

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x147

    const-string v3, "utf16_test_ci"

    const/4 v5, 0x0

    const-string v6, "utf16"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 544
    const/16 v0, 0x148

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x148

    const-string v3, "utf8mb4_test_400_ci"

    const/4 v5, 0x0

    const-string v6, "utf8mb4"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 546
    const/16 v0, 0x150

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x150

    const-string v3, "utf8_bengali_standard_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 547
    const/16 v0, 0x151

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x151

    const-string v3, "utf8_bengali_traditional_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 549
    const/16 v0, 0x160

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x160

    const-string v3, "utf8_phone_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 550
    const/16 v0, 0x161

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x161

    const-string v3, "utf8_test_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 551
    const/16 v0, 0x162

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x162

    const-string v3, "utf8_5624_1"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 552
    const/16 v0, 0x163

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x163

    const-string v3, "utf8_5624_2"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 553
    const/16 v0, 0x164

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x164

    const-string v3, "utf8_5624_3"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 554
    const/16 v0, 0x165

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x165

    const-string v3, "utf8_5624_4"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 555
    const/16 v0, 0x166

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x166

    const-string v3, "ucs2_test_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 556
    const/16 v0, 0x167

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x167

    const-string v3, "ucs2_vn_ci"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 557
    const/16 v0, 0x168

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x168

    const-string v3, "ucs2_5624_1"

    const/4 v5, 0x0

    const-string v6, "ucs2"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 559
    const/16 v0, 0x170

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x170

    const-string v3, "utf8_5624_5"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 560
    const/16 v0, 0x187

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x187

    const-string v3, "utf32_test_ci"

    const/4 v5, 0x0

    const-string v6, "utf32"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 561
    const/16 v0, 0x7ff

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7ff

    const-string v3, "utf8_maxuserid_ci"

    const/4 v5, 0x0

    const-string v6, "utf8"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v4, v0

    .line 563
    const/16 v0, 0x800

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    .line 564
    const/16 v0, 0x800

    new-array v0, v0, [Lcom/mysql/jdbc/MysqlCharset;

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    .line 565
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 566
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 567
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 569
    new-instance v2, Lcom/mysql/jdbc/Collation;

    const/4 v0, 0x0

    const-string v1, "none"

    const/4 v3, 0x0

    const-string v8, "latin1"

    invoke-direct {v2, v0, v1, v3, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 570
    const/4 v0, 0x1

    move v3, v0

    :goto_2
    const/16 v0, 0x800

    if-ge v3, v0, :cond_a

    .line 571
    aget-object v0, v4, v3

    if-eqz v0, :cond_9

    aget-object v0, v4, v3

    move-object v1, v0

    .line 572
    :goto_3
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    iget-object v8, v1, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    aput-object v8, v0, v3

    .line 573
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    iget-object v8, v1, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    aput-object v8, v0, v3

    .line 574
    iget-object v0, v1, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    iget-object v8, v0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 576
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v9, v1, Lcom/mysql/jdbc/Collation;->priority:I

    if-ge v0, v9, :cond_7

    .line 577
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget v0, v1, Lcom/mysql/jdbc/Collation;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_7
    const-string v0, "utf8mb4"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 583
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_9
    move-object v1, v2

    .line 571
    goto :goto_3

    .line 587
    :cond_a
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;

    .line 588
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->UTF8MB4_INDEXES:Ljava/util/Set;

    .line 593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 594
    const-string v1, "czech"

    const-string v2, "latin2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v1, "danish"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v1, "dutch"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v1, "english"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v1, "estonian"

    const-string v2, "latin7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v1, "french"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "german"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v1, "greek"

    const-string v2, "greek"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "hungarian"

    const-string v2, "latin2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v1, "italian"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "japanese"

    const-string v2, "ujis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v1, "japanese-sjis"

    const-string v2, "sjis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v1, "korean"

    const-string v2, "euckr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "norwegian"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "norwegian-ny"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v1, "polish"

    const-string v2, "latin2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v1, "portuguese"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v1, "romanian"

    const-string v2, "latin2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v1, "russian"

    const-string v2, "koi8r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v1, "serbian"

    const-string v2, "cp1250"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "slovak"

    const-string v2, "latin2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v1, "spanish"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v1, "swedish"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v1, "ukrainian"

    const-string v2, "koi8u"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;

    .line 621
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getCharacterEncodingForErrorMessages(Lcom/mysql/jdbc/ConnectionImpl;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 745
    invoke-virtual {p0, v0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    const-string v0, "jdbc.local.character_set_results"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_1

    .line 748
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-object v0

    .line 754
    :cond_1
    const-string v0, "UTF-8"

    goto :goto_0

    .line 757
    :cond_2
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 761
    :cond_3
    const-string v0, "Cp1252"

    goto :goto_0

    .line 764
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 766
    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 767
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 770
    :cond_6
    const/16 v2, 0x2f

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 772
    if-ne v2, v5, :cond_7

    .line 773
    const/16 v2, 0x5c

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 776
    :cond_7
    if-ne v2, v5, :cond_b

    .line 780
    :goto_1
    if-eq v1, v0, :cond_8

    if-ge v0, v1, :cond_9

    .line 782
    :cond_8
    const-string v0, "Cp1252"

    goto :goto_0

    .line 785
    :cond_9
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 787
    sget-object v1, Lcom/mysql/jdbc/CharsetMapping;->ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 789
    if-nez v0, :cond_a

    .line 791
    const-string v0, "Cp1252"

    goto :goto_0

    .line 794
    :cond_a
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    if-nez v0, :cond_0

    .line 798
    const-string v0, "Cp1252"

    goto :goto_0

    :cond_b
    move v1, v2

    goto :goto_1
.end method

.method public static getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 668
    check-cast p1, Lcom/mysql/jdbc/Connection;

    invoke-static {p0, p1}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    .line 670
    sget-object v1, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 671
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 713
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 714
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 715
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 701
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MysqlCharset;

    .line 702
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 705
    :cond_0
    return-object p1
.end method

.method public static getMblen(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 818
    if-eqz p0, :cond_0

    .line 819
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MysqlCharset;

    .line 820
    if-eqz v0, :cond_0

    .line 821
    iget v0, v0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    .line 824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 626
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 628
    if-eqz v0, :cond_3

    .line 629
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    .line 633
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MysqlCharset;

    .line 636
    if-nez p1, :cond_0

    .line 639
    iget-object v0, v0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 656
    :goto_1
    return-object v0

    .line 642
    :cond_0
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    if-lt v4, v5, :cond_1

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    if-lt v4, v5, :cond_1

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    if-lt v4, v5, :cond_1

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    if-ge v4, v5, :cond_4

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    if-ne v4, v5, :cond_4

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    if-ne v4, v5, :cond_4

    iget v4, v1, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    iget v5, v0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    if-ne v4, v5, :cond_4

    .line 645
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/MysqlCharset;->isOkayForVersion(Lcom/mysql/jdbc/Connection;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    move-object v1, v0

    .line 649
    goto :goto_0

    .line 651
    :cond_2
    if-eqz v1, :cond_3

    .line 652
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 656
    goto :goto_1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    throw v0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 661
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 662
    throw v1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 679
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 680
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final getNumberOfCharsetsConfigured()I
    .locals 1

    .prologue
    .line 725
    sget v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    return v0
.end method

.method public static final isMultibyteCharset(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 814
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->MULTIBYTE_ENCODINGS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static final requiresEscapeEasternUnicode(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 805
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->ESCAPE_ENCODINGS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
