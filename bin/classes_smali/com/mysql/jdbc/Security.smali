.class public Lcom/mysql/jdbc/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static CACHING_SHA2_DIGEST_LENGTH:I = 0x0

.field private static final PVERSION41_CHAR:C = '*'

.field private static final SHA1_HASH_SIZE:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x20

    sput v0, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method private static charVal(C)I
    .locals 1
    .parameter

    .prologue
    .line 45
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static createKeyFromOldPassword(Ljava/lang/String;)[B
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/mysql/jdbc/Security;->makeScrambledPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/mysql/jdbc/Security;->getSaltFromPassword(Ljava/lang/String;)[I

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Security;->getBinaryPassword([IZ)[B

    move-result-object v0

    return-object v0
.end method

.method static getBinaryPassword([IZ)[B
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    .line 93
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 95
    if-eqz p1, :cond_1

    move v6, v5

    move v1, v5

    .line 98
    :goto_0
    const/4 v3, 0x4

    if-ge v6, v3, :cond_4

    .line 99
    aget v3, p0, v6

    move v5, v3

    move v3, v1

    move v1, v2

    .line 101
    :goto_1
    if-ltz v1, :cond_0

    .line 102
    add-int/lit8 v4, v3, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 103
    shr-int/lit8 v3, v5, 0x8

    .line 101
    add-int/lit8 v1, v1, -0x1

    move v5, v3

    move v3, v4

    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v1, v3

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v5

    .line 112
    :goto_2
    const/4 v1, 0x2

    if-ge v4, v1, :cond_3

    .line 113
    aget v1, p0, v4

    move v3, v1

    move v1, v2

    .line 115
    :goto_3
    if-ltz v1, :cond_2

    .line 116
    add-int v7, v1, v6

    rem-int/lit16 v8, v3, 0x100

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 117
    shr-int/lit8 v3, v3, 0x8

    .line 115
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 120
    :cond_2
    add-int/lit8 v3, v6, 0x4

    .line 112
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v6, v3

    goto :goto_2

    .line 123
    :cond_3
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 125
    const/16 v2, 0x8

    invoke-virtual {v1, v0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 127
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private static getSaltFromPassword(Ljava/lang/String;)[I
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    return-object v0

    .line 137
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_2

    .line 139
    const/4 v1, 0x1

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 143
    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    .line 144
    shl-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/mysql/jdbc/Security;->charVal(C)I

    move-result v4

    add-int/2addr v1, v4

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v2

    move v6, v2

    .line 154
    :goto_1
    if-ge v1, v7, :cond_0

    move v3, v2

    move v4, v1

    move v1, v2

    .line 157
    :goto_2
    const/16 v5, 0x8

    if-ge v1, v5, :cond_3

    .line 158
    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/mysql/jdbc/Security;->charVal(C)I

    move-result v4

    add-int/2addr v3, v4

    .line 157
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_2

    .line 161
    :cond_3
    add-int/lit8 v1, v6, 0x1

    aput v3, v0, v6

    move v6, v1

    move v1, v4

    .line 162
    goto :goto_1
.end method

.method private static longToHex(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 172
    if-ge v2, v3, :cond_1

    .line 173
    rsub-int/lit8 v2, v2, 0x8

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    :goto_0
    if-ge v0, v2, :cond_0

    .line 177
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static makeScrambledPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;)[J

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Security;->longToHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Security;->longToHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static passwordHashStage1(Ljava/lang/String;)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 252
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 255
    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 252
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method static passwordHashStage2([B[B)[B
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 279
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 282
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 284
    const/16 v1, 0x14

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 286
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public static scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 307
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 309
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 311
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 313
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 314
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 316
    const-string v3, "ASCII"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 317
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 318
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 322
    array-length v3, v1

    .line 324
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 325
    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    :cond_1
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_2
    return-object v1
.end method

.method public static scrambleCachingSha2([B[B)[B
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 351
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    sget v1, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    new-array v1, v1, [B

    .line 357
    sget v2, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    new-array v2, v2, [B

    .line 358
    sget v3, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    new-array v3, v3, [B

    .line 361
    array-length v4, p0

    invoke-virtual {v0, p0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 362
    sget v4, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-virtual {v0, v1, v5, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 363
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 366
    array-length v4, v1

    invoke-virtual {v0, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 367
    sget v4, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 368
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 371
    array-length v4, v1

    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 372
    array-length v2, p1

    invoke-virtual {v0, p1, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 373
    sget v2, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-virtual {v0, v3, v5, v2}, Ljava/security/MessageDigest;->digest([BII)I

    .line 376
    sget v0, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    new-array v0, v0, [B

    .line 377
    sget v2, Lcom/mysql/jdbc/Security;->CACHING_SHA2_DIGEST_LENGTH:I

    invoke-static {v1, v0, v3, v2}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 379
    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Lcom/mysql/jdbc/AssertionFailedException;

    invoke-direct {v1, v0}, Lcom/mysql/jdbc/AssertionFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static xorString([B[B[BI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    array-length v1, p2

    .line 229
    :goto_0
    if-ge v0, p3, :cond_0

    .line 230
    aget-byte v2, p0, v0

    rem-int v3, v0, v1

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method
