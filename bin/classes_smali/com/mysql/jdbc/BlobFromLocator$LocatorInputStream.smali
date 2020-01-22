.class Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;
.super Ljava/io/InputStream;
.source "BlobFromLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/BlobFromLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocatorInputStream"
.end annotation


# instance fields
.field currentPositionInBlob:J

.field length:J

.field pStmt:Ljava/sql/PreparedStatement;

.field final synthetic this$0:Lcom/mysql/jdbc/BlobFromLocator;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/BlobFromLocator;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 533
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 527
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 529
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 534
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 535
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->createGetBytesStatement()Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 536
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/BlobFromLocator;JJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 539
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 527
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 529
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 540
    add-long v0, p2, p4

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 541
    iput-wide p2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 542
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v0

    .line 544
    add-long v2, p2, p4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 545
    const-string v2, "Blob.invalidStreamLength"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 550
    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 551
    const-string v0, "Blob.invalidStreamPos"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 555
    :cond_1
    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 556
    const-string v0, "Blob.invalidStreamPos"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 559
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 652
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const-wide/16 v7, 0x1

    .line 563
    iget-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long/2addr v1, v7

    iget-wide v3, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    iget-wide v3, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long v5, v3, v7

    iput-wide v5, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long/2addr v3, v7

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v1

    .line 570
    if-eqz v1, :cond_0

    .line 574
    const/4 v0, 0x0

    aget-byte v0, v1, v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([B)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x1

    const/4 v0, -0x1

    .line 615
    iget-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long/2addr v1, v5

    iget-wide v3, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    iget-wide v3, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long/2addr v3, v5

    array-length v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v1

    .line 622
    if-eqz v1, :cond_0

    .line 626
    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget-wide v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    array-length v0, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 630
    array-length v0, v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x1

    const/4 v0, -0x1

    .line 587
    iget-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long/2addr v1, v5

    iget-wide v3, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    iget-wide v3, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p3}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v1

    .line 594
    if-eqz v1, :cond_0

    .line 598
    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iget-wide v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    array-length v0, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 602
    array-length v0, v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
