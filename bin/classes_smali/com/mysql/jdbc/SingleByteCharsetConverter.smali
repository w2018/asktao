.class public Lcom/mysql/jdbc/SingleByteCharsetConverter;
.super Ljava/lang/Object;
.source "SingleByteCharsetConverter.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final CONVERTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/SingleByteCharsetConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static allBytes:[B

.field private static unknownCharsMap:[B


# instance fields
.field private byteToChars:[C

.field private charToByteMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 37
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    .line 40
    new-array v1, v0, [B

    sput-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    .line 44
    const/high16 v1, 0x1

    new-array v1, v1, [B

    sput-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    .line 47
    const/16 v1, -0x80

    :goto_0
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 48
    sget-object v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    add-int/lit16 v3, v1, 0x80

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    :goto_1
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 52
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-array v1, v6, [C

    iput-object v1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    .line 123
    const/high16 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    .line 134
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    invoke-direct {v1, v2, v0, v6, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    sget-object v3, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    array-length v5, v5

    invoke-static {v3, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :goto_0
    if-ge v0, v6, :cond_0

    if-ge v0, v2, :cond_0

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 141
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    aput-char v3, v4, v0

    .line 142
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    sget-object v5, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    const-class v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 70
    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->initCharset(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    :cond_0
    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initCharset(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    throw v0

    .line 98
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;-><init>(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toStringDefaultEncoding([BII)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final toBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 208
    const/4 v0, 0x0

    .line 218
    :cond_0
    return-object v0

    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 212
    new-array v0, v2, [B

    .line 214
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 215
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final toBytes(Ljava/lang/String;II)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    if-nez p1, :cond_1

    .line 257
    const/4 v0, 0x0

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    if-nez p3, :cond_2

    .line 261
    sget-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 264
    :cond_2
    new-array v0, p3, [B

    .line 266
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_0

    .line 267
    add-int v2, v1, p2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final toBytes([C)[B
    .locals 5
    .parameter

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 158
    :cond_0
    return-object v0

    .line 151
    :cond_1
    array-length v2, p1

    .line 152
    new-array v0, v2, [B

    .line 154
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-char v4, p1, v1

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final toBytes([CII)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    if-nez p1, :cond_1

    .line 183
    const/4 v0, 0x0

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    if-nez p3, :cond_2

    .line 187
    sget-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 190
    :cond_2
    new-array v0, p3, [B

    .line 192
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_0

    .line 193
    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    add-int v3, v1, p2

    aget-char v3, p1, v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final toBytesWrapped(Ljava/lang/String;CC)[B
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 228
    add-int/lit8 v3, v2, 0x2

    .line 230
    new-array v0, v3, [B

    .line 232
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v4, v4, p2

    aput-byte v4, v0, v1

    .line 234
    :goto_1
    if-ge v1, v2, :cond_1

    .line 235
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_1
    add-int/lit8 v1, v3, -0x1

    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v2, v2, p3

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final toBytesWrapped([CCC)[B
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 166
    :cond_0
    array-length v0, p1

    add-int/lit8 v2, v0, 0x2

    .line 167
    array-length v3, p1

    .line 169
    new-array v0, v2, [B

    .line 170
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v4, v4, p2

    aput-byte v4, v0, v1

    .line 172
    :goto_1
    if-ge v1, v3, :cond_1

    .line 173
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-char v6, p1, v1

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_1
    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v2, v2, p3

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final toString([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString([BII)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    new-array v1, p3, [C

    .line 302
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 303
    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    aget-byte v3, p1, p2

    add-int/lit16 v3, v3, 0x80

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 304
    add-int/lit8 p2, p2, 0x1

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
