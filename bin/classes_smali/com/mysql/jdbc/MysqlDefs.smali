.class public final Lcom/mysql/jdbc/MysqlDefs;
.super Ljava/lang/Object;
.source "MysqlDefs.java"


# static fields
.field static final COM_BINLOG_DUMP:I = 0x12

.field static final COM_CHANGE_USER:I = 0x11

.field static final COM_CLOSE_STATEMENT:I = 0x19

.field static final COM_CONNECT_OUT:I = 0x14

.field static final COM_END:I = 0x1d

.field static final COM_EXECUTE:I = 0x17

.field static final COM_FETCH:I = 0x1c

.field static final COM_LONG_DATA:I = 0x18

.field static final COM_PREPARE:I = 0x16

.field static final COM_REGISTER_SLAVE:I = 0x15

.field static final COM_RESET_STMT:I = 0x1a

.field static final COM_SET_OPTION:I = 0x1b

.field static final COM_TABLE_DUMP:I = 0x13

.field static final CONNECT:I = 0xb

.field static final CREATE_DB:I = 0x5

.field static final DEBUG:I = 0xd

.field static final DELAYED_INSERT:I = 0x10

.field static final DROP_DB:I = 0x6

.field static final FIELD_LIST:I = 0x4

.field static final FIELD_TYPE_BIT:I = 0x10

.field public static final FIELD_TYPE_BLOB:I = 0xfc

.field static final FIELD_TYPE_DATE:I = 0xa

.field static final FIELD_TYPE_DATETIME:I = 0xc

.field static final FIELD_TYPE_DECIMAL:I = 0x0

.field static final FIELD_TYPE_DOUBLE:I = 0x5

.field static final FIELD_TYPE_ENUM:I = 0xf7

.field static final FIELD_TYPE_FLOAT:I = 0x4

.field static final FIELD_TYPE_GEOMETRY:I = 0xff

.field static final FIELD_TYPE_INT24:I = 0x9

.field static final FIELD_TYPE_JSON:I = 0xf5

.field static final FIELD_TYPE_LONG:I = 0x3

.field static final FIELD_TYPE_LONGLONG:I = 0x8

.field static final FIELD_TYPE_LONG_BLOB:I = 0xfb

.field static final FIELD_TYPE_MEDIUM_BLOB:I = 0xfa

.field static final FIELD_TYPE_NEWDATE:I = 0xe

.field static final FIELD_TYPE_NEW_DECIMAL:I = 0xf6

.field static final FIELD_TYPE_NULL:I = 0x6

.field static final FIELD_TYPE_SET:I = 0xf8

.field static final FIELD_TYPE_SHORT:I = 0x2

.field static final FIELD_TYPE_STRING:I = 0xfe

.field static final FIELD_TYPE_TIME:I = 0xb

.field static final FIELD_TYPE_TIMESTAMP:I = 0x7

.field static final FIELD_TYPE_TINY:I = 0x1

.field static final FIELD_TYPE_TINY_BLOB:I = 0xf9

.field static final FIELD_TYPE_VARCHAR:I = 0xf

.field static final FIELD_TYPE_VAR_STRING:I = 0xfd

.field static final FIELD_TYPE_YEAR:I = 0xd

.field static final INIT_DB:I = 0x2

.field static final LENGTH_BLOB:J = 0xffffL

.field static final LENGTH_LONGBLOB:J = 0xffffffffL

.field static final LENGTH_MEDIUMBLOB:J = 0xffffffL

.field static final LENGTH_TINYBLOB:J = 0xffL

.field static final MAX_ROWS:I = 0x2faf080

.field public static final NO_CHARSET_INFO:I = -0x1

.field static final OPEN_CURSOR_FLAG:B = 0x1t

.field static final PING:I = 0xe

.field static final PROCESS_INFO:I = 0xa

.field static final PROCESS_KILL:I = 0xc

.field static final QUERY:I = 0x3

.field static final QUIT:I = 0x1

.field static final RELOAD:I = 0x7

