.class public Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;
.super Ljava/lang/Object;
.source "ExportControlled.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ExportControlled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardSSLSocketFactory"
.end annotation


# instance fields
.field private final existingSocket:Ljava/net/Socket;

.field private final existingSocketFactory:Lcom/mysql/jdbc/SocketFactory;

.field private rawSocket:Ljavax/net/ssl/SSLSocket;

.field private final sslFact:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/mysql/jdbc/SocketFactory;Ljava/net/Socket;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

    .line 216
    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    .line 217
    iput-object p2, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 218
    iput-object p3, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocket:Ljava/net/Socket;

    .line 219
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
    .line 222
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    .line 223
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

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
    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

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
    .line 231
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->existingSocket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

    .line 232
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;->rawSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
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
    .line 236
    invoke-static {p1}, Lcom/mysql/jdbc/SocketMetadata$Helper;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result v0

    return v0
.end method
