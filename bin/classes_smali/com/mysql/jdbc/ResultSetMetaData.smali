.class public Lcom/mysql/jdbc/ResultSetMetaData;
.super Ljava/lang/Object;
.source "ResultSetMetaData.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field fields:[Lcom/mysql/jdbc/Field;

.field treatYearAsDate:Z

.field useOldAliasBehavior:Z


# direct methods
.method public constructor <init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    .line 80
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 81
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    .line 82
    iput-boolean p3, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    .line 83
    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 84
    return-void
.end method

.method private static clampedGetLength(Lcom/mysql/jdbc/Field;)I
    .locals 5
    .parameter

    .prologue
    const-wide/32 v0, 0x7fffffff

    .line 34
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v2

    .line 36
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 40
    :goto_0
    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static getClassNameForJavaType(IZIZZZ)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    sparse-switch p0, :sswitch_data_0

    .line 796
    const-string v0, "java.lang.Object"

    :goto_0
    return-object v0

    .line 720
    :sswitch_0
    const-string v0, "java.lang.Boolean"

    goto :goto_0

    .line 724
    :sswitch_1
    if-eqz p1, :cond_0

    .line 725
    const-string v0, "java.lang.Integer"

    goto :goto_0

    .line 728
    :cond_0
    const-string v0, "java.lang.Integer"

    goto :goto_0

    .line 732
    :sswitch_2
    if-eqz p1, :cond_1

    .line 733
    const-string v0, "java.lang.Integer"

    goto :goto_0

    .line 736
    :cond_1
    const-string v0, "java.lang.Integer"

    goto :goto_0

    .line 740
    :sswitch_3
    if-eqz p1, :cond_2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 741
    :cond_2
    const-string v0, "java.lang.Integer"

    goto :goto_0

    .line 744
    :cond_3
    const-string v0, "java.lang.Long"

    goto :goto_0

    .line 748
    :sswitch_4
    if-nez p1, :cond_4

    .line 749
    const-string v0, "java.lang.Long"

    goto :goto_0

    .line 752
    :cond_4
    const-string v0, "java.math.BigInteger"

    goto :goto_0

    .line 756
    :sswitch_5
    const-string v0, "java.math.BigDecimal"

    goto :goto_0

    .line 759
    :sswitch_6
    const-string v0, "java.lang.Float"

    goto :goto_0

    .line 763
    :sswitch_7
    const-string v0, "java.lang.Double"

    goto :goto_0

    .line 768
    :sswitch_8
    if-nez p4, :cond_5

    .line 769
    const-string v0, "java.lang.String"

    goto :goto_0

    .line 772
    :cond_5
    const-string v0, "[B"

    goto :goto_0

    .line 778
    :sswitch_9
    const/16 v0, 0xff

    if-ne p2, v0, :cond_6

    .line 779
    const-string v0, "[B"

    goto :goto_0

    .line 780
    :cond_6
    if-eqz p3, :cond_7

    .line 781
    const-string v0, "[B"

    goto :goto_0

    .line 783
    :cond_7
    const-string v0, "java.lang.String"

    goto :goto_0

    .line 787
    :sswitch_a
    if-nez p5, :cond_8

    const/16 v0, 0xd

    if-eq p2, v0, :cond_9

    :cond_8
    const-string v0, "java.sql.Date"

    goto :goto_0

    :cond_9
    const-string v0, "java.lang.Short"

    goto :goto_0

    .line 790
    :sswitch_b
    const-string v0, "java.sql.Time"

    goto :goto_0

    .line 793
    :sswitch_c
    const-string v0, "java.sql.Timestamp"

    goto :goto_0

    .line 717
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_9
        -0x3 -> :sswitch_9
        -0x2 -> :sswitch_9
        -0x1 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0xc -> :sswitch_8
        0x10 -> :sswitch_0
        0x5b -> :sswitch_a
        0x5c -> :sswitch_b
        0x5d -> :sswitch_c
    .end sparse-switch
.end method

