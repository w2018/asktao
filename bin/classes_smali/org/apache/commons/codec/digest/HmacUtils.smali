.class public final Lorg/apache/commons/codec/digest/HmacUtils;
.super Ljava/lang/Object;
.source "HmacUtils.java"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHmacMd5([B)Ljavax/crypto/Mac;
    .locals 1
    .parameter

    .prologue
    .line 63
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha1([B)Ljavax/crypto/Mac;
    .locals 1
    .parameter

    .prologue
    .line 81
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha256([B)Ljavax/crypto/Mac;
    .locals 1
    .parameter

    .prologue
    .line 99
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha384([B)Ljavax/crypto/Mac;
    .locals 1
    .parameter

    .prologue
    .line 117
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha512([B)Ljavax/crypto/Mac;
    .locals 1
    .parameter

    .prologue
    .line 135
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 182
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 187
    :catch_1
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacMd5([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5([BLjava/io/InputStream;)[B
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacMd5([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5([B[B)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacMd5([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacMd5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacMd5(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacMd5([BLjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex([B[B)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacMd5([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha1([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1([BLjava/io/InputStream;)[B
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha1([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1([B[B)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha1([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 317
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha1Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha1([BLjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 368
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha1([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha256([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256([BLjava/io/InputStream;)[B
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha256([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256([B[B)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 421
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha256([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha256(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha256([BLjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex([B[B)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha256([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha384([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384([BLjava/io/InputStream;)[B
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha384([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384([B[B)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 528
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha384([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha384Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha384(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha384([BLjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex([B[B)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha384([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 674
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha512([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512([BLjava/io/InputStream;)[B
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha512([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512([B[B)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 635
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getHmacSha512([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha512Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 724
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha512(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha512([BLjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex([B[B)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 689
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacSha512([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 765
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 766
    new-array v1, v4, [B

    .line 767
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 769
    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 770
    invoke-virtual {p0, v1, v3, v0}, Ljavax/crypto/Mac;->update([BII)V

    .line 771
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 774
    :cond_0
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 790
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 791
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 792
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;[B)Ljavax/crypto/Mac;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 742
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 743
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 744
    return-object p0
.end method
