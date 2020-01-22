.class Lcom/mysql/jdbc/NetworkResources;
.super Ljava/lang/Object;
.source "NetworkResources.java"


# instance fields
.field private final mysqlConnection:Ljava/net/Socket;

.field private final mysqlInput:Ljava/io/InputStream;

.field private final mysqlOutput:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    .line 38
    iput-object p2, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlInput:Ljava/io/InputStream;

    .line 39
    iput-object p3, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlOutput:Ljava/io/OutputStream;

    .line 40
    return-void
.end method


# virtual methods
.method protected final forceClose()V
    .locals 2

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-nez v0, :cond_3

    .line 72
    :try_start_5
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 83
    :cond_3
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 89
    :cond_4
    :goto_2
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v1

    if-nez v1, :cond_5

    .line 54
    :try_start_8
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 52
    :cond_5
    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    .line 70
    :catchall_1
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    move-result v1

    if-nez v1, :cond_6

    .line 72
    :try_start_b
    iget-object v1, p0, Lcom/mysql/jdbc/NetworkResources;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 70
    :cond_6
    :goto_4
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 78
    :catch_1
    move-exception v0

    goto :goto_1

    .line 55
    :catch_2
    move-exception v0

    goto :goto_0

    .line 73
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 55
    :catch_5
    move-exception v1

    goto :goto_3

    .line 86
    :catch_6
    move-exception v0

    goto :goto_2
.end method
