.class public Lorg/apache/commons/codec/binary/Base64OutputStream;
.super Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "Base64OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 91
    return-void
.end method
