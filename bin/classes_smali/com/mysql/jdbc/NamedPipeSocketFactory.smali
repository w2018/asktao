.class public Lcom/mysql/jdbc/NamedPipeSocketFactory;
.super Ljava/lang/Object;
.source "NamedPipeSocketFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;,
        Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;,
        Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;
    }
.end annotation


# static fields
.field public static final NAMED_PIPE_PROP_NAME:Ljava/lang/String; = "namedPipePath"


# instance fields
.field private namedPipeSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public afterHandshake()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public beforeHandshake()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v0, "namedPipePath"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-nez v0, :cond_1

    .line 214
    const-string v0, "\\\\.\\pipe\\MySQL"

    .line 219
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;

    invoke-direct {v1, p0, v0}, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;-><init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    .line 221
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 216
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NamedPipeSocketFactory.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "namedPipePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NamedPipeSocketFactory.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method
