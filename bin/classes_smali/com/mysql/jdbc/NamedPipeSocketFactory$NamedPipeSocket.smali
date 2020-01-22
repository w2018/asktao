.class Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;
.super Ljava/net/Socket;
.source "NamedPipeSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/NamedPipeSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NamedPipeSocket"
.end annotation


# instance fields
.field private isClosed:Z

.field private namedPipeFile:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->isClosed:Z

    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NamedPipeSocketFactory.4"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->namedPipeFile:Ljava/io/RandomAccessFile;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->namedPipeFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;

    iget-object v2, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->namedPipeFile:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;-><init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;

    iget-object v2, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->namedPipeFile:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;-><init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;->isClosed:Z

    return v0
.end method
