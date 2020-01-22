.class Lcom/mysql/jdbc/DatabaseMetaData$9;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$tableNamePat:Ljava/lang/String;

.field final synthetic val$types:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/SortedMap;)V
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
    .line 4635
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$stmt:Ljava/sql/Statement;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$tableNamePat:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

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
    .line 4635
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$9;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4636
    const-string v1, "information_schema"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mysql"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "performance_schema"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    move v7, v1

    .line 4639
    :goto_0
    const/4 v2, 0x0

    .line 4644
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$stmt:Ljava/sql/Statement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v1, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-interface {v1, v5, v6, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "SHOW TABLES FROM "

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " LIKE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$tableNamePat:Ljava/lang/String;

    const-string v5, "\'"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4656
    const/4 v6, 0x0

    .line 4657
    const/4 v5, 0x0

    .line 4658
    const/4 v4, 0x0

    .line 4659
    const/4 v3, 0x0

    .line 4660
    const/4 v2, 0x0

    .line 4662
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_6

    .line 4663
    :cond_1
    const/4 v5, 0x1

    .line 4664
    const/4 v4, 0x1

    .line 4665
    const/4 v3, 0x1

    .line 4666
    const/4 v2, 0x1

    .line 4667
    const/4 v1, 0x1

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    .line 4688
    :goto_2
    const/4 v2, 0x1

    .line 4689
    const/4 v1, 0x0

    .line 4691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-interface {v3, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_13

    .line 4694
    :try_start_2
    const-string v1, "table_type"

    invoke-interface {v8, v1}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 4695
    const/4 v1, 0x1

    move v9, v1

    move v10, v2

    .line 4710
    :cond_2
    :goto_3
    :try_start_3
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4711
    const/16 v1, 0xa

    new-array v0, v1, [[B

    move-object/from16 v16, v0

    .line 4712
    const/4 v2, 0x0

    if-nez p1, :cond_c

    const/4 v1, 0x0

    :goto_4
    aput-object v1, v16, v2

    .line 4713
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v16, v1

    .line 4714
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4715
    const/4 v1, 0x4

    const/4 v2, 0x0

    new-array v2, v2, [B

    aput-object v2, v16, v1

    .line 4716
    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v16, v1

    .line 4717
    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v16, v1

    .line 4718
    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-object v2, v16, v1

    .line 4719
    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-object v2, v16, v1

    .line 4720
    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v16, v1

    .line 4722
    if-eqz v9, :cond_f

    .line 4723
    invoke-interface {v8, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4725
    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$11;->$SwitchMap$com$mysql$jdbc$DatabaseMetaData$TableType:[I

    invoke-static {v1}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getTableTypeCompliantWith(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4779
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 4795
    :catchall_0
    move-exception v1

    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_3

    .line 4797
    :try_start_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 4795
    :cond_3
    :goto_6
    throw v1

    .line 4636
    :cond_4
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_0

    .line 4644
    :cond_5
    :try_start_5
    const-string v1, "SHOW FULL TABLES FROM "
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 4648
    :catch_0
    move-exception v1

    .line 4649
    :try_start_6
    const-string v3, "08S01"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4650
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4795
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 4669
    :cond_6
    const/4 v1, 0x0

    move/from16 v18, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    array-length v9, v9

    if-ge v6, v9, :cond_14

    .line 4670
    sget-object v9, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4671
    const/4 v5, 0x1

    .line 4669
    :cond_7
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 4673
    :cond_8
    sget-object v9, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4674
    const/4 v4, 0x1

    goto :goto_8

    .line 4676
    :cond_9
    sget-object v9, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4677
    const/4 v3, 0x1

    goto :goto_8

    .line 4679
    :cond_a
    sget-object v9, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4680
    const/4 v2, 0x1

    goto :goto_8

    .line 4682
    :cond_b
    sget-object v9, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$types:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v9

    if-eqz v9, :cond_7

    .line 4683
    const/4 v1, 0x1

    goto :goto_8

    .line 4696
    :catch_1
    move-exception v1

    .line 4702
    :try_start_8
    const-string v1, "Type"

    invoke-interface {v8, v1}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v2

    .line 4703
    const/4 v1, 0x1

    move v9, v1

    move v10, v2

    .line 4706
    goto/16 :goto_3

    .line 4704
    :catch_2
    move-exception v1

    .line 4705
    const/4 v1, 0x0

    move v9, v1

    move v10, v2

    goto/16 :goto_3

    .line 4712
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_4

    .line 4727
    :pswitch_0
    const/4 v2, 0x0

    .line 4728
    const/4 v1, 0x0

    .line 4730
    if-eqz v7, :cond_e

    if-eqz v13, :cond_e

    .line 4731
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4732
    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    const/4 v2, 0x1

    .line 4741
    :cond_d
    :goto_9
    if-eqz v2, :cond_2

    .line 4742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v2, v1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4735
    :cond_e
    if-nez v7, :cond_d

    if-eqz v15, :cond_d

    .line 4736
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4737
    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4738
    const/4 v2, 0x1

    goto :goto_9

    .line 4747
    :pswitch_1
    if-eqz v14, :cond_2

    .line 4748
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4755
    :pswitch_2
    if-eqz v13, :cond_2

    .line 4756
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4763
    :pswitch_3
    if-eqz v12, :cond_2

    .line 4764
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4771
    :pswitch_4
    if-eqz v11, :cond_2

    .line 4772
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4785
    :cond_f
    if-eqz v15, :cond_2

    .line 4787
    const/4 v1, 0x3

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v2

    aput-object v2, v16, v1

    .line 4788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->val$sortedRows:Ljava/util/SortedMap;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/DatabaseMetaData$9;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 4795
    :cond_10
    if-eqz v2, :cond_11

    .line 4797
    :try_start_a
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 4804
    :cond_11
    :goto_a
    return-void

    .line 4798
    :catch_3
    move-exception v2

    goto/16 :goto_6

    :catch_4
    move-exception v1

    goto :goto_a

    .line 4795
    :cond_12
    if-eqz v8, :cond_11

    .line 4797
    invoke-interface {v8}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_a

    :cond_13
    move v9, v1

    move v10, v2

    goto/16 :goto_3

    :cond_14
    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    goto/16 :goto_2

    .line 4725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
