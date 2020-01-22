.class Lcom/mysql/jdbc/DatabaseMetaData$6;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field final synthetic val$sortedRows:Ljava/util/SortedMap;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$unique:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;ZLjava/util/SortedMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3343
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$stmt:Ljava/sql/Statement;

    iput-boolean p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$unique:Z

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V

    return-void
.end method


# virtual methods
.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3343
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$6;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/32 v9, 0x7fffffff

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3348
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SHOW INDEX FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3349
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$table:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3354
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 3367
    :cond_0
    :goto_0
    if-eqz v6, :cond_8

    :try_start_2
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3368
    const/16 v0, 0xe

    new-array v12, v0, [[B

    .line 3369
    const/4 v1, 0x0

    if-nez p1, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    aput-object v0, v12, v1

    .line 3370
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v12, v0

    .line 3371
    const/4 v0, 0x2

    const-string v1, "Table"

    invoke-interface {v6, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3373
    const-string v0, "Non_unique"

    invoke-interface {v6, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v11, v7

    .line 3375
    :goto_2
    const/4 v1, 0x3

    if-nez v11, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    :goto_3
    aput-object v0, v12, v1

    .line 3376
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [B

    aput-object v1, v12, v0

    .line 3377
    const/4 v0, 0x5

    const-string v1, "Key_name"

    invoke-interface {v6, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3378
    const/4 v3, 0x3

    .line 3379
    const/4 v0, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3380
    const/4 v0, 0x7

    const-string v1, "Seq_in_index"

    invoke-interface {v6, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3381
    const/16 v0, 0x8

    const-string v1, "Column_name"

    invoke-interface {v6, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3382
    const/16 v0, 0x9

    const-string v1, "Collation"

    invoke-interface {v6, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3384
    const-string v0, "Cardinality"

    invoke-interface {v6, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3387
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v2

    if-nez v2, :cond_1

    cmp-long v2, v0, v9

    if-lez v2, :cond_1

    move-wide v0, v9

    .line 3391
    :cond_1
    const/16 v2, 0xa

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v12, v2

    .line 3392
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 3393
    const/16 v0, 0xc

    const/4 v1, 0x0

    aput-object v1, v12, v0

    .line 3395
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    if-nez v11, :cond_6

    move v2, v7

    :goto_4
    const-string v4, "Key_name"

    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Seq_in_index"

    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;ZSLjava/lang/String;S)V

    .line 3398
    iget-boolean v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$unique:Z

    if-eqz v1, :cond_7

    .line 3399
    if-eqz v11, :cond_0

    .line 3400
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v12, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v1, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 3408
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_2

    .line 3410
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3408
    :cond_2
    :goto_6
    throw v0

    .line 3355
    :catch_0
    move-exception v0

    .line 3356
    :try_start_4
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    .line 3359
    const-string v3, "42S02"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3361
    const/16 v3, 0x47a

    if-eq v2, v3, :cond_a

    .line 3362
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3408
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 3369
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move v11, v8

    .line 3373
    goto/16 :goto_2

    .line 3375
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v2, "false"

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    move v2, v8

    .line 3395
    goto :goto_4

    .line 3404
    :cond_7
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v12, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v1, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 3408
    :cond_8
    if-eqz v6, :cond_9

    .line 3410
    :try_start_6
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3417
    :cond_9
    :goto_7
    return-void

    .line 3411
    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_a
    move-object v6, v1

    goto/16 :goto_0
.end method
