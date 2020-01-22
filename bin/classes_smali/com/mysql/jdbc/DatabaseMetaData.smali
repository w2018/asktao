.class public Lcom/mysql/jdbc/DatabaseMetaData;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/DatabaseMetaData$11;,
        Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;,
        Lcom/mysql/jdbc/DatabaseMetaData$TableType;,
        Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;,
        Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;,
        Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;,
        Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;,
        Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;,
        Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;,
        Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;,
        Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    }
.end annotation


# static fields
.field private static final DEFERRABILITY:I = 0xd

.field private static final DELETE_RULE:I = 0xa

.field private static final FKCOLUMN_NAME:I = 0x7

.field private static final FKTABLE_CAT:I = 0x4

.field private static final FKTABLE_NAME:I = 0x6

.field private static final FKTABLE_SCHEM:I = 0x5

.field private static final FK_NAME:I = 0xb

.field private static final JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final KEY_SEQ:I = 0x8

.field protected static final MAX_IDENTIFIER_LENGTH:I = 0x40

.field private static final MYSQL_KEYWORDS:[Ljava/lang/String; = null

.field private static final PKCOLUMN_NAME:I = 0x3

.field private static final PKTABLE_CAT:I = 0x0

.field private static final PKTABLE_NAME:I = 0x2

.field private static final PKTABLE_SCHEM:I = 0x1

.field private static final PK_NAME:I = 0xc

.field private static final SQL2003_KEYWORDS:[Ljava/lang/String; = null

.field private static final SQL92_KEYWORDS:[Ljava/lang/String; = null

.field private static final SUPPORTS_FK:Ljava/lang/String; = "SUPPORTS_FK"

.field protected static final SYSTEM_TABLE_AS_BYTES:[B = null

.field protected static final TABLE_AS_BYTES:[B = null

.field private static final UPDATE_RULE:I = 0x9

.field protected static final VIEW_AS_BYTES:[B

.field private static volatile mysqlKeywords:Ljava/lang/String;


# instance fields
.field protected conn:Lcom/mysql/jdbc/MySQLConnection;

.field protected database:Ljava/lang/String;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected final quotedId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 652
    const-string v0, "TABLE"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->TABLE_AS_BYTES:[B

    .line 654
    const-string v0, "SYSTEM TABLE"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SYSTEM_TABLE_AS_BYTES:[B

    .line 658
    const-string v0, "VIEW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->VIEW_AS_BYTES:[B

    .line 665
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4DatabaseMetaData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    .line 669
    const-string v0, "com.mysql.jdbc.JDBC4DatabaseMetaDataUsingInfoSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 685
    :goto_0
    const/16 v0, 0xeb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ACCESSIBLE"

    aput-object v1, v0, v4

    const-string v1, "ADD"

    aput-object v1, v0, v5

    const-string v1, "ALL"

    aput-object v1, v0, v6

    const-string v1, "ALTER"

    aput-object v1, v0, v7

    const-string v1, "ANALYZE"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "AND"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ASC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ASENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BEFORE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BETWEEN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BIGINT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "BINARY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BLOB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "BOTH"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CASCADE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CASE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CHAR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CHARACTER"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CHECK"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "COLLATE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "COLUMN"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CONDITION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CONSTRAINT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CONTINUE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CONVERT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CREATE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CROSS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CURRENT_DATE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "CURRENT_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "CURRENT_TIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "CURRENT_USER"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CURSOR"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "DATABASE"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "DATABASES"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "DAY_HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "DAY_MICROSECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "DAY_MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "DAY_SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "DEC"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "DECIMAL"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "DECLARE"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "DEFAULT"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "DELAYED"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "DESCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "DETERMINISTIC"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "DISTINCT"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "DISTINCTROW"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "DIV"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "DOUBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "DROP"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "DUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "EACH"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "ELSE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "ELSEIF"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "ENCLOSED"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ESCAPED"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "EXISTS"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "EXIT"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "EXPLAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "FALSE"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "FETCH"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "FLOAT"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "FLOAT4"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "FLOAT8"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "FOR"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "FORCE"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "FOREIGN"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "FROM"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "FULLTEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "GENERATED"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "GRANT"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "HAVING"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "HIGH_PRIORITY"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "HOUR_MICROSECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "HOUR_MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "HOUR_SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "IF"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "IGNORE"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "INDEX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "INFILE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "INNER"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "INOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "INSENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "INT1"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "INT2"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "INT3"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "INT4"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "INT8"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "INTO"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "IO_AFTER_GTIDS"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "IO_BEFORE_GTIDS"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "ITERATE"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "JOIN"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "KEY"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "KEYS"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "KILL"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "LEADING"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "LEAVE"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "LIKE"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "LIMIT"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "LINEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "LINES"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "LOAD"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "LOCALTIME"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "LOCALTIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "LONG"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "LONGBLOB"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "LONGTEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "LOW_PRIORITY"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "MASTER_BIND"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "MASTER_SSL_VERIFY_SERVER_CERT"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "MATCH"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "MAXVALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "MEDIUMBLOB"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "MEDIUMINT"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "MEDIUMTEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "MIDDLEINT"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "MINUTE_MICROSECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "MINUTE_SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "MOD"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "MODIFIES"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "NATURAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "NOT"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "NO_WRITE_TO_BINLOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "NUMERIC"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "ON"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "OPTIMIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "OPTIMIZER_COSTS"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "OPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "OPTIONALLY"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "OR"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "ORDER"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "OUT"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "OUTER"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "OUTFILE"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "PARTITION"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "PRECISION"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "PRIMARY"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "PROCEDURE"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "PURGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "READ"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "READS"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "READ_WRITE"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "REFERENCES"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "REGEXP"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "RELEASE"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "RENAME"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "REPEAT"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "REPLACE"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "REQUIRE"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "RESIGNAL"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "RESTRICT"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "RETURN"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "REVOKE"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "RLIKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "SCHEMA"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "SCHEMAS"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "SECOND_MICROSECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "SELECT"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "SENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "SEPARATOR"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "SET"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "SHOW"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "SIGNAL"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "SMALLINT"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "SPATIAL"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "SPECIFIC"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "SQL"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "SQLEXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "SQLSTATE"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "SQLWARNING"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "SQL_BIG_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "SQL_CALC_FOUND_ROWS"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "SQL_SMALL_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "SSL"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "STARTING"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "STORED"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "STRAIGHT_JOIN"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "TERMINATED"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "THEN"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "TINYBLOB"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "TINYINT"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "TINYTEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "TO"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "TRAILING"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "TRIGGER"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "TRUE"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "UNDO"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "UNION"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "UNIQUE"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "UNLOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "UNSIGNED"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "USAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "USE"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "USING"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "UTC_DATE"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "UTC_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "UTC_TIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "VALUES"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "VARBINARY"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "VARCHAR"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "VARCHARACTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "VARYING"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "VIRTUAL"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "WHEN"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "WHERE"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "WHILE"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "WITH"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "WRITE"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "XOR"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "YEAR_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "ZEROFILL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->MYSQL_KEYWORDS:[Ljava/lang/String;

    .line 706
    const/16 v0, 0xe3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ABSOLUTE"

    aput-object v1, v0, v4

    const-string v1, "ACTION"

    aput-object v1, v0, v5

    const-string v1, "ADD"

    aput-object v1, v0, v6

    const-string v1, "ALL"

    aput-object v1, v0, v7

    const-string v1, "ALLOCATE"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "ALTER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AND"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ANY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ARE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ASC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ASSERTION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AUTHORIZATION"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AVG"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BETWEEN"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BIT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BIT_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BOTH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CASCADE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CASCADED"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CASE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "CAST"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CATALOG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CHAR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CHARACTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CHARACTER_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CHAR_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CHECK"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CLOSE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "COALESCE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "COLLATE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "COLLATION"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "COLUMN"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "COMMIT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "CONNECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "CONSTRAINT"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "CONSTRAINTS"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "CONTINUE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "CONVERT"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "CORRESPONDING"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "CREATE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "CROSS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "CURRENT"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "CURRENT_DATE"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "CURRENT_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "CURRENT_TIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "CURRENT_USER"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "CURSOR"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "DATE"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "DAY"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "DEALLOCATE"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "DEC"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "DECIMAL"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "DECLARE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "DEFAULT"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "DEFERRABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "DEFERRED"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "DESCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "DESCRIPTOR"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "DIAGNOSTICS"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "DISCONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "DISTINCT"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "DOMAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "DOUBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "DROP"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "ELSE"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "END"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "END-EXEC"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "ESCAPE"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "EXCEPT"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "EXEC"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "EXECUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "EXISTS"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "EXTERNAL"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "EXTRACT"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "FALSE"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "FETCH"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "FIRST"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "FLOAT"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "FOR"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "FOREIGN"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "FROM"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "GLOBAL"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "GO"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "GOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "GRANT"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "HAVING"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "IDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "IMMEDIATE"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "INDICATOR"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "INITIALLY"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "INNER"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "INSENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "INTERSECT"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "INTO"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "ISOLATION"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "JOIN"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "KEY"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "LANGUAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "LAST"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "LEADING"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "LEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "LIKE"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "LOCAL"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "LOWER"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "MATCH"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "MAX"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "MIN"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "MODULE"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "NAMES"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "NATIONAL"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "NATURAL"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "NCHAR"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "NEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "NOT"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "NULLIF"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "NUMERIC"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "OCTET_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "OF"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "ON"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "OPEN"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "OPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "OR"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "ORDER"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "OUTER"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "OUTPUT"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "OVERLAPS"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "PAD"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "PARTIAL"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "POSITION"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "PRECISION"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "PREPARE"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "PRESERVE"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "PRIMARY"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "PRIOR"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "PRIVILEGES"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "PROCEDURE"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "PUBLIC"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "READ"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "REFERENCES"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "RELATIVE"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "RESTRICT"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "REVOKE"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "ROLLBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "ROWS"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "SCHEMA"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "SECTION"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "SELECT"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "SESSION"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "SESSION_USER"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "SET"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "SMALLINT"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "SOME"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "SPACE"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "SQL"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "SQLCODE"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "SQLERROR"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "SQLSTATE"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "SUBSTRING"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "SUM"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "SYSTEM_USER"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "TEMPORARY"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "THEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "TIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "TIMEZONE_HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "TIMEZONE_MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "TO"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "TRAILING"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "TRANSACTION"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "TRANSLATE"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "TRANSLATION"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "TRIM"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "TRUE"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "UNION"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "UNIQUE"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "UPPER"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "USAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "USING"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "VALUES"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "VARCHAR"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "VARYING"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "VIEW"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "WHEN"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "WHENEVER"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "WHERE"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "WITH"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "WORK"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "WRITE"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "ZONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SQL92_KEYWORDS:[Ljava/lang/String;

    .line 725
    const/16 v0, 0x120

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ABS"

    aput-object v1, v0, v4

    const-string v1, "ALL"

    aput-object v1, v0, v5

    const-string v1, "ALLOCATE"

    aput-object v1, v0, v6

    const-string v1, "ALTER"

    aput-object v1, v0, v7

    const-string v1, "AND"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "ANY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ARE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ARRAY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ASENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ASYMMETRIC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ATOMIC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AUTHORIZATION"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AVG"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BETWEEN"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BIGINT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BINARY"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BLOB"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BOOLEAN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BOTH"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "CALLED"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CARDINALITY"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CASCADED"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CASE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CAST"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CEIL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CEILING"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CHAR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "CHARACTER"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "CHARACTER_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "CHAR_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CHECK"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "CLOB"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CLOSE"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "COALESCE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "COLLATE"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "COLLECT"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "COLUMN"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "COMMIT"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "CONDITION"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "CONSTRAINT"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "CONVERT"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "CORR"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "CORRESPONDING"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "COVAR_POP"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "COVAR_SAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "CREATE"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "CROSS"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "CUBE"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "CUME_DIST"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "CURRENT"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "CURRENT_DATE"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "CURRENT_DEFAULT_TRANSFORM_GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "CURRENT_PATH"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "CURRENT_ROLE"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "CURRENT_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "CURRENT_TIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "CURRENT_TRANSFORM_GROUP_FOR_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "CURRENT_USER"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "CURSOR"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "CYCLE"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "DATE"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "DAY"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "DEALLOCATE"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "DEC"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "DECIMAL"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "DECLARE"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "DEFAULT"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "DENSE_RANK"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "DEREF"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "DESCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "DETERMINISTIC"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "DISCONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "DISTINCT"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "DOUBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "DROP"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "DYNAMIC"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "EACH"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "ELEMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "ELSE"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "END"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "END-EXEC"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "ESCAPE"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "EVERY"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "EXCEPT"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "EXEC"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "EXECUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "EXISTS"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "EXP"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "EXTERNAL"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "EXTRACT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "FALSE"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "FETCH"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "FILTER"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "FLOAT"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "FLOOR"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "FOR"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "FOREIGN"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "FREE"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "FROM"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "FUNCTION"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "FUSION"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "GLOBAL"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "GRANT"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "GROUPING"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "HAVING"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "HOLD"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "IDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "INDICATOR"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "INNER"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "INOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "INSENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "INTERSECT"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "INTERSECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "INTO"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "JOIN"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "LANGUAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "LARGE"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "LATERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "LEADING"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "LIKE"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "LN"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "LOCAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "LOCALTIME"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "LOCALTIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "LOWER"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "MATCH"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "MAX"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "MEMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "MERGE"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "METHOD"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "MIN"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "MOD"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "MODIFIES"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "MODULE"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "MULTISET"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "NATIONAL"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "NATURAL"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "NCHAR"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "NCLOB"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "NEW"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "NORMALIZE"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "NOT"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "NULLIF"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "NUMERIC"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "OCTET_LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "OF"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "OLD"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "ON"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "OPEN"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "OR"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "ORDER"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "OUT"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "OUTER"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "OVER"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "OVERLAPS"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "OVERLAY"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "PARAMETER"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "PARTITION"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "PERCENTILE_CONT"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "PERCENTILE_DISC"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "PERCENT_RANK"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "POSITION"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "POWER"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "PRECISION"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "PREPARE"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "PRIMARY"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "PROCEDURE"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "RANK"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "READS"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "RECURSIVE"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "REF"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "REFERENCES"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "REFERENCING"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "REGR_AVGX"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "REGR_AVGY"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "REGR_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "REGR_INTERCEPT"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "REGR_R2"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "REGR_SLOPE"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "REGR_SXX"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "REGR_SXY"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "REGR_SYY"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "RELEASE"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "RETURN"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "RETURNS"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "REVOKE"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "ROLLBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "ROLLUP"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "ROW"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "ROWS"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "ROW_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "SAVEPOINT"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "SCOPE"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "SEARCH"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "SELECT"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "SENSITIVE"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "SESSION_USER"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "SET"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "SIMILAR"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "SMALLINT"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "SOME"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "SPECIFIC"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "SPECIFICTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "SQL"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "SQLEXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "SQLSTATE"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "SQLWARNING"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "SQRT"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "START"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "STATIC"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "STDDEV_POP"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "STDDEV_SAMP"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "SUBMULTISET"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "SUBSTRING"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "SUM"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "SYMMETRIC"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "SYSTEM"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "SYSTEM_USER"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "TABLESAMPLE"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "THEN"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "TIMESTAMP"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "TIMEZONE_HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "TIMEZONE_MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "TO"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "TRAILING"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "TRANSLATE"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "TRANSLATION"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "TREAT"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "TRIGGER"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "TRIM"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "TRUE"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "UESCAPE"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "UNION"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "UNIQUE"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "UNNEST"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "UPPER"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "USING"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "VALUES"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "VARCHAR"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "VARYING"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "VAR_POP"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "VAR_SAMP"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "WHEN"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "WHENEVER"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "WHERE"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "WIDTH_BUCKET"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "WITH"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "WITHIN"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "WITHOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SQL2003_KEYWORDS:[Ljava/lang/String;

    .line 749
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 673
    :catch_1
    move-exception v0

    .line 674
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 675
    :catch_2
    move-exception v0

    .line 676
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 679
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;

    .line 680
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 797
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 807
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    .line 809
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 805
    :try_start_1
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    iput-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    throw v0
.end method

.method private buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mysql/jdbc/Field;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method static buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mysql/jdbc/Field;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ")",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 837
    array-length v1, p0

    move v0, v5

    .line 839
    :goto_0
    if-ge v0, v1, :cond_0

    .line 840
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    .line 842
    sparse-switch v2, :sswitch_data_0

    .line 852
    :goto_1
    aget-object v2, p0, v0

    invoke-virtual {v2, p2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 853
    aget-object v2, p0, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :sswitch_0
    aget-object v2, p0, v0

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/mysql/jdbc/Field;->setEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)V

    goto :goto_1

    .line 856
    :cond_0
    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v2, p1}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0

    .line 842
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 973
    if-eqz p8, :cond_0

    const/16 v0, 0x11

    new-array v0, v0, [[B

    .line 974
    :goto_0
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 975
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 976
    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 977
    const/4 v1, 0x3

    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 978
    const/4 v1, 0x4

    invoke-virtual {p0, p4, p5, p6, p8}, Lcom/mysql/jdbc/DatabaseMetaData;->getColumnType(ZZZZ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 979
    const/4 v1, 0x5

    iget-short v2, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 980
    const/4 v1, 0x6

    iget-object v2, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 981
    const/4 v2, 0x7

    iget-object v1, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    aput-object v1, v0, v2

    .line 982
    const/16 v1, 0x8

    const/4 v2, 0x7

    aget-object v2, v0, v2

    aput-object v2, v0, v1

    .line 983
    const/16 v2, 0x9

    iget-object v1, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    aput-object v1, v0, v2

    .line 984
    const/16 v1, 0xa

    iget v2, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 986
    iget v1, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    packed-switch v1, :pswitch_data_0

    .line 1000
    const-string v0, "Internal error while parsing callable statement metadata (unknown nullability value fount)"

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 973
    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [[B

    goto :goto_0

    .line 981
    :cond_1
    iget-object v1, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    .line 983
    :cond_2
    iget-object v1, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_2

    .line 988
    :pswitch_0
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1004
    :goto_3
    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1006
    if-eqz p8, :cond_3

    .line 1008
    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1011
    const/16 v1, 0xe

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1014
    const/16 v1, 0xf

    iget-object v2, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1017
    const/16 v1, 0x10

    aput-object p1, v0, v1

    .line 1041
    :goto_4
    new-instance v1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v1

    .line 992
    :pswitch_1
    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3

    .line 996
    :pswitch_2
    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3

    .line 1020
    :cond_3
    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1023
    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1026
    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1029
    const/16 v1, 0x10

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1032
    const/16 v1, 0x11

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1035
    const/16 v1, 0x12

    iget-object v2, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1038
    const/16 v1, 0x13

    aput-object p1, v0, v1

    goto :goto_4

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private endPositionOfParameterDeclaration(ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1875
    add-int/lit8 v1, p1, 0x1

    .line 1876
    const/4 v0, 0x1

    move v7, v0

    move v0, v1

    .line 1878
    :goto_0
    if-lez v7, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1879
    const-string v2, ")"

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_1
    move-object v1, p2

    move-object v3, p3

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v6

    .line 1882
    if-eq v6, v8, :cond_3

    .line 1883
    const-string v2, "("

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_2
    move-object v1, p2

    move-object v3, p3

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 1886
    if-eq v0, v8, :cond_2

    if-ge v0, v6, :cond_2

    .line 1887
    add-int/lit8 v0, v7, 0x1

    .line 1888
    add-int/lit8 v1, v6, 0x1

    :goto_3
    move v7, v0

    move v0, v1

    .line 1898
    goto :goto_0

    .line 1879
    :cond_0
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_1

    .line 1883
    :cond_1
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_2

    .line 1890
    :cond_2
    add-int/lit8 v0, v7, -0x1

    move v1, v6

    .line 1891
    goto :goto_3

    .line 1895
    :cond_3
    const-string v0, "Internal error when parsing callable statement metadata"

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1900
    :cond_4
    return v0
.end method

.method private findEndOfReturnsClause(Ljava/lang/String;I)I
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1926
    const/16 v0, 0xb

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "LANGUAGE"

    aput-object v0, v9, v1

    const/4 v0, 0x1

    const-string v2, "NOT"

    aput-object v2, v9, v0

    const/4 v0, 0x2

    const-string v2, "DETERMINISTIC"

    aput-object v2, v9, v0

    const/4 v0, 0x3

    const-string v2, "CONTAINS"

    aput-object v2, v9, v0

    const/4 v0, 0x4

    const-string v2, "NO"

    aput-object v2, v9, v0

    const/4 v0, 0x5

    const-string v2, "READ"

    aput-object v2, v9, v0

    const/4 v0, 0x6

    const-string v2, "MODIFIES"

    aput-object v2, v9, v0

    const/4 v0, 0x7

    const-string v2, "SQL"

    aput-object v2, v9, v0

    const/16 v0, 0x8

    const-string v2, "COMMENT"

    aput-object v2, v9, v0

    const/16 v0, 0x9

    const-string v2, "BEGIN"

    aput-object v2, v9, v0

    const/16 v0, 0xa

    const-string v2, "RETURN"

    aput-object v2, v9, v0

    .line 1928
    const-string v0, "RETURNS"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v7, v8

    .line 1932
    :goto_0
    array-length v1, v9

    if-ge v6, v1, :cond_2

    .line 1933
    aget-object v2, v9, v6

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_1
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1936
    if-eq v2, v8, :cond_7

    .line 1937
    if-eq v7, v8, :cond_0

    if-ge v2, v7, :cond_7

    .line 1932
    :cond_0
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v7, v2

    goto :goto_0

    .line 1933
    :cond_1
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_1

    .line 1943
    :cond_2
    if-eq v7, v8, :cond_4

    .line 1955
    :cond_3
    return v7

    .line 1948
    :cond_4
    const-string v2, ":"

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_3
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v7

    .line 1951
    if-eq v7, v8, :cond_6

    .line 1953
    :goto_4
    if-lez v7, :cond_6

    .line 1954
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1953
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 1948
    :cond_5
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_3

    .line 1962
    :cond_6
    const-string v0, "Internal error when parsing callable statement metadata"

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_7
    move v2, v7

    goto :goto_2
.end method

.method private getCallStmtParameterTypes(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1552
    const/4 v3, 0x0

    .line 1553
    const/4 v9, 0x0

    .line 1555
    if-nez p4, :cond_0

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1557
    const-string p4, "%"

    .line 1564
    :cond_0
    const/4 v12, 0x0

    .line 1569
    const/4 v8, 0x0

    .line 1570
    const/4 v11, 0x0

    .line 1571
    const/4 v10, 0x0

    .line 1574
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v15

    .line 1576
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-eqz v2, :cond_1

    .line 1580
    const/4 v3, 0x0

    .line 1583
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1584
    const-string v2, "SELECT DATABASE()"

    invoke-interface {v15, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 1585
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    .line 1587
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p1

    .line 1591
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1593
    if-eqz v3, :cond_1

    .line 1594
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 1599
    :cond_1
    invoke-interface {v15}, Ljava/sql/Statement;->getMaxRows()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1600
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 1605
    :cond_2
    const-string v2, " "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1606
    const/4 v2, 0x0

    const-string v4, "."

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_0
    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    move v3, v2

    .line 1614
    :goto_1
    const/4 v2, -0x1

    if-eq v3, v2, :cond_9

    add-int/lit8 v2, v3, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 1615
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1616
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v3, v2

    .line 1623
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    .line 1625
    :try_start_4
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    move-object/from16 v20, v2

    .line 1632
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 1634
    :try_start_6
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    move-object/from16 v19, v2

    .line 1642
    :goto_4
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1643
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1645
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 1649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHOW CREATE PROCEDURE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    .line 1650
    :try_start_8
    const-string v2, "Create Procedure"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v14, v3

    .line 1656
    :goto_5
    :try_start_9
    invoke-interface {v14}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1657
    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 1660
    :cond_3
    const-string v2, "User does not have access to metadata required to determine stored procedure parameter types. If rights can not be granted, configure connection with \"noAccessToProcedureBodies=true\" to have driver generate parameters that represent INOUT strings irregardless of actual parameter types."

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1731
    :catchall_0
    move-exception v2

    move-object v3, v14

    move-object v4, v15

    :goto_6
    const/4 v5, 0x0

    .line 1733
    if-eqz v3, :cond_25

    .line 1735
    :try_start_a
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_3

    move-object v3, v5

    .line 1743
    :goto_7
    if-eqz v4, :cond_4

    .line 1745
    :try_start_b
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_4

    .line 1753
    :cond_4
    :goto_8
    if-eqz v3, :cond_15

    .line 1754
    throw v3

    .line 1559
    :cond_5
    const-string v2, "Parameter/Column name pattern can not be NULL or empty."

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1591
    :catchall_1
    move-exception v2

    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1593
    if-eqz v3, :cond_6

    .line 1594
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 1591
    :cond_6
    throw v2

    .line 1731
    :catchall_2
    move-exception v2

    move-object v3, v9

    move-object v4, v15

    goto :goto_6

    .line 1606
    :cond_7
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto/16 :goto_0

    .line 1609
    :cond_8
    const-string v2, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto/16 :goto_1

    .line 1618
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    .line 1626
    :catch_0
    move-exception v4

    .line 1627
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v20, v2

    goto/16 :goto_3

    .line 1635
    :catch_1
    move-exception v4

    .line 1636
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v19, v2

    goto/16 :goto_4

    .line 1652
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHOW CREATE FUNCTION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v3

    .line 1653
    :try_start_d
    const-string v2, "Create Function"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v14, v3

    goto/16 :goto_5

    .line 1668
    :cond_b
    :try_start_e
    const-string v3, "sql_mode"

    invoke-interface {v14, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1670
    const-string v4, "ANSI"

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_2

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 1671
    const/4 v3, 0x1

    :goto_9
    move/from16 v18, v3

    .line 1677
    :goto_a
    if-eqz v18, :cond_c

    :try_start_f
    const-string v3, "`\""

    move-object v4, v3

    .line 1678
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1682
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_27

    .line 1684
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v3

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1686
    const/4 v2, 0x0

    const-string v4, "("

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_c
    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v21

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v3, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->endPositionOfParameterDeclaration(ILjava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 1692
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_10

    .line 1696
    const/4 v2, 0x0

    const-string v4, " RETURNS "

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_d
    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1699
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->findEndOfReturnsClause(Ljava/lang/String;I)I

    move-result v4

    .line 1703
    const-string v5, "RETURNS "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 1705
    :goto_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_f

    .line 1706
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1707
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1673
    :catch_2
    move-exception v3

    move/from16 v18, v8

    goto/16 :goto_a

    .line 1677
    :cond_c
    const-string v3, "`"

    move-object v4, v3

    goto/16 :goto_b

    .line 1686
    :cond_d
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_c

    .line 1696
    :cond_e
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_d

    .line 1713
    :cond_f
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1714
    new-instance v11, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    const-string v4, "YES"

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2, v4}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, v20

    move-object/from16 v6, v19

    move/from16 v12, p6

    invoke-direct/range {v4 .. v13}, Lcom/mysql/jdbc/DatabaseMetaData;->convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    :cond_10
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_11

    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_12

    .line 1722
    :cond_11
    const-string v2, "Internal error when parsing callable statement metadata"

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1726
    :cond_12
    add-int/lit8 v2, v21, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v2

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v13, v18

    move-object v5, v2

    .line 1731
    :goto_f
    const/4 v2, 0x0

    .line 1733
    if-eqz v14, :cond_13

    .line 1735
    :try_start_10
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_5

    .line 1743
    :cond_13
    :goto_10
    if-eqz v15, :cond_14

    .line 1745
    :try_start_11
    invoke-interface {v15}, Ljava/sql/Statement;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_6

    .line 1753
    :cond_14
    :goto_11
    if-eqz v2, :cond_16

    .line 1754
    throw v2

    .line 1731
    :cond_15
    throw v2

    .line 1758
    :cond_16
    if-eqz v5, :cond_17

    .line 1759
    const/4 v11, 0x1

    .line 1761
    const-string v2, ","

    const/4 v6, 0x1

    invoke-static {v5, v2, v4, v3, v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v15

    .line 1763
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .line 1765
    const/4 v2, 0x0

    move v14, v2

    :goto_12
    move/from16 v0, v16

    if-ge v14, v0, :cond_17

    .line 1766
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1768
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    .line 1856
    :cond_17
    return-void

    .line 1773
    :cond_18
    const-string v3, "[\\t\\n\\x0B\\f\\r]"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1774
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const/4 v7, 0x0

    .line 1780
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1781
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1783
    const-string v4, "OUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1784
    const/4 v6, 0x1

    .line 1786
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1787
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1821
    :goto_13
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1824
    :goto_14
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1825
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1789
    :cond_19
    const-string v2, "Internal error when parsing callable statement metadata (missing parameter name)"

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1792
    :cond_1a
    const-string v4, "INOUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1793
    const/4 v6, 0x1

    .line 1794
    const/4 v7, 0x1

    .line 1796
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1797
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 1799
    :cond_1b
    const-string v2, "Internal error when parsing callable statement metadata (missing parameter name)"

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1802
    :cond_1c
    const-string v4, "IN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1803
    const/4 v6, 0x0

    .line 1804
    const/4 v7, 0x1

    .line 1806
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1807
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 1809
    :cond_1d
    const-string v2, "Internal error when parsing callable statement metadata (missing parameter name)"

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1813
    :cond_1e
    const/4 v6, 0x0

    .line 1814
    const/4 v7, 0x1

    .line 1816
    goto :goto_13

    .line 1829
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1831
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    const-string v4, "YES"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_20
    if-eqz v13, :cond_26

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1839
    :cond_21
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 1842
    :goto_15
    move-object/from16 v0, p4

    invoke-static {v5, v0}, Lcom/mysql/jdbc/StringUtils;->wildCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1843
    const/4 v8, 0x0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lcom/mysql/jdbc/DatabaseMetaData;->convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    .line 1846
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v12

    .line 1765
    :cond_22
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_12

    .line 1833
    :cond_23
    const-string v2, "Internal error when parsing callable statement metadata (missing parameter type)"

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1849
    :cond_24
    const-string v2, "Internal error when parsing callable statement metadata (unknown output from \'SHOW CREATE PROCEDURE\')"

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1736
    :catch_3
    move-exception v3

    goto/16 :goto_7

    .line 1746
    :catch_4
    move-exception v3

    goto/16 :goto_8

    .line 1736
    :catch_5
    move-exception v2

    goto/16 :goto_10

    .line 1746
    :catch_6
    move-exception v2

    goto/16 :goto_11

    .line 1731
    :catchall_3
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_6

    :catchall_4
    move-exception v2

    move-object v4, v15

    goto/16 :goto_6

    :cond_25
    move-object v3, v5

    goto/16 :goto_7

    :cond_26
    move-object v5, v2

    goto :goto_15

    :cond_27
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v13, v18

    move-object v5, v12

    goto/16 :goto_f

    :cond_28
    move v3, v8

    goto/16 :goto_9

    :cond_29
    move-object v3, v10

    move-object v4, v11

    move v13, v8

    move-object v5, v12

    goto/16 :goto_f
.end method

.method private getCascadeDeleteOption(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 1975
    const-string v1, "ON DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1977
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1980
    const-string v2, "ON DELETE CASCADE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1981
    const/4 v0, 0x0

    .line 1991
    :cond_0
    :goto_0
    return v0

    .line 1982
    :cond_1
    const-string v2, "ON DELETE SET NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1983
    const/4 v0, 0x2

    goto :goto_0

    .line 1984
    :cond_2
    const-string v2, "ON DELETE RESTRICT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1985
    const/4 v0, 0x1

    goto :goto_0

    .line 1986
    :cond_3
    const-string v2, "ON DELETE NO ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private getCascadeUpdateOption(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 2003
    const-string v1, "ON UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2005
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2006
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2008
    const-string v2, "ON UPDATE CASCADE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2009
    const/4 v0, 0x0

    .line 2019
    :cond_0
    :goto_0
    return v0

    .line 2010
    :cond_1
    const-string v2, "ON UPDATE SET NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2011
    const/4 v0, 0x2

    goto :goto_0

    .line 2012
    :cond_2
    const-string v2, "ON UPDATE RESTRICT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2013
    const/4 v0, 0x1

    goto :goto_0

    .line 2014
    :cond_3
    const-string v2, "ON UPDATE NO ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Z)Lcom/mysql/jdbc/DatabaseMetaData;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 772
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    if-eqz p2, :cond_0

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v4, v2, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 786
    :goto_0
    return-object v0

    .line 777
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v4, v2, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData;

    goto :goto_0

    .line 786
    :cond_2
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData;

    goto :goto_0
.end method

.method private getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4217
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-result-object v2

    .line 4219
    if-eqz p6, :cond_1

    iget-object v0, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4256
    :cond_0
    return-void

    .line 4223
    :cond_1
    iget-object v0, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 4224
    const-string v0, "Error parsing foreign keys definition, number of local and referenced columns is not the same."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4228
    :cond_2
    iget-object v0, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4229
    iget-object v0, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4231
    const/4 v0, 0x1

    move v1, v0

    .line 4233
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4234
    const/16 v0, 0xe

    new-array v5, v0, [[B

    .line 4235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4236
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4237
    const/4 v8, 0x4

    if-nez p1, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    aput-object v0, v5, v8

    .line 4238
    const/4 v0, 0x5

    const/4 v8, 0x0

    aput-object v8, v5, v0

    .line 4239
    const/4 v8, 0x6

    if-eqz p6, :cond_4

    move-object v0, p5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v5, v8

    .line 4240
    const/4 v0, 0x7

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v5, v0

    .line 4241
    const/4 v0, 0x0

    iget-object v6, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedCatalog:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v5, v0

    .line 4242
    const/4 v0, 0x1

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 4243
    const/4 v6, 0x2

    if-eqz p6, :cond_5

    move-object v0, p2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v5, v6

    .line 4244
    const/4 v0, 0x3

    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v5, v0

    .line 4245
    const/16 v6, 0x8

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v5, v6

    .line 4247
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->getForeignKeyActions(Ljava/lang/String;)[I

    move-result-object v1

    .line 4249
    const/16 v6, 0x9

    const/4 v7, 0x1

    aget v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v5, v6

    .line 4250
    const/16 v6, 0xa

    const/4 v7, 0x0

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v5, v6

    .line 4251
    const/16 v1, 0xb

    iget-object v6, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->constraintName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v5, v1

    .line 4252
    const/16 v1, 0xc

    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 4253
    const/16 v1, 0xd

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v5, v1

    .line 4254
    new-instance v1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 4255
    goto/16 :goto_0

    .line 4237
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move-object v0, p2

    .line 4239
    goto/16 :goto_2

    .line 4243
    :cond_5
    iget-object v0, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method protected convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/sql/ResultSet;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;>;I[",
            "Lcom/mysql/jdbc/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 861
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 862
    const/4 v0, 0x1

    .line 864
    if-eqz p3, :cond_1

    .line 865
    const/4 v0, 0x0

    .line 867
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 869
    if-nez p4, :cond_2

    if-nez v1, :cond_2

    .line 870
    const/4 v0, 0x1

    .line 876
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 877
    invoke-interface {p2, p6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 881
    if-eqz p7, :cond_4

    array-length v0, p7

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 883
    const/16 v0, 0x9

    new-array v1, v0, [[B

    .line 884
    const/4 v3, 0x0

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_2
    aput-object v0, v1, v3

    .line 885
    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 886
    const/4 v0, 0x2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 887
    const/4 v0, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 888
    const/4 v0, 0x4

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 889
    const/4 v0, 0x5

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 890
    const/4 v0, 0x6

    const-string v3, "comment"

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 891
    const/4 v0, 0x7

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 892
    const/16 v0, 0x8

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    move-object v0, v1

    .line 905
    :goto_3
    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 871
    :cond_2
    if-eqz p4, :cond_1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    const/4 v0, 0x1

    goto :goto_1

    .line 884
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 895
    :cond_4
    const/4 v0, 0x6

    new-array v1, v0, [[B

    .line 897
    const/4 v3, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_4
    aput-object v0, v1, v3

    .line 898
    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 899
    const/4 v0, 0x2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 900
    const/4 v0, 0x3

    const-string v3, "comment"

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 901
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getJDBC4FunctionNoTableConstant()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 902
    const/4 v0, 0x5

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v0

    move-object v0, v1

    goto :goto_3

    .line 897
    :cond_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_4

    .line 909
    :cond_6
    return-void
.end method

.method protected convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/sql/ResultSet;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 934
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 935
    const/4 v0, 0x1

    .line 937
    if-eqz p4, :cond_1

    .line 938
    const/4 v0, 0x0

    .line 940
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 942
    if-nez p5, :cond_2

    if-nez v1, :cond_2

    .line 943
    const/4 v0, 0x1

    .line 949
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 950
    invoke-interface {p3, p7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 951
    const/16 v0, 0x9

    new-array v2, v0, [[B

    .line 952
    const/4 v3, 0x0

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    aput-object v0, v2, v3

    .line 953
    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 954
    const/4 v0, 0x2

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 955
    const/4 v0, 0x3

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 956
    const/4 v0, 0x4

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 957
    const/4 v0, 0x5

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 958
    const/4 v0, 0x6

    const-string v3, "comment"

    invoke-interface {p3, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 960
    if-eqz p1, :cond_4

    const-string v0, "FUNCTION"

    const-string v3, "type"

    invoke-interface {p3, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 961
    :goto_3
    const/4 v3, 0x7

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v2, v3

    .line 963
    const/16 v0, 0x8

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 965
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {p0, p2, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-direct {v0, p0, v1, v3}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 944
    :cond_2
    if-eqz p5, :cond_1

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    const/4 v0, 0x1

    goto :goto_1

    .line 952
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 960
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 961
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 969
    :cond_6
    return-void
.end method

.method protected createColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xff

    const/16 v8, 0xa

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 2572
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 2573
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    invoke-direct {v1, v2, v3, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 2574
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    invoke-direct {v1, v2, v3, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 2575
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_NAME"

    invoke-direct {v2, v3, v4, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2576
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_NAME"

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2577
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 2578
    const/4 v1, 0x5

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2579
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_SIZE"

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2580
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "BUFFER_LENGTH"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2581
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DECIMAL_DIGITS"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2582
    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NUM_PREC_RADIX"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2583
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "NULLABLE"

    invoke-direct {v1, v2, v3, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 2584
    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v2, v3, v4, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2585
    const/16 v1, 0xc

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_DEF"

    invoke-direct {v2, v3, v4, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2586
    const/16 v1, 0xd

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATA_TYPE"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2587
    const/16 v1, 0xe

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATETIME_SUB"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2588
    const/16 v1, 0xf

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CHAR_OCTET_LENGTH"

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2589
    const/16 v1, 0x10

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ORDINAL_POSITION"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2590
    const/16 v1, 0x11

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_NULLABLE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2591
    const/16 v1, 0x12

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE_CATALOG"

    invoke-direct {v2, v3, v4, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2592
    const/16 v1, 0x13

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE_SCHEMA"

    invoke-direct {v2, v3, v4, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2593
    const/16 v1, 0x14

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE_TABLE"

    invoke-direct {v2, v3, v4, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2594
    const/16 v1, 0x15

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SOURCE_DATA_TYPE"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2595
    const/16 v1, 0x16

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_AUTOINCREMENT"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2596
    const/16 v1, 0x17

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_GENERATEDCOLUMN"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2597
    return-object v0
.end method

.method protected createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x1

    .line 4044
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4045
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_CAT"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 4046
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_SCHEM"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4047
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PROCEDURE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4048
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "reserved1"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4049
    const/4 v1, 0x4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "reserved2"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4050
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "reserved3"

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 4051
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "REMARKS"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 4052
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PROCEDURE_TYPE"

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4053
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SPECIFIC_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4055
    return-object v0
.end method

.method protected createFkMetadataFields()[Lcom/mysql/jdbc/Field;
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2805
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 2806
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PKTABLE_CAT"

    invoke-direct {v1, v2, v3, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 2807
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PKTABLE_SCHEM"

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 2808
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PKTABLE_NAME"

    invoke-direct {v1, v2, v3, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 2809
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PKCOLUMN_NAME"

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2810
    const/4 v1, 0x4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FKTABLE_CAT"

    invoke-direct {v2, v3, v4, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2811
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FKTABLE_SCHEM"

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 2812
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FKTABLE_NAME"

    invoke-direct {v2, v3, v4, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2813
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FKCOLUMN_NAME"

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2814
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "KEY_SEQ"

    invoke-direct {v2, v3, v4, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2815
    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "UPDATE_RULE"

    invoke-direct {v2, v3, v4, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2816
    const/16 v1, 0xa

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DELETE_RULE"

    invoke-direct {v2, v3, v4, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2817
    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FK_NAME"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2818
    const/16 v1, 0xc

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PK_NAME"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2819
    const/16 v1, 0xd

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DEFERRABILITY"

    invoke-direct {v2, v3, v4, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 2820
    return-object v0
.end method

.method protected createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/16 v8, 0x200

    const/4 v5, 0x5

    const/4 v7, 0x4

    const/16 v6, 0xc

    .line 7776
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_CAT"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_SCHEM"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_NAME"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_NAME"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_TYPE"

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_NAME"

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PRECISION"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "LENGTH"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCALE"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "RADIX"

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NULLABLE"

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "REMARKS"

    invoke-direct {v1, v2, v3, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    const/16 v1, 0xd

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CHAR_OCTET_LENGTH"

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ORDINAL_POSITION"

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_NULLABLE"

    invoke-direct {v2, v3, v4, v6, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SPECIFIC_NAME"

    const/16 v5, 0x40

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7783
    return-object v0
.end method

.method protected createIndexInfoFields()[Lcom/mysql/jdbc/Field;
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x20

    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    .line 3436
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3437
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_CAT"

    const/16 v5, 0xff

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3438
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3439
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_NAME"

    const/16 v5, 0xff

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3440
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NON_UNIQUE"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3441
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "INDEX_QUALIFIER"

    invoke-direct {v1, v2, v3, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 3442
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "INDEX_NAME"

    invoke-direct {v1, v2, v3, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 3443
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE"

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3444
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ORDINAL_POSITION"

    invoke-direct {v2, v3, v4, v8, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3445
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_NAME"

    invoke-direct {v2, v3, v4, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3446
    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ASC_OR_DESC"

    invoke-direct {v2, v3, v4, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3447
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3448
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "CARDINALITY"

    const/4 v4, -0x5

    const/16 v5, 0x14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 3449
    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PAGES"

    const/4 v5, -0x5

    const/16 v6, 0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3454
    :goto_0
    const/16 v1, 0xc

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FILTER_CONDITION"

    invoke-direct {v2, v3, v4, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3455
    return-object v0

    .line 3451
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "CARDINALITY"

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 3452
    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PAGES"

    invoke-direct {v2, v3, v4, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method protected createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/16 v8, 0x200

    const/16 v7, 0xc

    const/4 v6, 0x1

    .line 3870
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3872
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PROCEDURE_CAT"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3873
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_SCHEM"

    invoke-direct {v1, v2, v3, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 3874
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PROCEDURE_NAME"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3875
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_NAME"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3876
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_TYPE"

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 3877
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v10, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 3878
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    const/16 v5, 0x40

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3879
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PRECISION"

    invoke-direct {v2, v3, v4, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3880
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "LENGTH"

    invoke-direct {v2, v3, v4, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3881
    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCALE"

    invoke-direct {v2, v3, v4, v10, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3882
    const/16 v1, 0xa

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "RADIX"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v10, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3883
    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NULLABLE"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v10, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3884
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "REMARKS"

    invoke-direct {v1, v2, v3, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3885
    const/16 v1, 0xd

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_DEF"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3886
    const/16 v1, 0xe

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATA_TYPE"

    invoke-direct {v2, v3, v4, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3887
    const/16 v1, 0xf

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATETIME_SUB"

    invoke-direct {v2, v3, v4, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3888
    const/16 v1, 0x10

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CHAR_OCTET_LENGTH"

    invoke-direct {v2, v3, v4, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3889
    const/16 v1, 0x11

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ORDINAL_POSITION"

    invoke-direct {v2, v3, v4, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3890
    const/16 v1, 0x12

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_NULLABLE"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3891
    const/16 v1, 0x13

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SPECIFIC_NAME"

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 3892
    return-object v0
.end method

.method protected createTablesFields()[Lcom/mysql/jdbc/Field;
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/16 v5, 0xc

    .line 4819
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4820
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    invoke-direct {v1, v2, v3, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 4821
    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_SCHEM"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4822
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_NAME"

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4823
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_TYPE"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4824
    const/4 v1, 0x4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4825
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_CAT"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 4826
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_SCHEM"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4827
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4828
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SELF_REFERENCING_COL_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4829
    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REF_GENERATION"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4830
    return-object v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1087
    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v0, 0x1

    return v0
.end method

.method public extractForeignKeyForTable(Ljava/util/ArrayList;Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/sql/ResultSet;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1141
    const/4 v1, 0x3

    new-array v14, v1, [[B

    .line 1142
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    aput-object v2, v14, v1

    .line 1143
    const/4 v1, 0x1

    const-string v2, "SUPPORTS_FK"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v14, v1

    .line 1145
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1146
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v15, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v1, "comment; "

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    const/4 v1, 0x1

    move v9, v1

    .line 1150
    :goto_0
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1151
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1153
    const/4 v1, 0x0

    .line 1155
    const-string v3, "CONSTRAINT"

    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1156
    const/4 v4, 0x1

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1159
    const/4 v5, -0x1

    if-ne v3, v5, :cond_d

    .line 1160
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1161
    const/4 v4, 0x0

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    .line 1164
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 1167
    if-eqz v3, :cond_2

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v3, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1173
    :goto_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    .line 1174
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1175
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v10, v1

    move-object v1, v2

    .line 1180
    :goto_3
    const-string v2, "FOREIGN KEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1181
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1182
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1185
    :goto_4
    const-string v1, "FOREIGN KEY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1187
    const/4 v11, 0x0

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 1189
    const/4 v8, 0x0

    .line 1190
    const/4 v7, 0x0

    .line 1192
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    .line 1193
    const-string v3, "FOREIGN KEY"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 1195
    const-string v3, "REFERENCES"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v6, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v17

    .line 1197
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_9

    .line 1199
    const/16 v3, 0x28

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1200
    const-string v3, ")"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v6, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    .line 1203
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1209
    const-string v1, "REFERENCES"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v1, v1, v17

    .line 1211
    const-string v3, "("

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v6, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v17

    .line 1214
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_8

    .line 1215
    move/from16 v0, v17

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1217
    add-int/lit8 v1, v17, 0x1

    const-string v3, ")"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v6, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    .line 1220
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 1221
    add-int/lit8 v3, v17, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1224
    :goto_5
    const/4 v3, 0x0

    const-string v5, "."

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v8, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object v4, v11

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    .line 1227
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 1228
    const/4 v4, 0x0

    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1229
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v1

    move-object v5, v13

    .line 1235
    :goto_6
    if-nez v9, :cond_3

    .line 1236
    const-string v1, "; "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v9

    .line 1241
    :goto_7
    if-eqz v10, :cond_4

    .line 1242
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    :goto_8
    const-string v6, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v5, ") REFER "

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string v4, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v3, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string v3, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1259
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1260
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1261
    const-string v3, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_9
    move v9, v1

    .line 1265
    goto/16 :goto_0

    .line 1170
    :cond_2
    const-string v3, "\""

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v3, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_2

    .line 1238
    :cond_3
    const/4 v1, 0x0

    goto :goto_7

    .line 1244
    :cond_4
    const-string v6, "not_available"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1267
    :cond_5
    const/4 v1, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v14, v1

    .line 1268
    new-instance v1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    return-object p1

    :cond_6
    move-object v7, v1

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    goto/16 :goto_6

    :cond_7
    move-object v1, v7

    goto/16 :goto_5

    :cond_8
    move-object v3, v8

    move-object v4, v12

    move-object v5, v13

    goto/16 :goto_6

    :cond_9
    move-object v3, v8

    move-object v4, v12

    move-object v5, v11

    goto/16 :goto_6

    :cond_a
    move-object v2, v1

    goto/16 :goto_4

    :cond_b
    move v1, v9

    goto :goto_9

    :cond_c
    move-object v10, v1

    move-object v1, v2

    goto/16 :goto_3

    :cond_d
    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_1
.end method

.method public extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const v10, 0x7fffffff

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    if-eqz p2, :cond_3

    .line 1295
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    const/4 v1, 0x3

    new-array v5, v1, [Lcom/mysql/jdbc/Field;

    .line 1314
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "Name"

    invoke-direct {v1, v6, v7, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v5, v0

    .line 1315
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "Type"

    const/16 v8, 0xff

    invoke-direct {v1, v6, v7, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v5, v9

    .line 1316
    const/4 v1, 0x2

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "Comment"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v5, v1

    .line 1318
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1319
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v7

    move-object v1, v2

    move v2, v0

    .line 1322
    :goto_1
    if-ge v2, v6, :cond_7

    .line 1323
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1325
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SHOW CREATE TABLE "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 1328
    :try_start_1
    invoke-interface {v7, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1340
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1341
    invoke-virtual {p0, v4, v0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyForTable(Ljava/util/ArrayList;Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1345
    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_3
    if-eqz v1, :cond_1

    .line 1346
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1351
    :cond_1
    if-eqz v7, :cond_2

    .line 1352
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 1345
    :cond_2
    throw v0

    .line 1298
    :cond_3
    :try_start_3
    const-string v1, ""

    const-string v4, "%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "TABLE"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 1300
    :goto_4
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1301
    const-string v4, "TABLE_NAME"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 1304
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    .line 1305
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1304
    :cond_4
    throw v0

    .line 1329
    :catch_0
    move-exception v0

    .line 1331
    :try_start_5
    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v8

    .line 1333
    const-string v9, "42S02"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v8

    const/16 v9, 0x47a

    if-eq v8, v9, :cond_5

    .line 1334
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1345
    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 1322
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 1345
    :cond_7
    if-eqz v1, :cond_8

    .line 1346
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1351
    :cond_8
    if-eqz v7, :cond_9

    .line 1352
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 1358
    :cond_9
    invoke-direct {p0, v5, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_a
    if-eqz v1, :cond_0

    .line 1305
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    goto/16 :goto_0

    .line 1304
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7903
    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/16 v5, 0x20

    .line 1365
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 1366
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_CAT"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1367
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_SCHEM"

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 1368
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1369
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ATTR_NAME"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1370
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v1, v2, v3, v8, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 1371
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "ATTR_TYPE_NAME"

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 1372
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ATTR_SIZE"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1373
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DECIMAL_DIGITS"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1374
    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NUM_PREC_RADIX"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1375
    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NULLABLE "

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1376
    const/16 v1, 0xa

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1377
    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ATTR_DEF"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1378
    const/16 v1, 0xc

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATA_TYPE"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1379
    const/16 v1, 0xd

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATETIME_SUB"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1380
    const/16 v1, 0xe

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CHAR_OCTET_LENGTH"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1381
    const/16 v1, 0xf

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ORDINAL_POSITION"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1382
    const/16 v1, 0x10

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_NULLABLE"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1383
    const/16 v1, 0x11

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE_CATALOG"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1384
    const/16 v1, 0x12

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE_SCHEMA"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1385
    const/16 v1, 0x13

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE_TABLE"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1386
    const/16 v1, 0x14

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SOURCE_DATA_TYPE"

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 1434
    if-nez p3, :cond_0

    .line 1435
    const-string v0, "Table not specified."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1438
    :cond_0
    const/16 v0, 0x8

    new-array v6, v0, [Lcom/mysql/jdbc/Field;

    .line 1439
    const/4 v0, 0x0

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SCOPE"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 1440
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_NAME"

    invoke-direct {v0, v1, v2, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v7

    .line 1441
    const/4 v0, 0x2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v1, v2, v3, v5, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 1442
    const/4 v0, 0x3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_NAME"

    invoke-direct {v1, v2, v3, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 1443
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_SIZE"

    invoke-direct {v0, v1, v2, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v5

    .line 1444
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "BUFFER_LENGTH"

    invoke-direct {v0, v1, v2, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v4

    .line 1445
    const/4 v0, 0x6

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DECIMAL_DIGITS"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 1446
    const/4 v0, 0x7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PSEUDO_COLUMN"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 1448
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 1453
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$1;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$1;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$1;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    if-eqz v4, :cond_1

    .line 1534
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 1538
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 1540
    return-object v0

    .line 1533
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 1534
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 1533
    :cond_2
    throw v0
.end method

.method protected getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2024
    if-eqz p1, :cond_2

    .line 2025
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2026
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2027
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    .line 2042
    :goto_0
    return-object v0

    .line 2029
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2033
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2035
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2037
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogs()Ljava/sql/ResultSet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/sql/ResultSet;I)V

    goto :goto_0
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2120
    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2133
    const-string v0, "database"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2064
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2065
    :try_start_1
    const-string v3, "SHOW DATABASES"

    invoke-interface {v1, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 2068
    invoke-interface {v2}, Ljava/sql/ResultSet;->last()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2069
    invoke-interface {v2}, Ljava/sql/ResultSet;->getRow()I

    move-result v0

    .line 2070
    invoke-interface {v2}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 2073
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2074
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2075
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2091
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    .line 2093
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2101
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 2103
    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2091
    :cond_2
    :goto_3
    throw v0

    .line 2077
    :cond_3
    :try_start_4
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2079
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    .line 2080
    const/4 v5, 0x0

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_CAT"

    const/16 v9, 0xc

    invoke-interface {v2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    .line 2082
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2083
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2084
    const/4 v6, 0x1

    new-array v6, v6, [[B

    .line 2085
    const/4 v7, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v6, v7

    .line 2086
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2089
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 2091
    if-eqz v2, :cond_5

    .line 2093
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2101
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 2103
    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2089
    :cond_6
    :goto_6
    return-object v0

    .line 2094
    :catch_0
    move-exception v2

    .line 2095
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_2

    .line 2104
    :catch_1
    move-exception v1

    .line 2105
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_3

    .line 2094
    :catch_2
    move-exception v2

    .line 2095
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_5

    .line 2104
    :catch_3
    move-exception v1

    .line 2105
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_6

    .line 2091
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0xff

    const/16 v6, 0xc

    .line 7753
    new-array v0, v8, [Lcom/mysql/jdbc/Field;

    .line 7754
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NAME"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7755
    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "MAX_LEN"

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7756
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DEFAULT_VALUE"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7757
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DESCRIPTION"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2169
    const/16 v1, 0x8

    new-array v4, v1, [Lcom/mysql/jdbc/Field;

    .line 2170
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "TABLE_CAT"

    const/4 v6, 0x1

    const/16 v7, 0x40

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2171
    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "TABLE_SCHEM"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2172
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "TABLE_NAME"

    const/4 v6, 0x1

    const/16 v7, 0x40

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2173
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "COLUMN_NAME"

    const/4 v6, 0x1

    const/16 v7, 0x40

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2174
    const/4 v1, 0x4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "GRANTOR"

    const/4 v6, 0x1

    const/16 v7, 0x4d

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2175
    const/4 v1, 0x5

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "GRANTEE"

    const/4 v6, 0x1

    const/16 v7, 0x4d

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2176
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "PRIVILEGE"

    const/4 v6, 0x1

    const/16 v7, 0x40

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2177
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v5, "IS_GRANTABLE"

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v4, v1

    .line 2179
    const-string v1, "SELECT c.host, c.db, t.grantor, c.user, c.table_name, c.column_name, c.column_priv FROM mysql.columns_priv c, mysql.tables_priv t WHERE c.host = t.host AND c.db = t.db AND c.table_name = t.table_name AND c.db LIKE ? AND c.table_name = ? AND c.column_name LIKE ?"

    .line 2183
    const/4 v3, 0x0

    .line 2184
    const/4 v2, 0x0

    .line 2185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 2190
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    :goto_0
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2191
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v3, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2192
    const/4 v1, 0x3

    move-object/from16 v0, p4

    invoke-interface {v3, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2194
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 2196
    :cond_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2197
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2198
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2199
    const/4 v1, 0x3

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2200
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2202
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 2203
    :cond_1
    const-string v1, "%"

    .line 2206
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2208
    if-eqz v6, :cond_3

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2209
    const-string v1, "@"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    :cond_3
    const/4 v1, 0x6

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2214
    const/4 v6, 0x7

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2216
    if-eqz v6, :cond_0

    .line 2217
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2219
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v10, v6, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2222
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2223
    const/16 v11, 0x8

    new-array v11, v11, [[B

    .line 2224
    const/4 v12, 0x0

    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v11, v12

    .line 2225
    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 2226
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v11, v12

    .line 2227
    const/4 v12, 0x3

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v11, v12

    .line 2229
    if-eqz v8, :cond_7

    .line 2230
    const/4 v12, 0x4

    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v11, v12

    .line 2235
    :goto_2
    const/4 v12, 0x5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v11, v12

    .line 2236
    const/4 v12, 0x6

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v11, v12

    .line 2237
    const/4 v6, 0x7

    const/4 v12, 0x0

    aput-object v12, v11, v6

    .line 2238
    new-instance v6, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2243
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    .line 2245
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2252
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 2254
    :try_start_2
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2243
    :cond_5
    :goto_4
    throw v1

    .line 2190
    :cond_6
    :try_start_3
    const-string p1, "%"

    goto/16 :goto_0

    .line 2232
    :cond_7
    const/4 v12, 0x4

    const/4 v13, 0x0

    aput-object v13, v11, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2243
    :cond_8
    if-eqz v2, :cond_9

    .line 2245
    :try_start_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2252
    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 2254
    :try_start_5
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2262
    :cond_a
    :goto_6
    invoke-direct {p0, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1

    .line 2246
    :catch_0
    move-exception v2

    goto :goto_3

    .line 2255
    :catch_1
    move-exception v2

    goto :goto_4

    .line 2246
    :catch_2
    move-exception v1

    goto :goto_5

    .line 2255
    :catch_3
    move-exception v1

    goto :goto_6
.end method

.method protected getColumnType(ZZZZ)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1060
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1061
    const/4 v0, 0x2

    .line 1069
    :goto_0
    return v0

    .line 1062
    :cond_0
    if-eqz p2, :cond_1

    .line 1063
    const/4 v0, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    if-eqz p1, :cond_2

    .line 1065
    const/4 v0, 0x4

    goto :goto_0

    .line 1066
    :cond_2
    if-eqz p3, :cond_3

    .line 1067
    const/4 v0, 0x5

    goto :goto_0

    .line 1069
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2319
    if-nez p4, :cond_3

    .line 2320
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2321
    const-string v5, "%"

    .line 2330
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v8

    .line 2332
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v6

    .line 2337
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$2;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$2;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$2;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    if-eqz v6, :cond_0

    .line 2562
    invoke-interface {v6}, Ljava/sql/Statement;->close()V

    .line 2566
    :cond_0
    invoke-direct {p0, v8, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 2568
    return-object v0

    .line 2323
    :cond_1
    const-string v0, "Column name pattern can not be NULL or empty."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2561
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2562
    invoke-interface {v6}, Ljava/sql/Statement;->close()V

    .line 2561
    :cond_2
    throw v0

    :cond_3
    move-object v5, p4

    goto :goto_0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2667
    if-nez p3, :cond_0

    .line 2668
    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 2671
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v12

    .line 2673
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2675
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2677
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 2681
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$3;

    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/mysql/jdbc/DatabaseMetaData$3;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$3;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2793
    if-eqz v4, :cond_1

    .line 2794
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 2799
    :cond_1
    invoke-direct {p0, v12, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 2801
    return-object v1

    .line 2793
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_2

    .line 2794
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 2793
    :cond_2
    throw v1
.end method

.method public getDatabaseMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2844
    const-string v0, "MySQL"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    const/4 v0, 0x2

    .line 2871
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    .prologue
    .line 2880
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMajorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    .prologue
    .line 2889
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMinorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2899
    const-string v0, "MySQL Connector Java"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2909
    const-string v0, "mysql-connector-java-5.1.46 ( Revision: 9cc87a48e75c2d2e87c1a293b2862ce651cb256e )"

    return-object v0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method protected getExportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3070
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 3071
    return-void
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2959
    if-nez p3, :cond_0

    .line 2960
    const-string v0, "Table not specified."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2963
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v6

    .line 2965
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2967
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2969
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 2973
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$4;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$4;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$4;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    if-eqz v3, :cond_1

    .line 3040
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 3045
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 3047
    return-object v0

    .line 3039
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 3040
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 3039
    :cond_2
    throw v0
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3081
    const-string v0, "#@"

    return-object v0
.end method

.method protected getForeignKeyActions(Ljava/lang/String;)[I
    .locals 4
    .parameter

    .prologue
    .line 3094
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 3096
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3098
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3099
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3101
    const/4 v2, 0x0

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCascadeDeleteOption(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 3102
    const/4 v2, 0x1

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCascadeUpdateOption(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 3105
    :cond_0
    return-object v0

    .line 3094
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7770
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    .line 7772
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v5, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x1

    .line 7831
    new-array v1, v9, [Lcom/mysql/jdbc/Field;

    .line 7833
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_CAT"

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v5

    .line 7834
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_SCHEM"

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v6

    .line 7835
    const/4 v0, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_NAME"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 7836
    const/4 v0, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 7837
    const/4 v0, 0x4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_TYPE"

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 7838
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v8

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 7840
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3118
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    .line 3122
    :goto_0
    return-object v0

    .line 3118
    :cond_0
    const-string v0, "`"

    goto :goto_0

    .line 3122
    :cond_1
    const-string v0, " "

    goto :goto_0
.end method

.method protected getImportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3278
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 3279
    return-void
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3172
    if-nez p3, :cond_0

    .line 3173
    const-string v0, "Table not specified."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3176
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v6

    .line 3178
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3180
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3182
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 3186
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$5;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$5;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$5;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3249
    if-eqz v4, :cond_1

    .line 3250
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 3255
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 3257
    return-object v0

    .line 3249
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 3250
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 3249
    :cond_2
    throw v0
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3333
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createIndexInfoFields()[Lcom/mysql/jdbc/Field;

    move-result-object v7

    .line 3335
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 3336
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3337
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 3341
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$6;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$6;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;ZLjava/util/SortedMap;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$6;->doForAll()V

    .line 3420
    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3421
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3429
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_0

    .line 3430
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 3429
    :cond_0
    throw v0

    .line 3425
    :cond_1
    :try_start_1
    invoke-direct {p0, v7, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3429
    if-eqz v4, :cond_2

    .line 3430
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 3427
    :cond_2
    return-object v0
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method public getJDBCMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3462
    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3469
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3479
    const v0, 0xfffff8

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3489
    const/16 v0, 0x20

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3499
    const v0, 0xfffff8

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3509
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3519
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3529
    const/16 v0, 0x10

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3539
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3549
    const/16 v0, 0x100

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3559
    const/16 v0, 0x200

    return v0
.end method

.method public getMaxConnections()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3569
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3579
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3589
    const/16 v0, 0x100

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3599
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3609
    const v0, 0x7ffffff7

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3619
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3629
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public getMaxStatements()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3639
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3649
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3659
    const/16 v0, 0x100

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3669
    const/16 v0, 0x10

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3679
    const-string v0, "ABS,ACOS,ASIN,ATAN,ATAN2,BIT_COUNT,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,MAX,MIN,MOD,PI,POW,POWER,RADIANS,RAND,ROUND,SIN,SQRT,TAN,TRUNCATE"

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x20

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 3708
    const/4 v0, 0x6

    new-array v6, v0, [Lcom/mysql/jdbc/Field;

    .line 3709
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "TABLE_CAT"

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v3

    .line 3710
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "TABLE_SCHEM"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v4

    .line 3711
    const/4 v0, 0x2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_NAME"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 3712
    const/4 v0, 0x3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 3713
    const/4 v0, 0x4

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "KEY_SEQ"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 3714
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "PK_NAME"

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v5

    .line 3716
    if-nez p3, :cond_0

    .line 3717
    const-string v0, "Table not specified."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3720
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3721
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 3725
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$7;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$7;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$7;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3780
    if-eqz v4, :cond_1

    .line 3781
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 3785
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 3787
    return-object v0

    .line 3780
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 3781
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 3780
    :cond_2
    throw v0
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3864
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    .line 3866
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method protected getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3898
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3900
    const/4 v8, 0x0

    .line 3902
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->supportsStoredProcedures()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3905
    const/4 v5, 0x0

    .line 3907
    if-eqz p4, :cond_0

    :try_start_0
    const-string v1, "%"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3908
    invoke-static/range {p4 .. p4}, Lcom/mysql/jdbc/StringUtils;->sanitizeProcOrFuncName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3912
    :cond_0
    if-nez v5, :cond_2

    move-object/from16 v5, p4

    .line 3930
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 3933
    const/4 v1, 0x0

    .line 3934
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3935
    new-instance v3, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x8

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    :goto_2
    invoke-direct {v3, p0, v4, v1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3938
    const/4 v1, 0x1

    goto :goto_1

    .line 3918
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    move-object/from16 v0, p2

    invoke-static {v5, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 3922
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 3923
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3924
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v1

    goto :goto_0

    .line 3935
    :cond_3
    :try_start_3
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3942
    :cond_4
    if-nez v1, :cond_6

    .line 3956
    :goto_3
    const/4 v1, 0x0

    .line 3958
    if-eqz v2, :cond_5

    .line 3960
    :try_start_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3966
    :cond_5
    :goto_4
    if-eqz v1, :cond_8

    .line 3967
    throw v1

    .line 3949
    :cond_6
    :try_start_5
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 3956
    :catchall_0
    move-exception v1

    :goto_5
    const/4 v3, 0x0

    .line 3958
    if-eqz v2, :cond_e

    .line 3960
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v2, v3

    .line 3966
    :goto_6
    if-eqz v2, :cond_7

    .line 3967
    throw v2

    .line 3956
    :cond_7
    throw v1

    .line 3972
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3974
    const-string v1, ""

    .line 3976
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v2, p2

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    .line 3977
    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3978
    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    .line 3981
    const-string v1, " "

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3982
    const/4 v7, 0x0

    const-string v9, "."

    iget-object v10, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v11, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v12, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_8
    invoke-static/range {v7 .. v12}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    .line 3988
    :goto_9
    if-lez v1, :cond_b

    .line 3989
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    .line 3995
    :goto_a
    array-length v1, p1

    const/16 v5, 0x11

    if-ne v1, v5, :cond_c

    const/4 v7, 0x1

    :goto_b
    move-object v1, p0

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getCallStmtParameterTypes(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_7

    .line 3982
    :cond_9
    sget-object v12, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_8

    .line 3985
    :cond_a
    const-string v1, "."

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    :cond_b
    move-object v3, v8

    .line 3993
    goto :goto_a

    .line 3995
    :cond_c
    const/4 v7, 0x0

    goto :goto_b

    .line 3998
    :cond_d
    invoke-direct {p0, p1, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1

    .line 3961
    :catch_0
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v1

    goto/16 :goto_4

    .line 3956
    :catchall_1
    move-exception v1

    move-object v2, v8

    goto/16 :goto_5

    :cond_e
    move-object v2, v3

    goto :goto_6
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4204
    const-string v0, "PROCEDURE"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 4038
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, v5

    .line 4040
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method protected getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4069
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 4070
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4071
    const-string v5, "%"

    .line 4078
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4080
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->supportsStoredProcedures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4083
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4085
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$8;

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move v3, p5

    move v4, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$8;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;ZZLjava/lang/String;Ljava/util/List;[Lcom/mysql/jdbc/Field;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$8;->doForAll()V

    .line 4187
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4188
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    .line 4189
    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4073
    :cond_1
    const-string v0, "Procedure name pattern can not be NULL or empty."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4193
    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v5, p4

    goto :goto_0
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x200

    const/16 v5, 0xc

    .line 7891
    new-array v0, v5, [Lcom/mysql/jdbc/Field;

    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_CAT"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_SCHEM"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_SIZE"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DECIMAL_DIGITS"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NUM_PREC_RADIX"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_USAGE"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CHAR_OCTET_LENGTH"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "IS_NULLABLE"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4211
    const/4 v0, 0x1

    return v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4317
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4318
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    .line 4338
    :goto_0
    return-object v0

    .line 4321
    :cond_0
    const-class v1, Lcom/mysql/jdbc/DatabaseMetaData;

    monitor-enter v1

    .line 4323
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4324
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 4339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4327
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 4328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4330
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->MYSQL_KEYWORDS:[Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4331
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SQL2003_KEYWORDS:[Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4333
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4334
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4331
    :cond_2
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SQL92_KEYWORDS:[Ljava/lang/String;

    goto :goto_1

    .line 4337
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    .line 4338
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSQLStateType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 4346
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4354
    :cond_0
    :goto_0
    return v0

    .line 4350
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 4354
    goto :goto_0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4290
    const-string v0, ""

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4273
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4274
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 4275
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CATALOG"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4278
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 4280
    return-object v0
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0xc

    .line 7853
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_SCHEM"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_CATALOG"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 7855
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4307
    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4364
    const-string v0, "ASCII,BIN,BIT_LENGTH,CHAR,CHARACTER_LENGTH,CHAR_LENGTH,CONCAT,CONCAT_WS,CONV,ELT,EXPORT_SET,FIELD,FIND_IN_SET,HEX,INSERT,INSTR,LCASE,LEFT,LENGTH,LOAD_FILE,LOCATE,LOCATE,LOWER,LPAD,LTRIM,MAKE_SET,MATCH,MID,OCT,OCTET_LENGTH,ORD,POSITION,QUOTE,REPEAT,REPLACE,REVERSE,RIGHT,RPAD,RTRIM,SOUNDEX,SPACE,STRCMP,SUBSTRING,SUBSTRING,SUBSTRING,SUBSTRING,SUBSTRING_INDEX,TRIM,UCASE,UPPER"

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x1

    .line 4374
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4375
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_CAT"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4376
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4377
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4378
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SUPERTABLE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x1

    .line 4387
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4388
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_CAT"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4389
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_SCHEM"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4390
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4391
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SUPERTYPE_CAT"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4392
    const/4 v1, 0x4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SUPERTYPE_SCHEM"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4393
    const/4 v1, 0x5

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SUPERTYPE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 4395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4405
    const-string v0, "DATABASE,USER,SYSTEM_USER,SESSION_USER,PASSWORD,ENCRYPT,LAST_INSERT_ID,VERSION"

    return-object v0
.end method

.method protected getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 4411
    :cond_0
    return-object p1
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4447
    if-nez p3, :cond_0

    .line 4448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4449
    const-string p3, "%"

    .line 4456
    :cond_0
    const/4 v3, 0x7

    new-array v7, v3, [Lcom/mysql/jdbc/Field;

    .line 4457
    const/4 v3, 0x0

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_CAT"

    const/4 v8, 0x1

    const/16 v9, 0x40

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4458
    const/4 v3, 0x1

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_SCHEM"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4459
    const/4 v3, 0x2

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_NAME"

    const/4 v8, 0x1

    const/16 v9, 0x40

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4460
    const/4 v3, 0x3

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "GRANTOR"

    const/4 v8, 0x1

    const/16 v9, 0x4d

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4461
    const/4 v3, 0x4

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "GRANTEE"

    const/4 v8, 0x1

    const/16 v9, 0x4d

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4462
    const/4 v3, 0x5

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PRIVILEGE"

    const/4 v8, 0x1

    const/16 v9, 0x40

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4463
    const/4 v3, 0x6

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "IS_GRANTABLE"

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v7, v3

    .line 4465
    const-string v3, "SELECT host,db,table_name,grantor,user,table_priv FROM mysql.tables_priv WHERE db LIKE ? AND table_name LIKE ?"

    .line 4467
    const/4 v6, 0x0

    .line 4468
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4469
    const/4 v4, 0x0

    .line 4472
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v5

    .line 4474
    const/4 v4, 0x1

    if-eqz p1, :cond_a

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v3, p1

    :goto_0
    invoke-interface {v5, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4475
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v5, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4477
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    .line 4479
    :cond_1
    :try_start_2
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4480
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4481
    const/4 v3, 0x2

    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4482
    const/4 v3, 0x3

    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4483
    const/4 v3, 0x4

    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4484
    const/4 v3, 0x5

    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4486
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    .line 4487
    :cond_2
    const-string v3, "%"

    .line 4490
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4492
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4493
    const-string v3, "@"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4497
    :cond_4
    const/4 v3, 0x6

    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4499
    if-eqz v3, :cond_1

    .line 4500
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 4502
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v13, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4504
    :cond_5
    :goto_1
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4505
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 4508
    const/4 v4, 0x0

    .line 4511
    :try_start_3
    const-string v14, "%"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    .line 4513
    :goto_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 4514
    const/16 v14, 0x8

    new-array v14, v14, [[B

    .line 4515
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v16

    aput-object v16, v14, v15

    .line 4516
    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    .line 4517
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v16

    aput-object v16, v14, v15

    .line 4519
    if-eqz v11, :cond_b

    .line 4520
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v16

    aput-object v16, v14, v15

    .line 4525
    :goto_3
    const/4 v15, 0x4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v16

    aput-object v16, v14, v15

    .line 4526
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v16

    aput-object v16, v14, v15

    .line 4527
    const/4 v15, 0x6

    const/16 v16, 0x0

    aput-object v16, v14, v15

    .line 4528
    new-instance v15, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 4531
    :catchall_0
    move-exception v3

    if-eqz v4, :cond_6

    .line 4533
    :try_start_4
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 4531
    :cond_6
    :goto_4
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4542
    :catchall_1
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    :goto_5
    if-eqz v5, :cond_7

    .line 4544
    :try_start_6
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 4551
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 4553
    :try_start_7
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 4542
    :cond_8
    :goto_7
    throw v3

    .line 4451
    :cond_9
    const-string v3, "Table name pattern can not be NULL or empty."

    const-string v4, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 4474
    :cond_a
    :try_start_8
    const-string v3, "%"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0

    .line 4522
    :cond_b
    const/4 v15, 0x3

    const/16 v16, 0x0

    :try_start_9
    aput-object v16, v14, v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 4542
    :cond_c
    if-eqz v6, :cond_d

    .line 4544
    :try_start_a
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 4551
    :cond_d
    :goto_8
    if-eqz v5, :cond_e

    .line 4553
    :try_start_b
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 4561
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v3

    return-object v3

    .line 4545
    :catch_0
    move-exception v5

    goto :goto_6

    .line 4554
    :catch_1
    move-exception v4

    goto :goto_7

    .line 4534
    :catch_2
    move-exception v4

    goto :goto_4

    .line 4531
    :cond_f
    if-eqz v4, :cond_5

    .line 4533
    :try_start_c
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    .line 4534
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 4545
    :catch_4
    move-exception v3

    goto :goto_8

    .line 4554
    :catch_5
    move-exception v3

    goto :goto_9

    .line 4542
    :catchall_2
    move-exception v3

    move-object v5, v6

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_5
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4850
    new-array v1, v8, [Lcom/mysql/jdbc/Field;

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_TYPE"

    const/16 v5, 0xc

    const/16 v6, 0x100

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v7

    .line 4852
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v7, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    .line 4854
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v4, v8, [[B

    sget-object v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4855
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v4, v8, [[B

    sget-object v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4856
    if-eqz v2, :cond_0

    .line 4857
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v4, v8, [[B

    sget-object v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4859
    :cond_0
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v4, v8, [[B

    sget-object v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4860
    if-eqz v2, :cond_1

    .line 4861
    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v3, v8, [[B

    sget-object v4, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v4}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4864
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4599
    if-nez p3, :cond_0

    .line 4600
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4601
    const-string p3, "%"

    .line 4608
    :cond_0
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 4609
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4611
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 4614
    const-string v0, ""

    .line 4616
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 4617
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4618
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 4624
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    invoke-static {p3, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 4626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 4627
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 4633
    :goto_1
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$9;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$9;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/SortedMap;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$9;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4807
    if-eqz v3, :cond_3

    .line 4808
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 4812
    :cond_3
    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4813
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createTablesFields()[Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 4815
    return-object v0

    .line 4603
    :cond_4
    const-string v0, "Table name pattern can not be NULL or empty."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v0, p1

    .line 4621
    goto :goto_0

    :cond_6
    move-object v4, p3

    .line 4629
    goto :goto_1

    .line 4807
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_7

    .line 4808
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 4807
    :cond_7
    throw v0
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4874
    const-string v0, "DAYOFWEEK,WEEKDAY,DAYOFMONTH,DAYOFYEAR,MONTH,DAYNAME,MONTHNAME,QUARTER,WEEK,YEAR,HOUR,MINUTE,SECOND,PERIOD_ADD,PERIOD_DIFF,TO_DAYS,FROM_DAYS,DATE_FORMAT,TIME_FORMAT,CURDATE,CURRENT_DATE,CURTIME,CURRENT_TIME,NOW,SYSDATE,CURRENT_TIMESTAMP,UNIX_TIMESTAMP,FROM_UNIXTIME,SEC_TO_TIME,TIME_TO_SEC"

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 4968
    const/16 v0, 0x12

    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    .line 4969
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_NAME"

    const/16 v4, 0x20

    invoke-direct {v0, v2, v3, v7, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v10

    .line 4970
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v0, v2, v3, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v7

    .line 4971
    const/4 v0, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PRECISION"

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4972
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "LITERAL_PREFIX"

    invoke-direct {v0, v2, v3, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v6

    .line 4973
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "LITERAL_SUFFIX"

    invoke-direct {v0, v2, v3, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v9

    .line 4974
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "CREATE_PARAMS"

    const/16 v4, 0x20

    invoke-direct {v0, v2, v3, v7, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v1, v8

    .line 4975
    const/4 v0, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NULLABLE"

    invoke-direct {v2, v3, v4, v8, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4976
    const/4 v0, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CASE_SENSITIVE"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4977
    const/16 v0, 0x8

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SEARCHABLE"

    invoke-direct {v2, v3, v4, v8, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4978
    const/16 v0, 0x9

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "UNSIGNED_ATTRIBUTE"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4979
    const/16 v0, 0xa

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FIXED_PREC_SCALE"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4980
    const/16 v0, 0xb

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "AUTO_INCREMENT"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4981
    const/16 v0, 0xc

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "LOCAL_TYPE_NAME"

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4982
    const/16 v0, 0xd

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "MINIMUM_SCALE"

    invoke-direct {v2, v3, v4, v8, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4983
    const/16 v0, 0xe

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "MAXIMUM_SCALE"

    invoke-direct {v2, v3, v4, v8, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4984
    const/16 v0, 0xf

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATA_TYPE"

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4985
    const/16 v0, 0x10

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SQL_DATETIME_SUB"

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4986
    const/16 v0, 0x11

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NUM_PREC_RADIX"

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 4988
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 4989
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4997
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 4998
    const-string v3, "BIT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 4999
    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5002
    const/4 v3, 0x2

    const-string v4, "1"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5003
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5004
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5005
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5006
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5009
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5010
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5013
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5014
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5015
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5016
    const/16 v3, 0xc

    const-string v4, "BIT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5017
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5018
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5019
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5020
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5021
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5022
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5027
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5028
    const-string v3, "BOOL"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5029
    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5032
    const/4 v3, 0x2

    const-string v4, "1"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5033
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5034
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5035
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5036
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5039
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5040
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5043
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5044
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5045
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5046
    const/16 v3, 0xc

    const-string v4, "BOOL"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5047
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5048
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5049
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5050
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5051
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5052
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5057
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5058
    const-string v3, "TINYINT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5059
    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5062
    const/4 v3, 0x2

    const-string v4, "3"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5063
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5064
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5065
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5066
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5069
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5070
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5073
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5074
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5075
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5076
    const/16 v3, 0xc

    const-string v4, "TINYINT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5077
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5078
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5079
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5080
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5081
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5082
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5084
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5085
    const-string v3, "TINYINT UNSIGNED"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5086
    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5089
    const/4 v3, 0x2

    const-string v4, "3"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5090
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5091
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5092
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5093
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5096
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5097
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5100
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5101
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5102
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5103
    const/16 v3, 0xc

    const-string v4, "TINYINT UNSIGNED"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5104
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5105
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5106
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5107
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5108
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5109
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5114
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5115
    const-string v3, "BIGINT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5116
    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5119
    const/4 v3, 0x2

    const-string v4, "19"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5120
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5121
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5122
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5123
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5126
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5127
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5130
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5131
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5132
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5133
    const/16 v3, 0xc

    const-string v4, "BIGINT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5134
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5135
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5136
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5137
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5138
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5139
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5141
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5142
    const-string v3, "BIGINT UNSIGNED"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5143
    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5146
    const/4 v3, 0x2

    const-string v4, "20"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5147
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5148
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5149
    const-string v3, "[(M)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5150
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5153
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5154
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5157
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5158
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5159
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5160
    const/16 v3, 0xc

    const-string v4, "BIGINT UNSIGNED"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5161
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5162
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5163
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5164
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5165
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5166
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5171
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5172
    const-string v3, "LONG VARBINARY"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5173
    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5176
    const/4 v3, 0x2

    const-string v4, "16777215"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5177
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5178
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5179
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5180
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5183
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5184
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5187
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5188
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5189
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5190
    const/16 v3, 0xc

    const-string v4, "LONG VARBINARY"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5191
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5192
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5193
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5194
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5195
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5196
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5201
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5202
    const-string v3, "MEDIUMBLOB"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5203
    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5206
    const/4 v3, 0x2

    const-string v4, "16777215"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5207
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5208
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5209
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5210
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5213
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5214
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5217
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5218
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5219
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5220
    const/16 v3, 0xc

    const-string v4, "MEDIUMBLOB"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5221
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5222
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5223
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5224
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5225
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5226
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5231
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5232
    const-string v3, "LONGBLOB"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5233
    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5236
    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5239
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5240
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5241
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5242
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5245
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5246
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5249
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5250
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5251
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5252
    const/16 v3, 0xc

    const-string v4, "LONGBLOB"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5253
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5254
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5255
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5256
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5257
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5258
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5263
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5264
    const-string v3, "BLOB"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5265
    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5268
    const/4 v3, 0x2

    const-string v4, "65535"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5269
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5270
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5271
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5272
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5275
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5276
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5279
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5280
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5281
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5282
    const/16 v3, 0xc

    const-string v4, "BLOB"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5283
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5284
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5285
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5286
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5287
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5288
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5293
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5294
    const-string v3, "TINYBLOB"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5295
    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5298
    const/4 v3, 0x2

    const-string v4, "255"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5299
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5300
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5301
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5302
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5305
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5306
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5309
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5310
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5311
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5312
    const/16 v3, 0xc

    const-string v4, "TINYBLOB"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5313
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5314
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5315
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5316
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5317
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5318
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5324
    const/16 v0, 0x12

    new-array v3, v0, [[B

    .line 5325
    const-string v0, "VARBINARY"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v10

    .line 5326
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v7

    .line 5329
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v8, v10, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "65535"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 5330
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v6

    .line 5331
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v9

    .line 5332
    const-string v0, "(M)"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v8

    .line 5333
    const/4 v0, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5336
    const/4 v0, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5337
    const/16 v0, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5340
    const/16 v0, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5341
    const/16 v0, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5342
    const/16 v0, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5343
    const/16 v0, 0xc

    const-string v4, "VARBINARY"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5344
    const/16 v0, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5345
    const/16 v0, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5346
    const/16 v0, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5347
    const/16 v0, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5348
    const/16 v0, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5349
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5355
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5356
    const-string v3, "BINARY"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5357
    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5360
    const/4 v3, 0x2

    const-string v4, "255"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5361
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5362
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5363
    const-string v3, "(M)"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5364
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5367
    const/4 v3, 0x7

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5368
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5371
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5372
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5373
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5374
    const/16 v3, 0xc

    const-string v4, "BINARY"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5375
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5376
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5377
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5378
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5379
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5380
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5385
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5386
    const-string v3, "LONG VARCHAR"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5387
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5390
    const/4 v3, 0x2

    const-string v4, "16777215"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5391
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5392
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5393
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5394
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5397
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5398
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5401
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5402
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5403
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5404
    const/16 v3, 0xc

    const-string v4, "LONG VARCHAR"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5405
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5406
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5407
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5408
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5409
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5410
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5415
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5416
    const-string v3, "MEDIUMTEXT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5417
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5420
    const/4 v3, 0x2

    const-string v4, "16777215"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5421
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5422
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5423
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5424
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5427
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5428
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5431
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5432
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5433
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5434
    const/16 v3, 0xc

    const-string v4, "MEDIUMTEXT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5435
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5436
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5437
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5438
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5439
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5440
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5445
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5446
    const-string v3, "LONGTEXT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5447
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5450
    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5453
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5454
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5455
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5456
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5459
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5460
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5463
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5464
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5465
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5466
    const/16 v3, 0xc

    const-string v4, "LONGTEXT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5467
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5468
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5469
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5470
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5471
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5472
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5477
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5478
    const-string v3, "TEXT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5479
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5482
    const/4 v3, 0x2

    const-string v4, "65535"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5483
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5484
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5485
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5486
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5489
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5490
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5493
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5494
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5495
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5496
    const/16 v3, 0xc

    const-string v4, "TEXT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5497
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5498
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5499
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5500
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5501
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5502
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5507
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5508
    const-string v3, "TINYTEXT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5509
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5512
    const/4 v3, 0x2

    const-string v4, "255"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5513
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5514
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5515
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5516
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5519
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5520
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5523
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5524
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5525
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5526
    const/16 v3, 0xc

    const-string v4, "TINYTEXT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5527
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5528
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5529
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5530
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5531
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5532
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5537
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5538
    const-string v3, "CHAR"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5539
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5542
    const/4 v3, 0x2

    const-string v4, "255"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5543
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5544
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5545
    const-string v3, "(M)"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5546
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5549
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5550
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5553
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5554
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5555
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5556
    const/16 v3, 0xc

    const-string v4, "CHAR"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5557
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5558
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5559
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5560
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5561
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5562
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5566
    const/16 v0, 0xfe

    .line 5568
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v8, v10, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5569
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x6

    invoke-interface {v0, v8, v10, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5570
    const/16 v0, 0x41

    .line 5579
    :cond_0
    :goto_1
    const/16 v3, 0x12

    new-array v3, v3, [[B

    .line 5580
    const-string v4, "NUMERIC"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v10

    .line 5581
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v7

    .line 5584
    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5585
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v6

    .line 5586
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v9

    .line 5587
    const-string v4, "[(M[,D])] [ZEROFILL]"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v8

    .line 5588
    const/4 v4, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5591
    const/4 v4, 0x7

    const-string v5, "false"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5592
    const/16 v4, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5595
    const/16 v4, 0x9

    const-string v5, "false"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5596
    const/16 v4, 0xa

    const-string v5, "false"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5597
    const/16 v4, 0xb

    const-string v5, "true"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5598
    const/16 v4, 0xc

    const-string v5, "NUMERIC"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5599
    const/16 v4, 0xd

    const-string v5, "-308"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5600
    const/16 v4, 0xe

    const-string v5, "308"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5601
    const/16 v4, 0xf

    const-string v5, "0"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5602
    const/16 v4, 0x10

    const-string v5, "0"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5603
    const/16 v4, 0x11

    const-string v5, "10"

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 5604
    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5609
    const/16 v3, 0x12

    new-array v3, v3, [[B

    .line 5610
    const-string v4, "DECIMAL"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v10

    .line 5611
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v7

    .line 5614
    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 5615
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v6

    .line 5616
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v9

    .line 5617
    const-string v0, "[(M[,D])] [ZEROFILL]"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v8

    .line 5618
    const/4 v0, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5621
    const/4 v0, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5622
    const/16 v0, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5625
    const/16 v0, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5626
    const/16 v0, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5627
    const/16 v0, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5628
    const/16 v0, 0xc

    const-string v4, "DECIMAL"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5629
    const/16 v0, 0xd

    const-string v4, "-308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5630
    const/16 v0, 0xe

    const-string v4, "308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5631
    const/16 v0, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5632
    const/16 v0, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5633
    const/16 v0, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 5634
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5639
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5640
    const-string v3, "INTEGER"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5641
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5644
    const/4 v3, 0x2

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5645
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5646
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5647
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5648
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5651
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5652
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5655
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5656
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5657
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5658
    const/16 v3, 0xc

    const-string v4, "INTEGER"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5659
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5660
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5661
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5662
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5663
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5664
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5666
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5667
    const-string v3, "INTEGER UNSIGNED"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5668
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5671
    const/4 v3, 0x2

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5672
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5673
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5674
    const-string v3, "[(M)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5675
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5678
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5679
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5682
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5683
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5684
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5685
    const/16 v3, 0xc

    const-string v4, "INTEGER UNSIGNED"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5686
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5687
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5688
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5689
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5690
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5691
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5696
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5697
    const-string v3, "INT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5698
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5701
    const/4 v3, 0x2

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5702
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5703
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5704
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5705
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5708
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5709
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5712
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5713
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5714
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5715
    const/16 v3, 0xc

    const-string v4, "INT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5716
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5717
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5718
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5719
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5720
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5721
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5723
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5724
    const-string v3, "INT UNSIGNED"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5725
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5728
    const/4 v3, 0x2

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5729
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5730
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5731
    const-string v3, "[(M)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5732
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5735
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5736
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5739
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5740
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5741
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5742
    const/16 v3, 0xc

    const-string v4, "INT UNSIGNED"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5743
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5744
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5745
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5746
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5747
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5748
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5753
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5754
    const-string v3, "MEDIUMINT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5755
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5758
    const/4 v3, 0x2

    const-string v4, "7"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5759
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5760
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5761
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5762
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5765
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5766
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5769
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5770
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5771
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5772
    const/16 v3, 0xc

    const-string v4, "MEDIUMINT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5773
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5774
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5775
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5776
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5777
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5778
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5780
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5781
    const-string v3, "MEDIUMINT UNSIGNED"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5782
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5785
    const/4 v3, 0x2

    const-string v4, "8"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5786
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5787
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5788
    const-string v3, "[(M)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5789
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5792
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5793
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5796
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5797
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5798
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5799
    const/16 v3, 0xc

    const-string v4, "MEDIUMINT UNSIGNED"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5800
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5801
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5802
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5803
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5804
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5805
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5810
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5811
    const-string v3, "SMALLINT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5812
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5815
    const/4 v3, 0x2

    const-string v4, "5"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5816
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5817
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5818
    const-string v3, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5819
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5822
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5823
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5826
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5827
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5828
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5829
    const/16 v3, 0xc

    const-string v4, "SMALLINT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5830
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5831
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5832
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5833
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5834
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5835
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5837
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5838
    const-string v3, "SMALLINT UNSIGNED"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5839
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5842
    const/4 v3, 0x2

    const-string v4, "5"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5843
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5844
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5845
    const-string v3, "[(M)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5846
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5849
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5850
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5853
    const/16 v3, 0x9

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5854
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5855
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5856
    const/16 v3, 0xc

    const-string v4, "SMALLINT UNSIGNED"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5857
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5858
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5859
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5860
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5861
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5862
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5868
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5869
    const-string v3, "FLOAT"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5870
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5873
    const/4 v3, 0x2

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5874
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5875
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5876
    const-string v3, "[(M,D)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5877
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5880
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5881
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5884
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5885
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5886
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5887
    const/16 v3, 0xc

    const-string v4, "FLOAT"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5888
    const/16 v3, 0xd

    const-string v4, "-38"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5889
    const/16 v3, 0xe

    const-string v4, "38"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5890
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5891
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5892
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5893
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5898
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5899
    const-string v3, "DOUBLE"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5900
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5903
    const/4 v3, 0x2

    const-string v4, "17"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5904
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5905
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5906
    const-string v3, "[(M,D)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5907
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5910
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5911
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5914
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5915
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5916
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5917
    const/16 v3, 0xc

    const-string v4, "DOUBLE"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5918
    const/16 v3, 0xd

    const-string v4, "-308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5919
    const/16 v3, 0xe

    const-string v4, "308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5920
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5921
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5922
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5923
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5928
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5929
    const-string v3, "DOUBLE PRECISION"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5930
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5933
    const/4 v3, 0x2

    const-string v4, "17"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5934
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5935
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5936
    const-string v3, "[(M,D)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5937
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5940
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5941
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5944
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5945
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5946
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5947
    const/16 v3, 0xc

    const-string v4, "DOUBLE PRECISION"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5948
    const/16 v3, 0xd

    const-string v4, "-308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5949
    const/16 v3, 0xe

    const-string v4, "308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5950
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5951
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5952
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5953
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5958
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 5959
    const-string v3, "REAL"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 5960
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 5963
    const/4 v3, 0x2

    const-string v4, "17"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5964
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 5965
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 5966
    const-string v3, "[(M,D)] [ZEROFILL]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 5967
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5970
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5971
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5974
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5975
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5976
    const/16 v3, 0xb

    const-string v4, "true"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5977
    const/16 v3, 0xc

    const-string v4, "REAL"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5978
    const/16 v3, 0xd

    const-string v4, "-308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5979
    const/16 v3, 0xe

    const-string v4, "308"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5980
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5981
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5982
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 5983
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5988
    const/16 v0, 0x12

    new-array v3, v0, [[B

    .line 5989
    const-string v0, "VARCHAR"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v10

    .line 5990
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v7

    .line 5993
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v8, v10, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "65535"

    :goto_2
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 5994
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v6

    .line 5995
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v9

    .line 5996
    const-string v0, "(M)"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v8

    .line 5997
    const/4 v0, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6000
    const/4 v0, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6001
    const/16 v0, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6004
    const/16 v0, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6005
    const/16 v0, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6006
    const/16 v0, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6007
    const/16 v0, 0xc

    const-string v4, "VARCHAR"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6008
    const/16 v0, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6009
    const/16 v0, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6010
    const/16 v0, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6011
    const/16 v0, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6012
    const/16 v0, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v0

    .line 6013
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6018
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 6019
    const-string v3, "ENUM"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 6020
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 6023
    const/4 v3, 0x2

    const-string v4, "65535"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6024
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 6025
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 6026
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 6027
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6030
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6031
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6034
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6035
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6036
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6037
    const/16 v3, 0xc

    const-string v4, "ENUM"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6038
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6039
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6040
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6041
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6042
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6043
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6048
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 6049
    const-string v3, "SET"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 6050
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 6053
    const/4 v3, 0x2

    const-string v4, "64"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6054
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 6055
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 6056
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 6057
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6060
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6061
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6064
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6065
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6066
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6067
    const/16 v3, 0xc

    const-string v4, "SET"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6068
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6069
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6070
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6071
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6072
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6073
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6078
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 6079
    const-string v3, "DATE"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 6080
    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 6083
    const/4 v3, 0x2

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6084
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 6085
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 6086
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 6087
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6090
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6091
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6094
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6095
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6096
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6097
    const/16 v3, 0xc

    const-string v4, "DATE"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6098
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6099
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6100
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6101
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6102
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6103
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6108
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 6109
    const-string v3, "TIME"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 6110
    const/16 v3, 0x5c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 6113
    const/4 v3, 0x2

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6114
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 6115
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 6116
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 6117
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6120
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6121
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6124
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6125
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6126
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6127
    const/16 v3, 0xc

    const-string v4, "TIME"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6128
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6129
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6130
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6131
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6132
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6133
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6138
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 6139
    const-string v3, "DATETIME"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 6140
    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 6143
    const/4 v3, 0x2

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6144
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 6145
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 6146
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 6147
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6150
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6151
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6154
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6155
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6156
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6157
    const/16 v3, 0xc

    const-string v4, "DATETIME"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6158
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6159
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6160
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6161
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6162
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6163
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6168
    const/16 v0, 0x12

    new-array v0, v0, [[B

    .line 6169
    const-string v3, "TIMESTAMP"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v10

    .line 6170
    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v7

    .line 6173
    const/4 v3, 0x2

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6174
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    .line 6175
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v9

    .line 6176
    const-string v3, "[(M)]"

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v8

    .line 6177
    const/4 v3, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6180
    const/4 v3, 0x7

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6181
    const/16 v3, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6184
    const/16 v3, 0x9

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6185
    const/16 v3, 0xa

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6186
    const/16 v3, 0xb

    const-string v4, "false"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6187
    const/16 v3, 0xc

    const-string v4, "TIMESTAMP"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6188
    const/16 v3, 0xd

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6189
    const/16 v3, 0xe

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6190
    const/16 v3, 0xf

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6191
    const/16 v3, 0x10

    const-string v4, "0"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6192
    const/16 v3, 0x11

    const-string v4, "10"

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    .line 6193
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6195
    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 5329
    :cond_1
    const-string v0, "255"

    goto/16 :goto_0

    .line 5572
    :cond_2
    const/16 v0, 0x40

    goto/16 :goto_1

    .line 5993
    :cond_3
    const-string v0, "255"

    goto/16 :goto_2
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/16 v6, 0x20

    const/16 v5, 0xc

    .line 6236
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 6237
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_CAT"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6238
    const/4 v1, 0x1

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_SCHEM"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6239
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6240
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CLASS_NAME"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6241
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v1, v2, v3, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 6242
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "REMARKS"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 6243
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "BASE_TYPE"

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6247
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6257
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6267
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6272
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6274
    :try_start_1
    const-string v0, "SELECT USER()"

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 6275
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    .line 6277
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 6279
    if-eqz v1, :cond_0

    .line 6281
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6289
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 6291
    :try_start_3
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6301
    :cond_1
    :goto_1
    return-object v0

    .line 6279
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_2

    .line 6281
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6289
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 6291
    :try_start_5
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 6279
    :cond_3
    :goto_4
    throw v0

    .line 6301
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUser()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6282
    :catch_0
    move-exception v1

    .line 6283
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_3

    .line 6292
    :catch_1
    move-exception v1

    .line 6293
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_4

    .line 6282
    :catch_2
    move-exception v1

    .line 6283
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_0

    .line 6292
    :catch_3
    move-exception v1

    .line 6293
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_1

    .line 6279
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 6338
    if-nez p3, :cond_0

    .line 6339
    const-string v0, "Table not specified."

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6342
    :cond_0
    const/16 v0, 0x8

    new-array v6, v0, [Lcom/mysql/jdbc/Field;

    .line 6343
    const/4 v0, 0x0

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SCOPE"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 6344
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_NAME"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v8

    .line 6345
    const/4 v0, 0x2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 6346
    const/4 v0, 0x3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_NAME"

    invoke-direct {v1, v2, v3, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 6347
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_SIZE"

    invoke-direct {v0, v1, v2, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v5

    .line 6348
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "BUFFER_LENGTH"

    invoke-direct {v0, v1, v2, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v6, v4

    .line 6349
    const/4 v0, 0x6

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DECIMAL_DIGITS"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 6350
    const/4 v0, 0x7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PSEUDO_COLUMN"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v6, v0

    .line 6352
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6354
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 6358
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$10;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$10;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$10;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6478
    if-eqz v4, :cond_1

    .line 6479
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 6483
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 6478
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 6479
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 6478
    :cond_2
    throw v0
.end method

.method public insertsAreDetected(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6497
    const/4 v0, 0x0

    return v0
.end method

.method public isCatalogAtStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6508
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6518
    const/4 v0, 0x0

    return v0
.end method

.method public locatorsUpdateCopy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6525
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6536
    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6546
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 6556
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x2

    invoke-interface {v1, v3, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v2, 0xb

    invoke-interface {v1, v3, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6566
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6576
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->nullsAreSortedHigh()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6584
    const/4 v0, 0x0

    return v0
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6592
    const/4 v0, 0x0

    return v0
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6605
    const/4 v0, 0x0

    return v0
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6613
    const/4 v0, 0x0

    return v0
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6621
    const/4 v0, 0x0

    return v0
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6634
    const/4 v0, 0x0

    return v0
.end method

.method protected parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6649
    const-string v8, ","

    .line 6651
    const/4 v0, 0x0

    const-string v2, "("

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 6653
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6654
    const-string v0, "Error parsing foreign keys definition, couldn\'t find start of local columns list."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6658
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6661
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6663
    const/4 v0, 0x0

    const-string v2, ")"

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 6666
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 6667
    const-string v0, "Error parsing foreign keys definition, couldn\'t find end of local columns list."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6671
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 6673
    const/4 v0, 0x0

    const-string v2, "REFER "

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 6675
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 6676
    const-string v0, "Error parsing foreign keys definition, couldn\'t find start of referenced tables list."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6680
    :cond_2
    const-string v2, "("

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v11

    .line 6683
    const/4 v2, -0x1

    if-ne v11, v2, :cond_3

    .line 6684
    const-string v0, "Error parsing foreign keys definition, couldn\'t find start of referenced columns list."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6688
    :cond_3
    const-string v2, "REFER "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6690
    const/4 v2, 0x0

    const-string v4, "/"

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 6692
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 6693
    const-string v0, "Error parsing foreign keys definition, couldn\'t find name of referenced catalog."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6697
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6698
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6700
    const-string v2, ")"

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move v0, v11

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 6703
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 6704
    const-string v0, "Error parsing foreign keys definition, couldn\'t find end of referenced columns list."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6708
    :cond_5
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6710
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v8, v1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 6711
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v8, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 6713
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-object v1, p0

    move-object v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7870
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 7872
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->getMaxRows()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7873
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    :cond_0
    move-object v0, v1

    .line 7876
    check-cast v0, Lcom/mysql/jdbc/Statement;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/Statement;->setHoldResultsOpenOverClose(Z)V

    .line 7878
    return-object v1
.end method

.method public providesQueryObjectGenerator()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7844
    const/4 v0, 0x0

    return v0
.end method

.method protected s2b(Ljava/lang/String;)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6723
    if-nez p1, :cond_0

    .line 6724
    const/4 v0, 0x0

    .line 6727
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6739
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6750
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6761
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6772
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6783
    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6794
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6825
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6835
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6845
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6804
    const/4 v0, 0x1

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6814
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6855
    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6866
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6877
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6899
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6910
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6924
    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6934
    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6950
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 7104
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    .line 6961
    :sswitch_1
    sparse-switch p2, :sswitch_data_1

    move v0, v1

    .line 6984
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 6991
    goto :goto_0

    .line 7006
    :sswitch_3
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 7025
    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 7030
    goto :goto_0

    .line 7037
    :sswitch_5
    sparse-switch p2, :sswitch_data_2

    move v0, v1

    .line 7047
    goto :goto_0

    .line 7053
    :sswitch_6
    sparse-switch p2, :sswitch_data_3

    move v0, v1

    .line 7063
    goto :goto_0

    .line 7069
    :sswitch_7
    sparse-switch p2, :sswitch_data_4

    move v0, v1

    .line 7079
    goto :goto_0

    .line 7087
    :sswitch_8
    sparse-switch p2, :sswitch_data_5

    move v0, v1

    .line 7099
    goto :goto_0

    .line 6950
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_2
        -0x6 -> :sswitch_3
        -0x5 -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_4
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0xc -> :sswitch_1
        0x5b -> :sswitch_6
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x457 -> :sswitch_5
    .end sparse-switch

    .line 6961
    :sswitch_data_1
    .sparse-switch
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x457 -> :sswitch_0
    .end sparse-switch

    .line 7006
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 7037
    :sswitch_data_2
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch

    .line 7053
    :sswitch_data_3
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch

    .line 7069
    :sswitch_data_4
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch

    .line 7087
    :sswitch_data_5
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7115
    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7126
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7137
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7147
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7159
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7169
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7179
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7189
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    .prologue
    .line 7196
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7206
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7217
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7227
    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7237
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getOverrideSupportsIntegrityEnhancementFacility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7238
    const/4 v0, 0x0

    .line 7241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7252
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7263
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7274
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7284
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7295
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7302
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7312
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7323
    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7330
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7341
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7353
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7365
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7377
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7389
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7399
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7409
    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7419
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7429
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3f0

    const/16 v1, 0x3ef

    const/4 v0, 0x1

    .line 7446
    packed-switch p1, :pswitch_data_0

    .line 7464
    const-string v0, "Illegal arguments to supportsResultSetConcurrency()"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7448
    :pswitch_0
    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    .line 7462
    :cond_0
    :goto_0
    return v0

    .line 7451
    :cond_1
    const-string v0, "Illegal arguments to supportsResultSetConcurrency()"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7455
    :pswitch_1
    if-eq p2, v1, :cond_0

    if-eq p2, v2, :cond_0

    .line 7458
    const-string v0, "Illegal arguments to supportsResultSetConcurrency()"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7462
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7446
    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7474
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsResultSetType(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7488
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSavepoints()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7496
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v3, 0xe

    invoke-interface {v2, v4, v0, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v4, v1, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7506
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7516
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7526
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7536
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7546
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7556
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7563
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7859
    const/4 v0, 0x1

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7574
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7585
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7596
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7607
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7618
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7629
    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 7643
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7644
    packed-switch p1, :pswitch_data_0

    .line 7656
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 7649
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 7644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportsTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7667
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsTransactions()Z

    move-result v0

    return v0
.end method

.method public supportsUnion()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7677
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7687
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public updatesAreDetected(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7701
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFilePerTable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7711
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7721
    const/4 v0, 0x0

    return v0
.end method
