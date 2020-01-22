.class Lcom/mysql/jdbc/DatabaseMetaData$2;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$colPattern:Ljava/lang/String;

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$schemaPattern:Ljava/lang/String;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$tableNamePattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
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
    .line 2339
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$rows:Ljava/util/ArrayList;

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
    .line 2339
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$2;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2345
    const/4 v1, 0x0

    .line 2348
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    const-string v4, "%"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 2350
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2351
    const-string v2, "TABLE_NAME"

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2352
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2355
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 2357
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2355
    :cond_0
    :goto_1
    throw v0

    .line 2366
    :cond_1
    const/4 v1, 0x0

    .line 2369
    :try_start_2
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 2371
    :goto_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2372
    const-string v2, "TABLE_NAME"

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2373
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 2376
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 2378
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2376
    :cond_2
    :goto_3
    throw v0

    .line 2355
    :cond_3
    if-eqz v1, :cond_4

    .line 2357
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2388
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2390
    const/4 v1, 0x0

    .line 2393
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "SHOW "

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2395
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2396
    const-string v2, "FULL "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    :cond_6
    const-string v2, "COLUMNS FROM "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    const-string v2, " FROM "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    const-string v2, " LIKE "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    const-string v3, "\'"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    const/4 v3, 0x0

    .line 2410
    const/4 v2, 0x0

    .line 2412
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2413
    const/4 v3, 0x1

    .line 2415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SHOW "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2417
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v4, v5, v8, v9}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2418
    const-string v4, "FULL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    :cond_7
    const-string v4, "COLUMNS FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    const-string v4, " FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 2430
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2432
    const/4 v4, 0x1

    .line 2434
    :goto_6
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2435
    const-string v5, "Field"

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2437
    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 2438
    goto :goto_6

    :cond_8
    move-object v4, v2

    move v5, v3

    .line 2441
    :goto_7
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v2

    .line 2443
    const/4 v3, 0x1

    .line 2445
    :goto_8
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2446
    const/16 v1, 0x18

    new-array v7, v1, [[B

    .line 2447
    const/4 v1, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v8, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v1

    .line 2448
    const/4 v1, 0x1

    const/4 v8, 0x0

    aput-object v8, v7, v1

    .line 2451
    const/4 v1, 0x2

    iget-object v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v1

    .line 2452
    const/4 v1, 0x3

    const-string v8, "Field"

    invoke-interface {v2, v8}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v1

    .line 2454
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v9, "Type"

    invoke-interface {v2, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Null"

    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v1, v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    const/4 v1, 0x4

    iget-short v9, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v9}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v7, v1

    .line 2459
    const/4 v1, 0x5

    iget-object v9, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1

    .line 2461
    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 2462
    const/4 v1, 0x6

    const/4 v9, 0x0

    aput-object v9, v7, v1

    .line 2477
    :goto_9
    const/4 v1, 0x7

    iget-object v9, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1

    .line 2478
    const/16 v9, 0x8

    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    :goto_a
    aput-object v1, v7, v9

    .line 2479
    const/16 v1, 0x9

    iget-object v9, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1

    .line 2480
    const/16 v1, 0xa

    iget-object v9, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2489
    :try_start_7
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v1, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v1, v9, v10, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2490
    const/16 v1, 0xb

    const-string v9, "Comment"

    invoke-interface {v2, v9}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2499
    :goto_b
    const/16 v1, 0xc

    :try_start_8
    const-string v9, "Default"

    invoke-interface {v2, v9}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1

    .line 2501
    const/16 v1, 0xd

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/16 v11, 0x30

    aput-byte v11, v9, v10

    aput-object v9, v7, v1

    .line 2502
    const/16 v1, 0xe

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/16 v11, 0x30

    aput-byte v11, v9, v10

    aput-object v9, v7, v1

    .line 2504
    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v9, "CHAR"

    invoke-static {v1, v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_9

    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v9, "BLOB"

    invoke-static {v1, v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_9

    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v9, "TEXT"

    invoke-static {v1, v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_9

    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v9, "BINARY"

    invoke-static {v1, v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_14

    .line 2508
    :cond_9
    const/16 v1, 0xf

    const/4 v9, 0x6

    aget-object v9, v7, v9

    aput-object v9, v7, v1

    .line 2514
    :goto_c
    if-nez v5, :cond_15

    .line 2515
    const/16 v9, 0x10

    add-int/lit8 v1, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v7, v9

    move v3, v1

    .line 2528
    :goto_d
    const/16 v1, 0x11

    iget-object v9, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v1

    .line 2531
    const/16 v1, 0x12

    const/4 v8, 0x0

    aput-object v8, v7, v1

    .line 2532
    const/16 v1, 0x13

    const/4 v8, 0x0

    aput-object v8, v7, v1

    .line 2533
    const/16 v1, 0x14

    const/4 v8, 0x0

    aput-object v8, v7, v1

    .line 2534
    const/16 v1, 0x15

    const/4 v8, 0x0

    aput-object v8, v7, v1

    .line 2536
    const/16 v1, 0x16

    iget-object v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v1

    .line 2538
    const-string v1, "Extra"

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2540
    if-eqz v8, :cond_a

    .line 2541
    const/16 v9, 0x16

    iget-object v10, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v1, "auto_increment"

    invoke-static {v8, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_17

    const-string v1, "YES"

    :goto_e
    invoke-virtual {v10, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v7, v9

    .line 2542
    const/16 v9, 0x17

    iget-object v10, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v1, "generated"

    invoke-static {v8, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_18

    const-string v1, "YES"

    :goto_f
    invoke-virtual {v10, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v7, v9

    .line 2545
    :cond_a
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$rows:Ljava/util/ArrayList;

    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v9, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_8

    .line 2548
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_10
    if-eqz v1, :cond_b

    .line 2550
    :try_start_9
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 2548
    :cond_b
    :goto_11
    throw v0

    .line 2464
    :cond_c
    :try_start_a
    const-string v1, "Collation"

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2465
    const/4 v1, 0x1

    .line 2466
    if-eqz v9, :cond_f

    const-string v10, "TEXT"

    iget-object v11, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "TINYTEXT"

    iget-object v11, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "MEDIUMTEXT"

    iget-object v11, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2468
    :cond_d
    const-string v10, "ucs2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-gt v10, v11, :cond_e

    const-string v10, "utf16"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_10

    .line 2469
    :cond_e
    const/4 v1, 0x2

    .line 2474
    :cond_f
    :goto_12
    const/4 v9, 0x6

    const/4 v10, 0x1

    if-ne v1, v10, :cond_11

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    :goto_13
    aput-object v1, v7, v9

    goto/16 :goto_9

    .line 2470
    :cond_10
    const-string v10, "utf32"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_f

    .line 2471
    const/4 v1, 0x4

    goto :goto_12

    .line 2474
    :cond_11
    iget-object v10, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_13

    .line 2478
    :cond_12
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v1

    goto/16 :goto_a

    .line 2492
    :cond_13
    const/16 v1, 0xb

    :try_start_b
    const-string v9, "Extra"

    invoke-interface {v2, v9}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_b

    .line 2494
    :catch_0
    move-exception v1

    .line 2495
    const/16 v1, 0xb

    const/4 v9, 0x0

    :try_start_c
    new-array v9, v9, [B

    aput-object v9, v7, v1

    goto/16 :goto_b

    .line 2510
    :cond_14
    const/16 v1, 0xf

    const/4 v9, 0x0

    aput-object v9, v7, v1

    goto/16 :goto_c

    .line 2517
    :cond_15
    const-string v1, "Field"

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2518
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2520
    if-eqz v1, :cond_16

    .line 2521
    const/16 v9, 0x10

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, v7, v9

    goto/16 :goto_d

    .line 2523
    :cond_16
    const-string v0, "Can not find column in full column list to determine true ordinal position."

    const-string v1, "S1000"

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2541
    :cond_17
    const-string v1, "NO"

    goto/16 :goto_e

    .line 2542
    :cond_18
    const-string v1, "NO"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_f

    .line 2558
    :cond_19
    return-void

    .line 2358
    :catch_1
    move-exception v1

    .line 2359
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 2358
    :catch_2
    move-exception v1

    .line 2359
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 2551
    :catch_3
    move-exception v1

    goto/16 :goto_11

    .line 2548
    :cond_1a
    if-eqz v2, :cond_5

    .line 2550
    :try_start_d
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_5

    .line 2551
    :catch_4
    move-exception v0

    goto/16 :goto_5

    .line 2379
    :catch_5
    move-exception v1

    .line 2380
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 2376
    :cond_1b
    if-eqz v1, :cond_4

    .line 2378
    :try_start_e
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_4

    .line 2379
    :catch_6
    move-exception v1

    .line 2380
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 2548
    :catchall_3
    move-exception v0

    goto/16 :goto_10

    :cond_1c
    move-object v4, v2

    move v5, v3

    goto/16 :goto_7
.end method
