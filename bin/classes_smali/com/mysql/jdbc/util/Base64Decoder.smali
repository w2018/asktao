.class public Lcom/mysql/jdbc/util/Base64Decoder;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;
    }
.end annotation


# static fields
.field private static decoderMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    return-void

    :array_0
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
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfet
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
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static decode([BII)[B
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x2

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 62
    new-instance v3, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;

    invoke-direct {v3, p1}, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;-><init>(I)V

    .line 63
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 65
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 66
    new-array v5, v0, [B

    .line 69
    iget v0, v3, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/2addr v0, p2

    add-int/lit8 v6, v0, -0x1

    move v0, v1

    .line 70
    :goto_0
    iget v2, v3, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    if-gt v2, v6, :cond_1

    .line 71
    sget-object v2, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v3, v6}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v2, v2, v7

    aput-byte v2, v4, v1

    .line 72
    sget-object v2, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v3, v6}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v2, v2, v7

    aput-byte v2, v4, v9

    .line 73
    sget-object v2, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v3, v6}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v2, v2, v7

    aput-byte v2, v4, v10

    .line 74
    sget-object v2, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v3, v6}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v2, v2, v7

    aput-byte v2, v4, v12

    .line 76
    aget-byte v2, v4, v9

    if-eq v2, v11, :cond_0

    .line 77
    add-int/lit8 v2, v0, 0x1

    aget-byte v7, v4, v1

    shl-int/lit8 v7, v7, 0x2

    aget-byte v8, v4, v9

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    move v0, v2

    .line 79
    :cond_0
    aget-byte v2, v4, v10

    if-eq v2, v11, :cond_3

    .line 80
    add-int/lit8 v2, v0, 0x1

    aget-byte v7, v4, v9

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    aget-byte v8, v4, v10

    ushr-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 82
    :goto_1
    aget-byte v0, v4, v12

    if-eq v0, v11, :cond_2

    .line 83
    add-int/lit8 v0, v2, 0x1

    aget-byte v7, v4, v10

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x6

    aget-byte v8, v4, v12

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    goto :goto_0

    .line 87
    :cond_1
    new-array v2, v0, [B

    .line 88
    invoke-static {v5, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-object v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method private static getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    :goto_0
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    if-gt v0, p2, :cond_1

    .line 52
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    iget v1, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v1, p0, v1

    aget-byte v0, v0, v1

    if-ltz v0, :cond_0

    .line 53
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v0, p0, v0

    .line 58
    :goto_1
    return v0

    .line 55
    :cond_0
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    goto :goto_0

    .line 58
    :cond_1
    const/16 v0, 0x3d

    goto :goto_1
.end method
