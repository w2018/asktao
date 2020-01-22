.class Lcom/mysql/jdbc/DatabaseMetaData$10;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 6360
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$rows:Ljava/util/ArrayList;

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
    .line 6360
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$10;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v13, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 6363
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v1, v4, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v8

    .line 6366
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Extra LIKE \'%on update CURRENT_TIMESTAMP%\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6367
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6371
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v1, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/16 v6, 0x17

    invoke-interface {v1, v3, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_11

    .line 6373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHOW CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    invoke-virtual {v1, p1, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6378
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    invoke-interface {v1, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    move v0, v7

    .line 6379
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6380
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6381
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v6, "\n"

    invoke-direct {v10, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6383
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6384
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 6385
    const-string v5, "on update CURRENT_TIMESTAMP"

    invoke-static {v11, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-le v5, v13, :cond_1

    .line 6387
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 6389
    if-ne v5, v13, :cond_10

    .line 6390
    const-string v5, "\""

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v6, v5

    move v5, v4

    .line 6394
    :goto_1
    if-eq v6, v13, :cond_1

    .line 6397
    if-eqz v5, :cond_3

    .line 6398
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 6403
    :goto_2
    if-eq v5, v13, :cond_1

    .line 6404
    if-eqz v8, :cond_5

    .line 6405
    if-nez v0, :cond_4

    .line 6406
    const-string v12, " or"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6410
    :goto_3
    const-string v12, " Field=\'"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6411
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6412
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6460
    :catch_0
    move-exception v0

    .line 6461
    :goto_4
    :try_start_2
    const-string v2, "42S02"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 6462
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6465
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_2

    .line 6467
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 6465
    :cond_2
    :goto_6
    throw v0

    .line 6400
    :cond_3
    :try_start_4
    const-string v5, "\""

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    :cond_4
    move v0, v4

    .line 6408
    goto :goto_3

    .line 6414
    :cond_5
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v0, v3

    .line 6423
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 6424
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SHOW COLUMNS FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6425
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v6, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6426
    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6427
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6428
    if-eqz v8, :cond_8

    .line 6429
    const-string v4, " WHERE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6433
    :cond_8
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 6435
    :cond_9
    :goto_8
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6436
    if-nez v8, :cond_a

    const-string v0, "Field"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6437
    :cond_a
    new-instance v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v4, "Type"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Null"

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    .line 6438
    const/16 v0, 0x8

    new-array v4, v0, [[B

    .line 6440
    const/4 v0, 0x0

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 6442
    const/4 v0, 0x1

    const-string v5, "Field"

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v0

    .line 6444
    const/4 v0, 0x2

    iget-short v5, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v5}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v4, v0

    .line 6446
    const/4 v0, 0x3

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v0

    .line 6448
    const/4 v5, 0x4

    iget-object v0, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez v0, :cond_b

    move-object v0, v2

    :goto_9
    aput-object v0, v4, v5

    .line 6450
    const/4 v0, 0x5

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v6, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v0

    .line 6452
    const/4 v5, 0x6

    iget-object v0, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v0, :cond_c

    move-object v0, v2

    :goto_a
    aput-object v0, v4, v5

    .line 6454
    const/4 v0, 0x7

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v4, v0

    .line 6456
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$rows:Ljava/util/ArrayList;

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 6448
    :cond_b
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_9

    .line 6452
    :cond_c
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_a

    .line 6465
    :cond_d
    if-eqz v1, :cond_e

    .line 6467
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 6475
    :cond_e
    :goto_b
    return-void

    .line 6468
    :catch_1
    move-exception v1

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_b

    .line 6465
    :cond_f
    if-eqz v1, :cond_e

    .line 6467
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 6465
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    .line 6460
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_10
    move v6, v5

    move v5, v7

    goto/16 :goto_1

    :cond_11
    move-object v1, v2

    goto/16 :goto_7
.end method