.field static final SHUTDOWN:I = 0x8

.field static final SLEEP:I = 0x0

.field static final STATISTICS:I = 0x9

.field static final TIME:I = 0xf

.field private static mysqlToJdbcTypesMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x4

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    .line 487
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "BIT"

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TINYINT"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "SMALLINT"

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "MEDIUMINT"

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "INT"

    invoke-static {v6}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "INTEGER"

    invoke-static {v6}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "BIGINT"

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "INT24"

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "REAL"

    invoke-static {v7}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "FLOAT"

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DECIMAL"

    invoke-static {v5}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "NUMERIC"

    invoke-static {v5}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DOUBLE"

    invoke-static {v7}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "CHAR"

    const/16 v2, 0xfe

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "VARCHAR"

    const/16 v2, 0xfd

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DATE"

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TIME"

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "YEAR"

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DATETIME"

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TINYBLOB"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "BLOB"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "MEDIUMBLOB"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "LONGBLOB"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TINYTEXT"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "MEDIUMTEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "LONGTEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "ENUM"

    const/16 v2, 0xf7

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "SET"

    const/16 v2, 0xf8

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "GEOMETRY"

    const/16 v2, 0xff

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "JSON"

    const/16 v2, 0xf5

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 524
    const-string v0, "CASE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 526
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 527
    const-string v0, "BINARY"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v0, "VARBINARY"

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 532
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 534
    const-string v3, " WHEN UPPER("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v3, ")=\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v3, "\' THEN "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    const-string v3, "DOUBLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FLOAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DECIMAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NUMERIC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    :cond_1
    const-string v3, " WHEN "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v3, "=\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v3, " UNSIGNED\' THEN "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 552
    :cond_2
    const-string v0, " ELSE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v0, 0x457

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const-string v0, " END "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    return-void
.end method

