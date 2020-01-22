.class public Lcom/mysql/jdbc/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final MAX_BYTES_TO_DUMP:I = 0x200

.field static final NO_LENGTH_LIMIT:I = -0x1

.field static final NULL_LENGTH:J = -0x1L

.field public static final TYPE_ID_AUTH_SWITCH:S = 0xfes

.field public static final TYPE_ID_EOF:S = 0xfes

.field public static final TYPE_ID_ERROR:S = 0xffs

.field public static final TYPE_ID_LOCAL_INFILE:S = 0xfbs

.field public static final TYPE_ID_OK:S


# instance fields
.field private bufLength:I

.field private byteBuffer:[B

.field private position:I

.field protected wasMultiPacket:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 44
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 62
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 63
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 44
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 58
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 59
    return-void
.end method


# virtual methods
.method final clear()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 69
    return-void
.end method

.method final dump(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p1

    :cond_0
    invoke-static {v0, p1}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method final dump()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    .line 73
    return-void
.end method

.method final dumpClampedBytes(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x200

    .line 80
    if-ge p1, v0, :cond_0

    move v0, p1

    .line 82
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    :goto_1
    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-ge v0, p1, :cond_3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ....(packet exceeds max. dump length)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_2
    return-object v0

    :cond_1
    move v1, v0

    .line 82
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 89
    goto :goto_2
.end method

.method final dumpHeader()V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method final dumpNBytes(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    .line 107
    :goto_0
    add-int v0, p1, p2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v0

    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v0

    const/16 v3, 0x7f

    if-ge v0, v3, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    :goto_1
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method final ensureCapacity(I)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v3, 0x3ff4

    .line 129
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 130
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 141
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    int-to-double v1, p1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    add-int/2addr v0, p1

    .line 149
    :cond_3
    new-array v0, v0, [B

    .line 151
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 153
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    goto :goto_0
.end method

.method public fastSkipLenByteArray()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 174
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    goto :goto_0
.end method

.method public fastSkipLenString()I
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 166
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 168
    long-to-int v0, v0

    return v0
.end method

.method public getBufLength()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    return v0
.end method

.method protected final getBufferSource()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-object v0
.end method

.method public getByteBuffer()[B
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-object v0
.end method

.method final getBytes(I)[B
    .locals 4
    .parameter

    .prologue
    .line 199
    new-array v0, p1, [B

    .line 200
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 203
    return-object v0
.end method

.method getBytes(II)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 212
    new-array v0, p2, [B

    .line 213
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v0
.end method

.method getCapacity()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public getNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteArrayBuffer.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return v0
.end method

.method final isAuthMethodSwitchRequestPacket()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isEOFPacket()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isOKPacket()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 244
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isRawPacket()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final isResultSetOKPacket()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    const v2, 0xffffff

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final newReadLength()J
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 258
    packed-switch v0, :pswitch_data_0

    .line 272
    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 260
    :pswitch_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 269
    :pswitch_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v0

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final readByte()B
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method final readByte(I)B
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method final readFieldLength()J
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 287
    packed-switch v0, :pswitch_data_0

    .line 301
    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 289
    :pswitch_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 295
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 298
    :pswitch_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v0

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final readInt()I
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 308
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method final readIntAsLong()I
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 314
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method final readLenByteArray(I)[B
    .locals 4
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 320
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 324
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 325
    sget-object v0, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 328
    :cond_1
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 330
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method final readLength()J
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 336
    packed-switch v0, :pswitch_data_0

    .line 350
    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 338
    :pswitch_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 341
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 344
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v0

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final readLong()J
    .locals 7

    .prologue
    const-wide/16 v5, 0xff

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 357
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    and-long/2addr v1, v5

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method final readLongInt()I
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 364
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method final readLongLong()J
    .locals 6

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 370
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 402
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 403
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    .line 406
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_0

    .line 407
    add-int/lit8 v0, v0, 0x1

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 414
    return-object v1
.end method

.method final readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 425
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 426
    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    move v2, v1

    move v1, v0

    .line 429
    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v0, v0, v2

    if-eqz v0, :cond_0

    .line 430
    add-int/lit8 v0, v1, 0x1

    .line 431
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v2, v1, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 440
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 435
    return-object v0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteArrayBuffer.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-static {v0, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :catchall_0
    move-exception v0

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    throw v0
.end method

.method final readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 448
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 449
    const-string v0, "ByteArrayBuffer.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 453
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v1, p3, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 458
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 453
    return-object v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteArrayBuffer.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    throw v0
.end method

.method final readnBytes()I
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 378
    packed-switch v0, :pswitch_data_0

    .line 392
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 383
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    goto :goto_0

    .line 386
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    goto :goto_0

    .line 389
    :pswitch_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBufLength(I)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 464
    return-void
.end method

.method public setByteBuffer([B)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 474
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 484
    return-void
.end method

.method public setWasMultiPacket(Z)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dumpClampedBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSuperString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasMultiPacket()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    return v0
.end method

.method public final writeByte(B)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 517
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aput-byte p1, v0, v1

    .line 518
    return-void
.end method

.method public final writeBytesNoNull([B)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 522
    array-length v0, p1

    .line 523
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 524
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 526
    return-void
.end method

.method final writeBytesNoNull([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 531
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 533
    return-void
.end method

.method final writeDouble(D)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 537
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V

    .line 538
    return-void
.end method

.method final writeFieldLength(J)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 541
    const-wide/16 v0, 0xfb

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 542
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 556
    :goto_0
    return-void

    .line 543
    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 544
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 545
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 546
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    goto :goto_0

    .line 547
    :cond_1
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 548
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 549
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 550
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto :goto_0

    .line 552
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 553
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V

    goto :goto_0
.end method

.method final writeFloat(F)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 561
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 563
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 564
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 565
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 566
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 567
    return-void
.end method

.method final writeInt(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 572
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 573
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 574
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 575
    return-void
.end method

.method final writeLenBytes([B)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 579
    array-length v0, p1

    .line 580
    add-int/lit8 v1, v0, 0x9

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 581
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeFieldLength(J)V

    .line 582
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 584
    return-void
.end method

.method final writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 591
    if-eqz p4, :cond_0

    .line 592
    invoke-virtual {p4, p1}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 597
    :goto_0
    array-length v1, v0

    .line 598
    add-int/lit8 v2, v1, 0x9

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 599
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeFieldLength(J)V

    .line 600
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 602
    return-void

    .line 594
    :cond_0
    invoke-interface {p6}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    goto :goto_0
.end method

.method final writeLong(J)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 605
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 607
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 608
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 609
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 610
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 611
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 612
    return-void
.end method

.method final writeLongInt(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 616
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 617
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 618
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 619
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 620
    return-void
.end method

.method final writeLongLong(J)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 623
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 624
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 625
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 626
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 627
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 628
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 629
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 630
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 631
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 632
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 633
    return-void
.end method

.method final writeString(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 638
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 640
    return-void
.end method

.method final writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V
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
    const/4 v6, 0x0

    .line 644
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 646
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aput-byte v6, v0, v1

    .line 652
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-direct {v1, v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method final writeStringNoNull(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 657
    mul-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 658
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 665
    return-void
.end method

.method final writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 672
    array-length v1, v0

    .line 673
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 674
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 676
    return-void
.end method
