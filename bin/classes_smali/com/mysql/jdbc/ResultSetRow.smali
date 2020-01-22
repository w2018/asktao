.class public abstract Lcom/mysql/jdbc/ResultSetRow;
.super Ljava/lang/Object;
.source "ResultSetRow.java"


# instance fields
.field protected exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected metadata:[Lcom/mysql/jdbc/Field;


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract closeOpenStreams()V
.end method

.method public abstract getBinaryInputStream(I)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getBytesSize()I
.end method

.method public abstract getColumnValue(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected final getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 6
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
    .line 96
    if-nez p2, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const/4 v1, 0x1

    .line 102
    const/4 v0, 0x0

    .line 104
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_1

    .line 105
    add-int v3, p3, v2

    :try_start_0
    aget-byte v3, p2, v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_6

    .line 106
    const/4 v0, 0x1

    .line 111
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_4

    .line 112
    add-int v3, p3, v2

    aget-byte v3, p2, v3

    .line 114
    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 115
    :cond_2
    const/4 v0, 0x0

    .line 118
    :cond_3
    const/16 v4, 0x30

    if-eq v3, v4, :cond_7

    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_7

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_7

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_7

    .line 119
    const/4 v1, 0x0

    .line 126
    :cond_4
    const/4 v3, -0x1

    .line 127
    const/4 v2, 0x0

    :goto_3
    if-ge v2, p4, :cond_18

    .line 128
    add-int v4, p3, v2

    aget-byte v4, p2, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_8

    .line 135
    :goto_4
    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    move p4, v2

    .line 139
    :cond_5
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 141
    const-string v0, "convertToNull"

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 144
    :cond_9
    const-string v0, "exception"

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' can not be represented as java.sql.Date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    throw v0

    .line 150
    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_b
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    .line 154
    sparse-switch p4, :sswitch_data_0

    .line 212
    const-string v0, "ResultSet.Bad_format_for_Date"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :catch_1
    move-exception v0

    .line 265
    const-string v1, "ResultSet.Bad_format_for_Date"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 270
    throw v1

    .line 158
    :sswitch_0
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x4

    :try_start_2
    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 159
    add-int/lit8 v1, p3, 0x5

    add-int/lit8 v2, p3, 0x7

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 160
    add-int/lit8 v2, p3, 0x8

    add-int/lit8 v3, p3, 0xa

    invoke-static {p2, v2, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 162
    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 167
    :sswitch_1
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x4

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 168
    add-int/lit8 v1, p3, 0x4

    add-int/lit8 v2, p3, 0x6

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 169
    add-int/lit8 v2, p3, 0x6

    add-int/lit8 v3, p3, 0x8

    invoke-static {p2, v2, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 171
    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :sswitch_2
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x2

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 179
    const/16 v1, 0x45

    if-gt v0, v1, :cond_c

    .line 180
    add-int/lit8 v0, v0, 0x64

    .line 183
    :cond_c
    add-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p3, 0x4

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 184
    add-int/lit8 v2, p3, 0x4

    add-int/lit8 v3, p3, 0x6

    invoke-static {p2, v2, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 186
    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :sswitch_3
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x4

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 192
    const/16 v1, 0x45

    if-gt v0, v1, :cond_d

    .line 193
    add-int/lit8 v0, v0, 0x64

    .line 196
    :cond_d
    add-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p3, 0x4

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 198
    add-int/lit16 v0, v0, 0x76c

    const/4 v2, 0x1

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 202
    :sswitch_4
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x2

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 204
    const/16 v1, 0x45

    if-gt v0, v1, :cond_e

    .line 205
    add-int/lit8 v0, v0, 0x64

    .line 208
    :cond_e
    add-int/lit16 v0, v0, 0x76c

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :cond_f
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_13

    .line 219
    const/4 v0, 0x2

    if-eq p4, v0, :cond_10

    const/4 v0, 0x1

    if-ne p4, v0, :cond_12

    .line 220
    :cond_10
    add-int v0, p3, p4

    invoke-static {p2, p3, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 222
    const/16 v1, 0x45

    if-gt v0, v1, :cond_11

    .line 223
    add-int/lit8 v0, v0, 0x64

    .line 226
    :cond_11
    add-int/lit16 v0, v0, 0x76c

    .line 231
    :goto_5
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :cond_12
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x4

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    goto :goto_5

    .line 232
    :cond_13
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_14

    .line 233
    const/16 v0, 0x7b2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 235
    :cond_14
    const/16 v0, 0xa

    if-ge p4, v0, :cond_16

    .line 236
    const/16 v0, 0x8

    if-ne p4, v0, :cond_15

    .line 237
    const/16 v0, 0x7b2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 241
    :cond_15
    const-string v0, "ResultSet.Bad_format_for_Date"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 247
    :cond_16
    const/16 v0, 0x12

    if-eq p4, v0, :cond_17

    .line 248
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p3, 0x4

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 249
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p3, 0x7

    invoke-static {p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 250
    add-int/lit8 v0, p3, 0x8

    add-int/lit8 v3, p3, 0xa

    invoke-static {p2, v0, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 261
    :goto_6
    invoke-virtual {p6, p7, v2, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 253
    :cond_17
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "ISO8859_1"

    invoke-static {p2, p3, p4, v1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- "

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 256
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 257
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_6

    :cond_18
    move v2, v3

    goto/16 :goto_4

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract getInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 4
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    if-eqz p4, :cond_6

    .line 318
    add-int/lit8 v0, p3, 0x0

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p3, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int v3, v0, v2

    .line 320
    add-int/lit8 v0, p3, 0x2

    aget-byte v2, p2, v0

    .line 321
    add-int/lit8 v0, p3, 0x3

    aget-byte v0, p2, v0

    .line 324
    :goto_0
    if-eqz p4, :cond_0

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 325
    :cond_0
    const-string v0, "convertToNull"

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x0

    .line 341
    :goto_1
    return-object v0

    .line 327
    :cond_1
    const-string v0, "exception"

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    move v2, v1

    .line 337
    :goto_2
    iget-boolean v3, p6, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v3, :cond_3

    .line 338
    invoke-static {v2, v1, v0, p7}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    goto :goto_1

    .line 341
    :cond_3
    if-nez p7, :cond_4

    invoke-virtual {p6}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object p7

    :cond_4
    invoke-virtual {p6, p7, v2, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v0

    move v3, v0

    goto :goto_0
.end method

.method public abstract getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 23
    .parameter
    .parameter
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
    .line 349
    const/4 v12, 0x0

    .line 350
    const/4 v10, 0x0

    .line 351
    const/4 v9, 0x0

    .line 353
    const/4 v7, 0x0

    .line 354
    const/4 v6, 0x0

    .line 355
    const/4 v4, 0x0

    .line 357
    const/4 v11, 0x0

    .line 359
    if-nez p2, :cond_0

    .line 361
    const/4 v4, 0x0

    .line 487
    :goto_0
    return-object v4

    .line 364
    :cond_0
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v5

    .line 368
    :goto_1
    packed-switch p7, :pswitch_data_0

    .line 419
    :pswitch_0
    const/4 v8, 0x0

    move/from16 v21, v8

    move v8, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v6

    move v6, v10

    move v10, v4

    move v4, v9

    move/from16 v9, v22

    .line 422
    :goto_2
    packed-switch p6, :pswitch_data_1

    .line 490
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "Internal error - conversion method doesn\'t support this type"

    const-string v6, "S1000"

    invoke-direct {v4, v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 364
    :cond_1
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v5

    goto :goto_1

    .line 371
    :pswitch_1
    const/4 v8, 0x1

    .line 373
    if-eqz p4, :cond_10

    .line 374
    add-int/lit8 v9, p3, 0x0

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, p3, 0x1

    aget-byte v10, p2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int v12, v9, v10

    .line 375
    add-int/lit8 v9, p3, 0x2

    aget-byte v10, p2, v9

    .line 376
    add-int/lit8 v9, p3, 0x3

    aget-byte v9, p2, v9

    .line 378
    const/4 v13, 0x4

    move/from16 v0, p4

    if-le v0, v13, :cond_2

    .line 379
    add-int/lit8 v4, p3, 0x4

    aget-byte v7, p2, v4

    .line 380
    add-int/lit8 v4, p3, 0x5

    aget-byte v6, p2, v4

    .line 381
    add-int/lit8 v4, p3, 0x6

    aget-byte v4, p2, v4

    .line 384
    :cond_2
    const/4 v13, 0x7

    move/from16 v0, p4

    if-le v0, v13, :cond_11

    .line 386
    add-int/lit8 v11, p3, 0x7

    aget-byte v11, p2, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v13, p3, 0x8

    aget-byte v13, p2, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v11, v13

    add-int/lit8 v13, p3, 0x9

    aget-byte v13, p2, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v11, v13

    add-int/lit8 v13, p3, 0xa

    aget-byte v13, p2, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v11, v13

    mul-int/lit16 v11, v11, 0x3e8

    move/from16 v21, v8

    move v8, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v6

    move v6, v10

    move v10, v4

    move v4, v9

    move/from16 v9, v22

    goto :goto_2

    .line 393
    :pswitch_2
    const/4 v8, 0x1

    .line 395
    if-eqz p4, :cond_10

    .line 396
    add-int/lit8 v9, p3, 0x0

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, p3, 0x1

    aget-byte v10, p2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int v12, v9, v10

    .line 397
    add-int/lit8 v9, p3, 0x2

    aget-byte v10, p2, v9

    .line 398
    add-int/lit8 v9, p3, 0x3

    aget-byte v9, p2, v9

    move/from16 v21, v8

    move v8, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v6

    move v6, v10

    move v10, v4

    move v4, v9

    move/from16 v9, v22

    goto/16 :goto_2

    .line 403
    :pswitch_3
    const/4 v8, 0x1

    .line 405
    if-eqz p4, :cond_3

    .line 408
    add-int/lit8 v4, p3, 0x5

    aget-byte v7, p2, v4

    .line 409
    add-int/lit8 v4, p3, 0x6

    aget-byte v6, p2, v4

    .line 410
    add-int/lit8 v4, p3, 0x7

    aget-byte v4, p2, v4

    .line 413
    :cond_3
    const/16 v12, 0x7b2

    .line 414
    const/4 v10, 0x1

    .line 415
    const/4 v9, 0x1

    move/from16 v21, v8

    move v8, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v6

    move v6, v10

    move v10, v4

    move v4, v9

    move/from16 v9, v22

    .line 417
    goto/16 :goto_2

    .line 424
    :pswitch_4
    if-eqz v12, :cond_5

    .line 425
    move-object/from16 v0, p11

    iget-boolean v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v4, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    move-object/from16 v0, p5

    invoke-static {v8, v9, v10, v0, v4}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v4

    goto/16 :goto_0

    .line 429
    :cond_4
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v8, v9, v10, v6}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v7

    .line 431
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v8

    move-object/from16 v4, p10

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v4 .. v10}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v4

    goto/16 :goto_0

    .line 436
    :cond_5
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p11

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimeViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v4

    goto/16 :goto_0

    .line 439
    :pswitch_5
    if-eqz v12, :cond_9

    .line 440
    if-nez v7, :cond_f

    if-nez v6, :cond_f

    if-nez v4, :cond_f

    .line 441
    const-string v4, "convertToNull"

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 443
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 444
    :cond_6
    const-string v4, "exception"

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 445
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string v6, "S1009"

    invoke-direct {v4, v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 448
    :cond_7
    const/4 v6, 0x1

    .line 449
    const/4 v5, 0x1

    .line 450
    const/4 v4, 0x1

    .line 453
    :goto_3
    move-object/from16 v0, p11

    iget-boolean v7, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v7, :cond_8

    .line 454
    move-object/from16 v0, p5

    invoke-static {v6, v5, v4, v0}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v4

    goto/16 :goto_0

    .line 457
    :cond_8
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v7

    move-object/from16 v0, p11

    invoke-virtual {v0, v7, v6, v5, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v4

    goto/16 :goto_0

    .line 460
    :cond_9
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDateViaParseConversion(I)Ljava/sql/Date;

    move-result-object v4

    goto/16 :goto_0

    .line 462
    :pswitch_6
    if-eqz v12, :cond_d

    .line 463
    if-nez v7, :cond_e

    if-nez v6, :cond_e

    if-nez v4, :cond_e

    .line 464
    const-string v4, "convertToNull"

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 466
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 467
    :cond_a
    const-string v4, "exception"

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 468
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v6, "S1009"

    invoke-direct {v4, v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 471
    :cond_b
    const/4 v7, 0x1

    .line 472
    const/4 v6, 0x1

    .line 473
    const/4 v4, 0x1

    move v14, v7

    move v7, v4

    .line 476
    :goto_4
    move-object/from16 v0, p11

    iget-boolean v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v4, :cond_c

    move-object/from16 v4, p8

    move v5, v14

    .line 477
    invoke-static/range {v4 .. v11}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v4

    goto/16 :goto_0

    .line 480
    :cond_c
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v12, p11

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v7

    .line 482
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v8

    move-object/from16 v4, p10

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v4 .. v10}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v4

    goto/16 :goto_0

    .line 487
    :cond_d
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p11

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestampViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v4

    goto/16 :goto_0

    :cond_e
    move v14, v7

    move v7, v4

    goto :goto_4

    :cond_f
    move v5, v6

    move v6, v7

    goto/16 :goto_3

    :cond_10
    move/from16 v21, v8

    move v8, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v6

    move v6, v10

    move v10, v4

    move v4, v9

    move/from16 v9, v22

    goto/16 :goto_2

    :cond_11
    move/from16 v21, v8

    move v8, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v6

    move v6, v10

    move v10, v4

    move v4, v9

    move/from16 v9, v22

    goto/16 :goto_2

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 422
    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public abstract getNativeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDouble([BI)D
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 498
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 502
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getNativeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeFloat([BI)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 508
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 510
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public abstract getNativeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeInt([BI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 517
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 519
    return v0
.end method

.method public abstract getNativeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeLong([BI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 525
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 529
    return-wide v0
.end method

.method public abstract getNativeShort(I)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeShort([BI)S
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 535
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 537
    return v0
.end method

.method public abstract getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 8
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
    .line 557
    const/4 v3, 0x0

    .line 558
    const/4 v2, 0x0

    .line 559
    const/4 v1, 0x0

    .line 561
    if-eqz p4, :cond_1

    .line 564
    add-int/lit8 v1, p3, 0x5

    aget-byte v3, p2, v1

    .line 565
    add-int/lit8 v1, p3, 0x6

    aget-byte v2, p2, v1

    .line 566
    add-int/lit8 v1, p3, 0x7

    aget-byte v1, p2, v1

    move v4, v3

    move v3, v2

    .line 569
    :goto_0
    move-object/from16 v0, p9

    iget-boolean v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v3, v1, p5, v2}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v1

    .line 579
    :goto_1
    return-object v1

    .line 573
    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    .line 575
    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v2, v4, v3, v1, v5}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v4

    .line 577
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v1, p8

    move-object v3, p5

    move-object v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v1

    goto :goto_1

    :cond_1
    move v4, v3

    move v3, v2

    goto :goto_0
.end method

.method public abstract getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 18
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
    .line 587
    const/4 v2, 0x0

    .line 588
    const/4 v3, 0x0

    .line 589
    const/4 v4, 0x0

    .line 591
    const/4 v5, 0x0

    .line 592
    const/4 v6, 0x0

    .line 593
    const/4 v7, 0x0

    .line 595
    const/4 v8, 0x0

    .line 597
    if-eqz p3, :cond_1

    .line 598
    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v1

    .line 599
    add-int/lit8 v1, p2, 0x2

    aget-byte v3, p1, v1

    .line 600
    add-int/lit8 v1, p2, 0x3

    aget-byte v4, p1, v1

    .line 602
    const/4 v1, 0x4

    move/from16 v0, p3

    if-le v0, v1, :cond_0

    .line 603
    add-int/lit8 v1, p2, 0x4

    aget-byte v5, p1, v1

    .line 604
    add-int/lit8 v1, p2, 0x5

    aget-byte v6, p1, v1

    .line 605
    add-int/lit8 v1, p2, 0x6

    aget-byte v7, p1, v1

    .line 608
    :cond_0
    const/4 v1, 0x7

    move/from16 v0, p3

    if-le v0, v1, :cond_1

    .line 610
    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v1, v8

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v1, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v1, v8

    mul-int/lit16 v8, v1, 0x3e8

    .line 615
    :cond_1
    if-eqz p3, :cond_2

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    .line 616
    :cond_2
    const-string v1, "convertToNull"

    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 618
    const/4 v1, 0x0

    .line 639
    :goto_0
    return-object v1

    .line 619
    :cond_3
    const-string v1, "exception"

    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 620
    const-string v1, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v2, "S1009"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 624
    :cond_4
    const/4 v2, 0x1

    .line 625
    const/4 v3, 0x1

    .line 626
    const/4 v4, 0x1

    .line 629
    :cond_5
    move-object/from16 v0, p8

    iget-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_6

    move-object/from16 v1, p5

    .line 630
    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v1

    goto :goto_0

    .line 633
    :cond_6
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v10

    :goto_1
    move-object/from16 v9, p8

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 635
    invoke-virtual/range {v9 .. v17}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v12

    .line 637
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v13

    move-object/from16 v9, p7

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v15}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v1

    goto :goto_0

    .line 633
    :cond_7
    invoke-virtual/range {p8 .. p8}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v10

    goto :goto_1
.end method

.method public abstract getReader(I)Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;
    .locals 3
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
    .line 691
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    if-nez p1, :cond_0

    .line 694
    :try_start_0
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    .line 696
    :cond_0
    invoke-interface {p2, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v0, p3, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 701
    :cond_1
    invoke-static {p3, p4, p5, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Unsupported_character_encoding____101"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0S100"

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 709
    :cond_2
    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 9
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
    .line 723
    const/4 v3, -0x1

    .line 727
    if-nez p2, :cond_0

    .line 728
    const/4 v1, 0x0

    .line 884
    :goto_0
    return-object v1

    .line 731
    :cond_0
    const/4 v4, 0x1

    .line 732
    const/4 v1, 0x0

    .line 734
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_1

    .line 735
    add-int v5, p3, v2

    :try_start_0
    aget-byte v5, p2, v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    .line 736
    const/4 v1, 0x1

    .line 741
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_14

    .line 742
    add-int v5, p3, v2

    aget-byte v5, p2, v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5

    .line 748
    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, p4, :cond_13

    .line 749
    add-int v5, p3, v3

    aget-byte v5, p2, v5

    .line 751
    const/16 v6, 0x20

    if-eq v5, v6, :cond_2

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_2

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    .line 752
    :cond_2
    const/4 v1, 0x0

    .line 755
    :cond_3
    const/16 v6, 0x30

    if-eq v5, v6, :cond_6

    const/16 v6, 0x20

    if-eq v5, v6, :cond_6

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_6

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_6

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_6

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_6

    .line 756
    const/4 v3, 0x0

    .line 762
    :goto_5
    if-nez v1, :cond_9

    if-eqz v3, :cond_9

    .line 763
    const-string v1, "convertToNull"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    const/4 v1, 0x0

    goto :goto_0

    .line 734
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 741
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 748
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 765
    :cond_7
    const-string v1, "exception"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' can not be represented as java.sql.Time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :catch_0
    move-exception v1

    .line 890
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 891
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 893
    throw v2

    .line 771
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p9

    invoke-virtual {v0, p5, v1, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v1

    goto/16 :goto_0

    .line 774
    :cond_9
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v4, v1, p1

    .line 778
    const/4 v1, -0x1

    if-eq v2, v1, :cond_b

    .line 782
    add-int/lit8 v1, v2, 0x2

    if-gt v1, p4, :cond_c

    .line 783
    add-int v1, p3, v2

    add-int/lit8 v1, v1, 0x1

    add-int v3, p3, p4

    invoke-static {p2, v1, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 785
    add-int/lit8 v3, v2, 0x1

    sub-int v3, p4, v3

    .line 787
    const/16 v5, 0x9

    if-ge v3, v5, :cond_a

    .line 788
    const-wide/high16 v5, 0x4024

    rsub-int/lit8 v3, v3, 0x9

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v3, v5

    .line 789
    mul-int/2addr v1, v3

    :cond_a
    move p4, v2

    .line 801
    :cond_b
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d

    .line 803
    sparse-switch p4, :sswitch_data_0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 792
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 806
    :sswitch_0
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x8

    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x6

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 807
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x5

    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x3

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 808
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x2

    add-int v5, p3, p4

    invoke-static {p2, v1, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 835
    :goto_6
    new-instance v5, Ljava/sql/SQLWarning;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    move v4, v3

    move v3, v2

    .line 875
    :goto_7
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    .line 877
    move-object/from16 v0, p9

    iget-boolean v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v5, :cond_12

    .line 881
    move-object/from16 v0, p9

    invoke-virtual {v0, p5, v4, v3, v1}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v1

    goto/16 :goto_0

    .line 814
    :sswitch_1
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x6

    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x4

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 815
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x4

    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 816
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x2

    add-int v5, p3, p4

    invoke-static {p2, v1, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    goto :goto_6

    .line 822
    :sswitch_2
    add-int/lit8 v1, p3, 0x6

    add-int/lit8 v2, p3, 0x8

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 823
    add-int/lit8 v1, p3, 0x8

    add-int/lit8 v2, p3, 0xa

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 824
    const/4 v1, 0x0

    .line 827
    goto :goto_6

    .line 843
    :cond_d
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_e

    .line 844
    add-int/lit8 v1, p3, 0xb

    add-int/lit8 v2, p3, 0xd

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 845
    add-int/lit8 v1, p3, 0xe

    add-int/lit8 v2, p3, 0x10

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 846
    add-int/lit8 v1, p3, 0x11

    add-int/lit8 v5, p3, 0x13

    invoke-static {p2, v1, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    .line 849
    new-instance v5, Ljava/sql/SQLWarning;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    move v4, v3

    move v3, v2

    .line 858
    goto/16 :goto_7

    :cond_e
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 859
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v1

    goto/16 :goto_0

    .line 863
    :cond_f
    const/4 v1, 0x5

    if-eq p4, v1, :cond_10

    const/16 v1, 0x8

    if-eq p4, v1, :cond_10

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Bad_format_for_Time____267"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ResultSet.___in_column__268"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 870
    :cond_10
    add-int/lit8 v1, p3, 0x0

    add-int/lit8 v2, p3, 0x2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 871
    add-int/lit8 v1, p3, 0x3

    add-int/lit8 v2, p3, 0x5

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 872
    const/4 v1, 0x5

    if-ne p4, v1, :cond_11

    const/4 v1, 0x0

    :goto_8
    move v4, v3

    move v3, v2

    goto/16 :goto_7

    :cond_11
    add-int/lit8 v1, p3, 0x6

    add-int/lit8 v4, p3, 0x8

    invoke-static {p2, v1, v4}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v1

    goto :goto_8

    .line 884
    :cond_12
    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v4

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v1, p8

    move-object v3, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :cond_13
    move v3, v4

    goto/16 :goto_5

    :cond_14
    move v2, v3

    goto/16 :goto_3

    .line 803
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 20
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
    .line 904
    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v4

    .line 906
    :goto_0
    const/4 v5, 0x1

    .line 908
    const/4 v3, 0x0

    .line 910
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p4

    if-ge v6, v0, :cond_0

    .line 911
    add-int v7, p3, v6

    aget-byte v7, p2, v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_5

    .line 912
    const/4 v3, 0x1

    .line 917
    :cond_0
    const/4 v6, 0x0

    :goto_2
    move/from16 v0, p4

    if-ge v6, v0, :cond_3

    .line 918
    add-int v7, p3, v6

    aget-byte v7, p2, v7

    .line 920
    const/16 v8, 0x20

    if-eq v7, v8, :cond_1

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_2

    .line 921
    :cond_1
    const/4 v3, 0x0

    .line 924
    :cond_2
    const/16 v8, 0x30

    if-eq v7, v8, :cond_6

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_6

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_6

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_6

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_6

    .line 925
    const/4 v5, 0x0

    .line 931
    :cond_3
    if-nez v3, :cond_a

    if-eqz v5, :cond_a

    .line 933
    const-string v3, "convertToNull"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 935
    const/4 v3, 0x0

    .line 1166
    :goto_3
    return-object v3

    .line 904
    :cond_4
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v4

    goto :goto_0

    .line 910
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 917
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 936
    :cond_7
    const-string v3, "exception"

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' can not be represented as java.sql.Timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :catch_0
    move-exception v3

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot convert value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ISO8859_1"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v5, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' from column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to TIMESTAMP."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1009"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 1173
    invoke-virtual {v4, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1175
    throw v4

    .line 941
    :cond_8
    :try_start_1
    move-object/from16 v0, p9

    iget-boolean v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v3, :cond_9

    .line 942
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p6

    invoke-static/range {v3 .. v10}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v3

    goto/16 :goto_3

    .line 945
    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p9

    invoke-virtual/range {v3 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v3

    goto/16 :goto_3

    .line 947
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_c

    .line 949
    move-object/from16 v0, p9

    iget-boolean v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v3, :cond_b

    .line 950
    const/4 v3, 0x4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p6

    invoke-static/range {v3 .. v10}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v3

    goto/16 :goto_3

    .line 953
    :cond_b
    const/4 v3, 0x4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p9

    invoke-virtual/range {v3 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v6

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v7

    move-object/from16 v3, p8

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v3

    goto/16 :goto_3

    .line 962
    :cond_c
    const/4 v7, 0x0

    .line 963
    const/4 v8, 0x0

    .line 964
    const/4 v9, 0x0

    .line 965
    const/4 v10, 0x0

    .line 968
    const/4 v3, -0x1

    .line 969
    const/4 v5, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v5, v0, :cond_1f

    .line 970
    add-int v6, p3, v5

    aget-byte v6, p2, v6

    const/16 v11, 0x2e

    if-ne v6, v11, :cond_e

    .line 976
    :goto_5
    add-int v3, p3, p4

    add-int/lit8 v3, v3, -0x1

    if-ne v5, v3, :cond_f

    .line 978
    add-int/lit8 p4, p4, -0x1

    .line 998
    :cond_d
    :goto_6
    packed-switch p4, :pswitch_data_0

    .line 1157
    :pswitch_0
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad format for Timestamp \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "S1009"

    invoke-direct {v3, v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 969
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 980
    :cond_f
    const/4 v3, -0x1

    if-eq v5, v3, :cond_d

    .line 981
    add-int/lit8 v3, v5, 0x2

    move/from16 v0, p4

    if-gt v3, v0, :cond_11

    .line 982
    add-int v3, p3, v5

    add-int/lit8 v3, v3, 0x1

    add-int v6, p3, p4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 984
    add-int/lit8 v6, v5, 0x1

    sub-int v6, p4, v6

    .line 986
    const/16 v10, 0x9

    if-ge v6, v10, :cond_10

    .line 987
    const-wide/high16 v10, 0x4024

    rsub-int/lit8 v6, v6, 0x9

    int-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v6, v10

    .line 988
    mul-int/2addr v3, v6

    :cond_10
    move v10, v3

    move/from16 p4, v5

    .line 995
    goto :goto_6

    .line 991
    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1008
    :pswitch_1
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v13

    .line 1009
    add-int/lit8 v3, p3, 0x5

    add-int/lit8 v5, p3, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1010
    add-int/lit8 v3, p3, 0x8

    add-int/lit8 v6, p3, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1011
    add-int/lit8 v3, p3, 0xb

    add-int/lit8 v7, p3, 0xd

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1012
    add-int/lit8 v3, p3, 0xe

    add-int/lit8 v8, p3, 0x10

    move-object/from16 v0, p2

    invoke-static {v0, v3, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1013
    add-int/lit8 v3, p3, 0x11

    add-int/lit8 v9, p3, 0x13

    move-object/from16 v0, p2

    invoke-static {v0, v3, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    .line 1162
    :goto_7
    move-object/from16 v0, p9

    iget-boolean v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v3, :cond_1e

    move-object/from16 v3, p6

    move v4, v13

    .line 1163
    invoke-static/range {v3 .. v10}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v3

    goto/16 :goto_3

    .line 1019
    :pswitch_2
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v13

    .line 1020
    add-int/lit8 v3, p3, 0x4

    add-int/lit8 v5, p3, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1021
    add-int/lit8 v3, p3, 0x6

    add-int/lit8 v6, p3, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1022
    add-int/lit8 v3, p3, 0x8

    add-int/lit8 v7, p3, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1023
    add-int/lit8 v3, p3, 0xa

    add-int/lit8 v8, p3, 0xc

    move-object/from16 v0, p2

    invoke-static {v0, v3, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1024
    add-int/lit8 v3, p3, 0xc

    add-int/lit8 v9, p3, 0xe

    move-object/from16 v0, p2

    invoke-static {v0, v3, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    goto :goto_7

    .line 1030
    :pswitch_3
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 1032
    const/16 v5, 0x45

    if-gt v3, v5, :cond_12

    .line 1033
    add-int/lit8 v3, v3, 0x64

    .line 1036
    :cond_12
    add-int/lit16 v13, v3, 0x76c

    .line 1038
    add-int/lit8 v3, p3, 0x2

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1039
    add-int/lit8 v3, p3, 0x4

    add-int/lit8 v6, p3, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1040
    add-int/lit8 v3, p3, 0x6

    add-int/lit8 v7, p3, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1041
    add-int/lit8 v3, p3, 0x8

    add-int/lit8 v8, p3, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v3, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1042
    add-int/lit8 v3, p3, 0xa

    add-int/lit8 v9, p3, 0xc

    move-object/from16 v0, p2

    invoke-static {v0, v3, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    goto/16 :goto_7

    .line 1048
    :pswitch_4
    const/4 v3, 0x0

    .line 1050
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, p4

    if-ge v5, v0, :cond_13

    .line 1051
    add-int v6, p3, v5

    aget-byte v6, p2, v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_15

    .line 1052
    const/4 v3, 0x1

    .line 1057
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_14

    if-eqz v3, :cond_16

    .line 1058
    :cond_14
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v13

    .line 1059
    add-int/lit8 v3, p3, 0x5

    add-int/lit8 v5, p3, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1060
    add-int/lit8 v3, p3, 0x8

    add-int/lit8 v6, p3, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1061
    const/4 v7, 0x0

    .line 1062
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1050
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1064
    :cond_16
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 1066
    const/16 v5, 0x45

    if-gt v3, v5, :cond_17

    .line 1067
    add-int/lit8 v3, v3, 0x64

    .line 1070
    :cond_17
    add-int/lit8 v5, p3, 0x2

    add-int/lit8 v6, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1071
    add-int/lit8 v6, p3, 0x4

    add-int/lit8 v7, p3, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1072
    add-int/lit8 v7, p3, 0x6

    add-int/lit8 v8, p3, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1073
    add-int/lit8 v8, p3, 0x8

    add-int/lit8 v11, p3, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v8, v11}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1075
    add-int/lit16 v13, v3, 0x76c

    .line 1078
    goto/16 :goto_7

    .line 1082
    :pswitch_5
    const/4 v3, 0x0

    .line 1084
    const/4 v5, 0x0

    :goto_9
    move/from16 v0, p4

    if-ge v5, v0, :cond_18

    .line 1085
    add-int v6, p3, v5

    aget-byte v6, p2, v6

    const/16 v11, 0x3a

    if-ne v6, v11, :cond_19

    .line 1086
    const/4 v3, 0x1

    .line 1091
    :cond_18
    if-eqz v3, :cond_1a

    .line 1092
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    .line 1093
    add-int/lit8 v3, p3, 0x3

    add-int/lit8 v5, p3, 0x5

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 1094
    add-int/lit8 v3, p3, 0x6

    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    .line 1096
    const/16 v13, 0x7b2

    .line 1097
    const/4 v5, 0x1

    .line 1098
    const/4 v6, 0x1

    .line 1100
    goto/16 :goto_7

    .line 1084
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1103
    :cond_1a
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 1104
    add-int/lit8 v5, p3, 0x4

    add-int/lit8 v6, p3, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1105
    add-int/lit8 v6, p3, 0x6

    add-int/lit8 v11, p3, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v6, v11}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    .line 1107
    add-int/lit16 v13, v3, -0x76c

    .line 1108
    add-int/lit8 v5, v5, -0x1

    .line 1110
    goto/16 :goto_7

    .line 1114
    :pswitch_6
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 1116
    const/16 v5, 0x45

    if-gt v3, v5, :cond_1b

    .line 1117
    add-int/lit8 v3, v3, 0x64

    .line 1120
    :cond_1b
    add-int/lit16 v13, v3, 0x76c

    .line 1122
    add-int/lit8 v3, p3, 0x2

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1123
    add-int/lit8 v3, p3, 0x4

    add-int/lit8 v6, p3, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    goto/16 :goto_7

    .line 1129
    :pswitch_7
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v13

    .line 1131
    const/16 v3, 0x45

    if-gt v13, v3, :cond_1c

    .line 1132
    add-int/lit8 v13, v13, 0x64

    .line 1135
    :cond_1c
    add-int/lit8 v3, p3, 0x2

    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v5

    .line 1137
    const/4 v6, 0x1

    .line 1139
    goto/16 :goto_7

    .line 1143
    :pswitch_8
    add-int/lit8 v3, p3, 0x0

    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v3

    .line 1145
    const/16 v5, 0x45

    if-gt v3, v5, :cond_1d

    .line 1146
    add-int/lit8 v3, v3, 0x64

    .line 1149
    :cond_1d
    add-int/lit16 v13, v3, 0x76c

    .line 1150
    const/4 v5, 0x1

    .line 1151
    const/4 v6, 0x1

    .line 1153
    goto/16 :goto_7

    :cond_1e
    move-object/from16 v11, p9

    move-object v12, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 1166
    invoke-virtual/range {v11 .. v19}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v6

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v7

    move-object/from16 v3, p8

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_3

    :cond_1f
    move v5, v3

    goto/16 :goto_5

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
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
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract isFloatingPointNumber(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isNull(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract length(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setColumnValue(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    .line 1242
    return-object p0
.end method
