.class public Lorg/apache/commons/codec/binary/Base32;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base32.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final CHUNK_SEPARATOR:[B = null

.field private static final DECODE_TABLE:[B = null

.field private static final ENCODE_TABLE:[B = null

.field private static final HEX_DECODE_TABLE:[B = null

.field private static final HEX_ENCODE_TABLE:[B = null

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    .line 67
    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    .line 81
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    .line 92
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 106
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 67
    nop

    :array_1
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data

    .line 81
    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 92
    :array_3
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
    .end array-data

    .line 106
    :array_4
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/codec/binary/Base32;-><init>(ZB)V

    .line 171
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 208
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[B)V

    .line 209
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    const/16 v1, 0x3d

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 231
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    const/16 v0, 0x3d

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 256
    return-void
.end method

.method public constructor <init>(I[BZB)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 281
    const/4 v1, 0x5

    if-nez p2, :cond_0

    move v4, v6

    :goto_0
    move-object v0, p0

    move v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    .line 283
    if-eqz p3, :cond_1

    .line 284
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 285
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    .line 290
    :goto_1
    if-lez p1, :cond_5

    .line 291
    if-nez p2, :cond_2

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0, but lineSeparator is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    array-length v4, p2

    goto :goto_0

    .line 287
    :cond_1
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 288
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain Base32 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_3
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 300
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    .line 301
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v1, p2

    invoke-static {p2, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :goto_2
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    .line 308
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/Base32;->isInAlphabet(B)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Lorg/apache/commons/codec/binary/Base32;->isWhiteSpace(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 309
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad must not be in alphabet or whitespace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_5
    iput v2, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    goto :goto_2

    .line 311
    :cond_6
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3d

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 182
    return-void
.end method

.method public constructor <init>(ZB)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 194
    return-void
.end method


# virtual methods
.method decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    if-gez p3, :cond_2

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 345
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 346
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 347
    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    if-ne v2, v3, :cond_4

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 374
    :cond_3
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 375
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 378
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v1, :pswitch_data_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4
    iget v3, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v3, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    .line 353
    if-ltz v2, :cond_5

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 354
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    aget-byte v2, v4, v2

    .line 355
    if-ltz v2, :cond_5

    .line 356
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x8

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 358
    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x5

    shl-long/2addr v4, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 359
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v2, :cond_5

    .line 360
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 361
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 362
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 363
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 364
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 345
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 380
    :pswitch_0
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v4, 0x2

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 383
    :pswitch_1
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v4, 0x7

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 386
    :pswitch_2
    iget-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v3, 0x4

    shr-long/2addr v1, v3

    iput-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 387
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 388
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 391
    :pswitch_3
    iget-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v3, 0x1

    shr-long/2addr v1, v3

    iput-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 392
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 393
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 394
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 397
    :pswitch_4
    iget-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v3, 0x6

    shr-long/2addr v1, v3

    iput-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 398
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 399
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 400
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 403
    :pswitch_5
    iget-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    iput-wide v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 404
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 405
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 406
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 407
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    if-gez p3, :cond_3

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 442
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-eqz v0, :cond_0

    .line 445
    :cond_2
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 446
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 447
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v2, :pswitch_data_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :pswitch_0
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x3

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 452
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 453
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 454
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 455
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 456
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 457
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 458
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 493
    :goto_1
    :pswitch_1
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int v1, v3, v1

    add-int/2addr v1, v2

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 495
    iget v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v1, :cond_0

    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v1, :cond_0

    .line 496
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    const/4 v2, 0x0

    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 461
    :pswitch_2
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0xb

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 462
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x6

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 463
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x1

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 464
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 465
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 466
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 467
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 468
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    goto/16 :goto_1

    .line 471
    :pswitch_3
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x13

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 472
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0xe

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 473
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x9

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 474
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 475
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 476
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 477
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    .line 478
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    goto/16 :goto_1

    .line 481
    :pswitch_4
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x1b

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 482
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x16

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 483
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x11

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 484
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0xc

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 485
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x7

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 486
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x2

    shr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 487
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v6, 0x3

    shl-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 488
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v3, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v3, v0, v2

    goto/16 :goto_1

    .line 500
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_0

    .line 501
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    .line 502
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 503
    add-int/lit8 v2, p2, 0x1

    aget-byte v0, p1, p2

    .line 504
    if-gez v0, :cond_4

    .line 505
    add-int/lit16 v0, v0, 0x100

    .line 507
    :cond_4
    iget-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 508
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v0, :cond_5

    .line 509
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x23

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 510
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x1e

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 511
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x19

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 512
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x14

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 513
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xf

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 514
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xa

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 515
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x5

    shr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 516
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 517
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 518
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v0, :cond_5

    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v0, v4, :cond_5

    .line 519
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    const/4 v4, 0x0

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr v0, v3

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 521
    const/4 v0, 0x0

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 500
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v2

    goto/16 :goto_2

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .locals 2
    .parameter

    .prologue
    .line 537
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