.method static mysqlToJavaType(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v0, 0x4

    const/16 v1, 0x5b

    const/4 v2, 0x1

    const/4 v3, -0x4

    .line 182
    sparse-switch p0, :sswitch_data_0

    move v0, v4

    .line 312
    :goto_0
    :sswitch_0
    return v0

    .line 185
    :sswitch_1
    const/4 v0, 0x3

    .line 187
    goto :goto_0

    .line 190
    :sswitch_2
    const/4 v0, -0x6

    .line 192
    goto :goto_0

    .line 195
    :sswitch_3
    const/4 v0, 0x5

    .line 197
    goto :goto_0

    .line 205
    :sswitch_4
    const/4 v0, 0x7

    .line 207
    goto :goto_0

    .line 210
    :sswitch_5
    const/16 v0, 0x8

    .line 212
    goto :goto_0

    .line 215
    :sswitch_6
    const/4 v0, 0x0

    .line 217
    goto :goto_0

    .line 220
    :sswitch_7
    const/16 v0, 0x5d

    .line 222
    goto :goto_0

    .line 225
    :sswitch_8
    const/4 v0, -0x5

    .line 227
    goto :goto_0

    :sswitch_9
    move v0, v1

    .line 237
    goto :goto_0

    .line 240
    :sswitch_a
    const/16 v0, 0x5c

    .line 242
    goto :goto_0

    .line 245
    :sswitch_b
    const/16 v0, 0x5d

    .line 247
    goto :goto_0

    :sswitch_c
    move v0, v1

    .line 252
    goto :goto_0

    :sswitch_d
    move v0, v1

    .line 257
    goto :goto_0

    :sswitch_e
    move v0, v2

    .line 262
    goto :goto_0

    :sswitch_f
    move v0, v2

    .line 267
    goto :goto_0

    .line 270
    :sswitch_10
    const/4 v0, -0x3

    .line 272
    goto :goto_0

    :sswitch_11
    move v0, v3

    .line 277
    goto :goto_0

    :sswitch_12
    move v0, v3

    .line 282
    goto :goto_0

    :sswitch_13
    move v0, v3

    .line 287
    goto :goto_0

    :sswitch_14
    move v0, v4

    .line 293
    goto :goto_0

    :sswitch_15
    move v0, v2

    .line 299
    goto :goto_0

    .line 301
    :sswitch_16
    const/4 v0, -0x2

    .line 303
    goto :goto_0

    .line 305
    :sswitch_17
    const/4 v0, -0x7

    .line 307
    goto :goto_0

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_0
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_14
        0x10 -> :sswitch_17
        0xf5 -> :sswitch_15
        0xf6 -> :sswitch_1
        0xf7 -> :sswitch_e
        0xf8 -> :sswitch_f
        0xf9 -> :sswitch_10
        0xfa -> :sswitch_11
        0xfb -> :sswitch_12
        0xfc -> :sswitch_13
        0xfd -> :sswitch_14
        0xfe -> :sswitch_15
        0xff -> :sswitch_16
    .end sparse-switch
.end method

.method static mysqlToJavaType(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v0, -0x2

    const/4 v2, -0x1

    const/4 v1, -0x4

    .line 319
    const-string v3, "BIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    const-string v3, "TINYINT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 323
    :cond_2
    const-string v3, "SMALLINT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 325
    :cond_3
    const-string v3, "MEDIUMINT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 327
    :cond_4
    const-string v3, "INT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "INTEGER"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 328
    :cond_5
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 329
    :cond_6
    const-string v3, "BIGINT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 331
    :cond_7
    const-string v3, "INT24"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 332
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 333
    :cond_8
    const-string v3, "REAL"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 334
    invoke-static {v5}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_9
    const-string v3, "FLOAT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 336
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto :goto_0

    .line 337
    :cond_a
    const-string v3, "DECIMAL"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 338
    invoke-static {v4}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 339
    :cond_b
    const-string v3, "NUMERIC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 340
    invoke-static {v4}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 341
    :cond_c
    const-string v3, "DOUBLE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 342
    invoke-static {v5}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 343
    :cond_d
    const-string v3, "CHAR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 344
    const/16 v0, 0xfe

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 345
    :cond_e
    const-string v3, "VARCHAR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 346
    const/16 v0, 0xfd

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 347
    :cond_f
    const-string v3, "DATE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 348
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 349
    :cond_10
    const-string v3, "TIME"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 350
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 351
    :cond_11
    const-string v3, "YEAR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 352
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 353
    :cond_12
    const-string v3, "TIMESTAMP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 354
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 355
    :cond_13
    const-string v3, "DATETIME"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 356
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 357
    :cond_14
    const-string v3, "TINYBLOB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    const-string v3, "BLOB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v1

    .line 360
    goto/16 :goto_0

    .line 361
    :cond_15
    const-string v3, "MEDIUMBLOB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v0, v1

    .line 362
    goto/16 :goto_0

    .line 363
    :cond_16
    const-string v3, "LONGBLOB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v0, v1

    .line 364
    goto/16 :goto_0

    .line 365
    :cond_17
    const-string v1, "TINYTEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 366
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 367
    :cond_18
    const-string v1, "TEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v0, v2

    .line 368
    goto/16 :goto_0

    .line 369
    :cond_19
    const-string v1, "MEDIUMTEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v0, v2

    .line 370
    goto/16 :goto_0

    .line 371
    :cond_1a
    const-string v1, "LONGTEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v0, v2

    .line 372
    goto/16 :goto_0

    .line 373
    :cond_1b
    const-string v1, "ENUM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 374
    const/16 v0, 0xf7

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 375
    :cond_1c
    const-string v1, "SET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 376
    const/16 v0, 0xf8

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 377
    :cond_1d
    const-string v1, "GEOMETRY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 378
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 379
    :cond_1e
    const-string v1, "BINARY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    const-string v0, "VARBINARY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 382
    const/4 v0, -0x3

    goto/16 :goto_0

    .line 383
    :cond_1f
    const-string v0, "BIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 384
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 385
    :cond_20
    const-string v0, "JSON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 386
    const/16 v0, 0xf5

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    goto/16 :goto_0

    .line 390
    :cond_21
    const/16 v0, 0x457

    goto/16 :goto_0
.end method

.method public static typeToName(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 397
    sparse-switch p0, :sswitch_data_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Unknown MySQL Type # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 399
    :sswitch_0
    const-string v0, "FIELD_TYPE_DECIMAL"

    goto :goto_0

    .line 402
    :sswitch_1
    const-string v0, "FIELD_TYPE_TINY"

    goto :goto_0

    .line 405
    :sswitch_2
    const-string v0, "FIELD_TYPE_SHORT"

    goto :goto_0

    .line 408
    :sswitch_3
    const-string v0, "FIELD_TYPE_LONG"

    goto :goto_0

    .line 411
    :sswitch_4
    const-string v0, "FIELD_TYPE_FLOAT"

    goto :goto_0

    .line 414
    :sswitch_5
    const-string v0, "FIELD_TYPE_DOUBLE"

    goto :goto_0

    .line 417
    :sswitch_6
    const-string v0, "FIELD_TYPE_NULL"

    goto :goto_0

    .line 420
    :sswitch_7
    const-string v0, "FIELD_TYPE_TIMESTAMP"

    goto :goto_0

    .line 423
    :sswitch_8
    const-string v0, "FIELD_TYPE_LONGLONG"

    goto :goto_0

    .line 426
    :sswitch_9
    const-string v0, "FIELD_TYPE_INT24"

    goto :goto_0

    .line 429
    :sswitch_a
    const-string v0, "FIELD_TYPE_BIT"

    goto :goto_0

    .line 432
    :sswitch_b
    const-string v0, "FIELD_TYPE_DATE"

    goto :goto_0

    .line 435
    :sswitch_c
    const-string v0, "FIELD_TYPE_TIME"

    goto :goto_0

    .line 438
    :sswitch_d
    const-string v0, "FIELD_TYPE_DATETIME"

    goto :goto_0

    .line 441
    :sswitch_e
    const-string v0, "FIELD_TYPE_YEAR"

    goto :goto_0

    .line 444
    :sswitch_f
    const-string v0, "FIELD_TYPE_NEWDATE"

    goto :goto_0

    .line 447
    :sswitch_10
    const-string v0, "FIELD_TYPE_ENUM"

    goto :goto_0

    .line 450
    :sswitch_11
    const-string v0, "FIELD_TYPE_SET"

    goto :goto_0

    .line 453
    :sswitch_12
    const-string v0, "FIELD_TYPE_TINY_BLOB"

    goto :goto_0

    .line 456
    :sswitch_13
    const-string v0, "FIELD_TYPE_MEDIUM_BLOB"

    goto :goto_0

    .line 459
    :sswitch_14
    const-string v0, "FIELD_TYPE_LONG_BLOB"

    goto :goto_0

    .line 462
    :sswitch_15
    const-string v0, "FIELD_TYPE_BLOB"

    goto :goto_0

    .line 465
    :sswitch_16
    const-string v0, "FIELD_TYPE_VAR_STRING"

    goto :goto_0

    .line 468
    :sswitch_17
    const-string v0, "FIELD_TYPE_STRING"

    goto :goto_0

    .line 471
    :sswitch_18
    const-string v0, "FIELD_TYPE_VARCHAR"

    goto :goto_0

    .line 474
    :sswitch_19
    const-string v0, "FIELD_TYPE_GEOMETRY"

    goto :goto_0

    .line 477
    :sswitch_1a
    const-string v0, "FIELD_TYPE_JSON"

    goto :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_18
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_1a
        0xf7 -> :sswitch_10
        0xf8 -> :sswitch_11
        0xf9 -> :sswitch_12
        0xfa -> :sswitch_13
        0xfb -> :sswitch_14
        0xfc -> :sswitch_15
        0xfd -> :sswitch_16
        0xfe -> :sswitch_17
        0xff -> :sswitch_19
    .end sparse-switch
.end method
