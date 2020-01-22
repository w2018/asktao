.class public Lcom/mysql/jdbc/PreparedStatement$BatchParams;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchParams"
.end annotation


# instance fields
.field public isNull:[Z

.field public isStream:[Z

.field public parameterStreams:[Ljava/io/InputStream;

.field public parameterStrings:[[B

.field public streamLengths:[I

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;[[B[Ljava/io/InputStream;[Z[I[Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 108
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 110
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    move-object v0, v1

    .line 112
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    .line 114
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    .line 120
    array-length v0, p2

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    .line 121
    array-length v0, p3

    new-array v0, v0, [Ljava/io/InputStream;

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    .line 122
    array-length v0, p4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 123
    array-length v0, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    .line 124
    array-length v0, p6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 125
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    array-length v1, p5

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    array-length v1, p6

    invoke-static {p6, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    return-void
.end method
