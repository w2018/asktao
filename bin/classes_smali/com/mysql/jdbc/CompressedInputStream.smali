.class Lcom/mysql/jdbc/CompressedInputStream;
.super Ljava/io/InputStream;
.source "CompressedInputStream.java"


# instance fields
.field private buffer:[B

.field private in:Ljava/io/InputStream;

.field private inflater:Ljava/util/zip/Inflater;

.field private log:Lcom/mysql/jdbc/log/Log;

.field private packetHeaderBuffer:[B

.field private pos:I

.field private traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 73
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iput-object p2, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    .line 79
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 80
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v0, Lcom/mysql/jdbc/log/NullLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/log/NullLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    goto :goto_0
.end method

.method private getNextPacketFromServer()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 117
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    invoke-direct {p0, v0, v6, v1}, Lcom/mysql/jdbc/CompressedInputStream;->readFully([BII)I

    move-result v0

    .line 119
    if-ge v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    .line 126
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->packetHeaderBuffer:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    .line 129
    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v3

    .line 131
    if-eqz v3, :cond_1

    .line 132
    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading compressed packet of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uncompressed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 135
    :cond_1
    if-lez v0, :cond_4

    .line 136
    new-array v2, v0, [B

    .line 138
    new-array v4, v1, [B

    .line 140
    invoke-direct {p0, v4, v6, v1}, Lcom/mysql/jdbc/CompressedInputStream;->readFully([BII)I

    .line 142
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 144
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v4}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 165
    :goto_0
    if-eqz v3, :cond_2

    .line 166
    const/16 v2, 0x400

    if-le v0, v2, :cond_6

    .line 167
    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncompressed packet: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v7}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 168
    new-array v2, v7, [B

    .line 169
    add-int/lit16 v0, v0, -0x100

    invoke-static {v1, v0, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncompressed packet: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v7}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    const-string v2, "Large packet dump truncated. Showing first and last 256 bytes."

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 177
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 178
    if-eqz v3, :cond_3

    .line 179
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    const-string v2, "Combining remaining packet with new: "

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    sub-int v2, v0, v2

    .line 183
    array-length v0, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 185
    iget-object v3, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    iget v4, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    invoke-static {v3, v4, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    array-length v3, v1

    invoke-static {v1, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :goto_2
    iput v6, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    .line 192
    iput-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    .line 194
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while uncompressing packet from server."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_4
    if-eqz v3, :cond_5

    .line 154
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    const-string v2, "Packet didn\'t meet compression threshold, not uncompressing..."

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 161
    :cond_5
    new-array v0, v1, [B

    .line 162
    invoke-direct {p0, v0, v6, v1}, Lcom/mysql/jdbc/CompressedInputStream;->readFully([BII)I

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto/16 :goto_0

    .line 173
    :cond_6
    iget-object v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncompressed packet: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v0}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private getNextPacketIfRequired(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CompressedInputStream;->getNextPacketFromServer()V

    .line 211
    :cond_1
    return-void
.end method

.method private final readFully([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    if-gez p3, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    if-ge v0, p3, :cond_2

    .line 273
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 275
    if-gez v1, :cond_1

    .line 276
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 279
    :cond_1
    add-int/2addr v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 100
    iput-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    .line 101
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 102
    iput-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 103
    iput-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 104
    iput-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->log:Lcom/mysql/jdbc/log/Log;

    .line 105
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/CompressedInputStream;->getNextPacketIfRequired(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/CompressedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 242
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int v0, p2, p3

    if-gez v0, :cond_2

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 246
    :cond_2
    if-gtz p3, :cond_3

    .line 247
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    .line 251
    :cond_3
    :try_start_0
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/CompressedInputStream;->getNextPacketIfRequired(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 257
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->buffer:[B

    iget v2, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mysql/jdbc/CompressedInputStream;->pos:I

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 292
    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/mysql/jdbc/CompressedInputStream;->read()I

    move-result v4

    .line 295
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 302
    :cond_0
    return-wide v2

    .line 299
    :cond_1
    add-long/2addr v2, v6

    .line 292
    add-long/2addr v0, v6

    goto :goto_0
.end method
