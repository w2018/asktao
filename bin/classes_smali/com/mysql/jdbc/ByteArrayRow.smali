.class public Lcom/mysql/jdbc/ByteArrayRow;
.super Lcom/mysql/jdbc/ResultSetRow;
.source "ByteArrayRow.java"


# instance fields
.field internalRowData:[[B


# direct methods
.method public constructor <init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetRow;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    .line 49
    return-void
.end method


# virtual methods
.method public closeOpenStreams()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public getBinaryInputStream(I)Ljava/io/InputStream;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getBytesSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    if-nez v1, :cond_0

    .line 295
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 289
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/2addr v1, v2

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method public getColumnValue(I)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
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
    .line 237
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    .line 239
    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v1, p1

    const/4 v3, 0x0

    array-length v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/ByteArrayRow;->getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getInt([B)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 115
    const-wide/16 v0, 0x0

    .line 118
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getLong([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
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
    .line 260
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v0, p1

    .line 262
    if-nez v2, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 12
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
    .line 249
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v0, p1

    .line 251
    if-nez v2, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeDouble(I)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    .line 139
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDouble([BI)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeFloat(I)F
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeFloat([BI)F

    move-result v0

    goto :goto_0
.end method

.method public getNativeInt(I)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeInt([BI)I

    move-result v0

    goto :goto_0
.end method

.method public getNativeLong(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 163
    const-wide/16 v0, 0x0

    .line 166
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeLong([BI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeShort(I)S
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeShort([BI)S

    move-result v0

    goto :goto_0
.end method

.method public getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 10
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
    .line 272
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v0, p1

    .line 274
    if-nez v2, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
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
    .line 181
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    .line 183
    if-nez v1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    array-length v3, v1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_0
.end method

.method public getReader(I)Ljava/io/Reader;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ByteArrayRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    .line 208
    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v1, ""

    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 219
    throw v1
.end method

.method public getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
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
    .line 63
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v3, v0, p1

    .line 65
    if-nez v3, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    array-length v5, v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/ByteArrayRow;->getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 10
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
    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    .line 228
    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v1, p1

    const/4 v3, 0x0

    array-length v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 10
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
    .line 124
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v1, p1

    const/4 v3, 0x0

    array-length v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_0
.end method

.method public isFloatingPointNumber(I)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v0, p1

    .line 81
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 85
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 86
    aget-byte v3, v2, v0

    int-to-char v3, v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    aget-byte v3, v2, v0

    int-to-char v3, v3

    const/16 v4, 0x45

    if-ne v3, v4, :cond_3

    .line 87
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isNull(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 97
    const-wide/16 v0, 0x0

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public setColumnValue(I[B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aput-object p2, v0, p1

    .line 59
    return-void
.end method