.method private static final isDecimalType(I)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 64
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCatalogName(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getColumnCharacterEncoding(I)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnCharacterSet(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 125
    :try_start_0
    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :cond_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    throw v0
.end method

.method public getColumnCharacterSet(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v4

    iget-boolean v5, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    .line 205
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result v0

    div-int v0, v1, v0

    return v0
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getColumnLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getNameNoAliases()Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnType(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    return v0
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    .line 284
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    .line 286
    sparse-switch v1, :sswitch_data_0

    .line 378
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 288
    :sswitch_0
    const-string v0, "BIT"

    goto :goto_0

    .line 291
    :sswitch_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DECIMAL UNSIGNED"

    goto :goto_0

    :cond_0
    const-string v0, "DECIMAL"

    goto :goto_0

    .line 294
    :sswitch_2
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TINYINT UNSIGNED"

    goto :goto_0

    :cond_1
    const-string v0, "TINYINT"

    goto :goto_0

    .line 297
    :sswitch_3
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SMALLINT UNSIGNED"

    goto :goto_0

    :cond_2
    const-string v0, "SMALLINT"

    goto :goto_0

    .line 300
    :sswitch_4
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "INT UNSIGNED"

    goto :goto_0

    :cond_3
    const-string v0, "INT"

    goto :goto_0

    .line 303
    :sswitch_5
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "FLOAT UNSIGNED"

    goto :goto_0

    :cond_4
    const-string v0, "FLOAT"

    goto :goto_0

    .line 306
    :sswitch_6
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DOUBLE UNSIGNED"

    goto :goto_0

    :cond_5
    const-string v0, "DOUBLE"

    goto :goto_0

    .line 309
    :sswitch_7
    const-string v0, "NULL"

    goto :goto_0

    .line 312
    :sswitch_8
    const-string v0, "TIMESTAMP"

    goto :goto_0

    .line 315
    :sswitch_9
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BIGINT UNSIGNED"

    goto :goto_0

    :cond_6
    const-string v0, "BIGINT"

    goto :goto_0

    .line 318
    :sswitch_a
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "MEDIUMINT UNSIGNED"

    goto :goto_0

    :cond_7
    const-string v0, "MEDIUMINT"

    goto :goto_0

    .line 321
    :sswitch_b
    const-string v0, "DATE"

    goto :goto_0

    .line 324
    :sswitch_c
    const-string v0, "TIME"

    goto :goto_0

    .line 327
    :sswitch_d
    const-string v0, "DATETIME"

    goto :goto_0

    .line 330
    :sswitch_e
    const-string v0, "TINYBLOB"

    goto :goto_0

    .line 333
    :sswitch_f
    const-string v0, "MEDIUMBLOB"

    goto :goto_0

    .line 336
    :sswitch_10
    const-string v0, "LONGBLOB"

    goto :goto_0

    .line 339
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    const-string v0, "BLOB"

    goto/16 :goto_0

    .line 343
    :cond_8
    const-string v0, "TEXT"

    goto/16 :goto_0

    .line 346
    :sswitch_12
    const-string v0, "VARCHAR"

    goto/16 :goto_0

    .line 349
    :sswitch_13
    const/4 v0, -0x3

    if-ne v2, v0, :cond_9

    .line 350
    const-string v0, "VARBINARY"

    goto/16 :goto_0

    .line 353
    :cond_9
    const-string v0, "VARCHAR"

    goto/16 :goto_0

    .line 356
    :sswitch_14
    const/4 v0, -0x2

    if-ne v2, v0, :cond_a

    .line 357
    const-string v0, "BINARY"

    goto/16 :goto_0

    .line 360
    :cond_a
    const-string v0, "CHAR"

    goto/16 :goto_0

    .line 363
    :sswitch_15
    const-string v0, "ENUM"

    goto/16 :goto_0

    .line 366
    :sswitch_16
    const-string v0, "YEAR"

    goto/16 :goto_0

    .line 369
    :sswitch_17
    const-string v0, "SET"

    goto/16 :goto_0

    .line 372
    :sswitch_18
    const-string v0, "GEOMETRY"

    goto/16 :goto_0

    .line 375
    :sswitch_19
    const-string v0, "JSON"

    goto/16 :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_16
        0xf -> :sswitch_12
        0x10 -> :sswitch_0
        0xf5 -> :sswitch_19
        0xf6 -> :sswitch_1
        0xf7 -> :sswitch_15
        0xf8 -> :sswitch_17
        0xf9 -> :sswitch_e
        0xfa -> :sswitch_f
        0xfb -> :sswitch_10
        0xfc -> :sswitch_11
        0xfd -> :sswitch_13
        0xfe -> :sswitch_14
        0xff -> :sswitch_18
    .end sparse-switch
.end method

.method protected getField(I)Lcom/mysql/jdbc/Field;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 395
    :cond_0
    const-string v0, "ResultSetMetaData.46"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1002"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrecision(I)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/ResultSetMetaData;->isDecimalType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v1

    if-lez v1, :cond_0

    .line 421
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getPrecisionAdjustFactor()I

    move-result v0

    add-int/2addr v0, v1

    .line 435
    :goto_0
    return v0

    .line 424
    :cond_0
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getPrecisionAdjustFactor()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 435
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result v0

    div-int v0, v1, v0

    goto :goto_0

    .line 432
    :pswitch_0
    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v0

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getScale(I)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/ResultSetMetaData;->isDecimalType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 475
    const-string v0, ""

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getTableNameNoAliases()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAutoIncrement(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v0

    return v0
.end method

.method public isCaseSensitive(I)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 526
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v3

    .line 530
    sparse-switch v3, :sswitch_data_0

    .line 557
    :cond_0
    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 542
    goto :goto_0

    .line 548
    :sswitch_1
    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getCollation()Ljava/lang/String;

    move-result-object v2

    .line 554
    if-eqz v2, :cond_1

    const-string v3, "_ci"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 530
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public isCurrency(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public isDefinitelyWritable(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isWritable(I)Z

    move-result v0

    return v0
.end method

.method public isNullable(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isNotNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isSearchable(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 641
    const/4 v0, 0x1

    return v0
.end method

.method public isSigned(I)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v1

    .line 657
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    .line 659
    sparse-switch v2, :sswitch_data_0

    .line 677
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 669
    :sswitch_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 659
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWritable(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isReadOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v0, " - Field level information: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 708
    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 814
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
