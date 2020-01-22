.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field protected final pad:B

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    .line 193
    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/16 v1, 0x3d

    iput-byte v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 206
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 207
    iput p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 208
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v1, 0x1

    .line 209
    :goto_0
    if-eqz v1, :cond_0

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :cond_0
    iput v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 210
    iput p4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 212
    iput-byte p5, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    .line 213
    return-void

    :cond_1
    move v1, v0

    .line 208
    goto :goto_0
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1
    .parameter

    .prologue
    .line 312
    sparse-switch p0, :sswitch_data_0

    .line 319
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 317
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 251
    iput v3, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 252
    iput v3, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 258
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 255
    iget-object v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v2, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 496
    if-nez p1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    .line 500
    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 377
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 378
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 379
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 380
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 394
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 406
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object p1

    .line 409
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 410
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 411
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 412
    iget v1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array p1, v1, [B

    .line 413
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 335
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 426
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-object p1

    .line 429
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 430
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 431
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v3, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 432
    iget v1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v1, v2

    new-array p1, v1, [B

    .line 433
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 269
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 270
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6
    .parameter

    .prologue
    .line 518
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 519
    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_0

    .line 521
    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 523
    :cond_0
    return-wide v0
.end method

.method hasData(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 483
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 464
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 465
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    aget-byte v2, p1, v0

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v2, v3, :cond_1

    aget-byte v2, p1, v0

    invoke-static {v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    :cond_0
    :goto_1
    return v1

    .line 464
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 294
    iget-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 296
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 301
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
