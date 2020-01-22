.class Lcom/mysql/jdbc/DatabaseMetaData$3;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$foreignCatalog:Ljava/lang/String;

.field final synthetic val$foreignSchema:Ljava/lang/String;

.field final synthetic val$foreignTable:Ljava/lang/String;

.field final synthetic val$primaryCatalog:Ljava/lang/String;

.field final synthetic val$primarySchema:Ljava/lang/String;

.field final synthetic val$primaryTable:Ljava/lang/String;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$tuples:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
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
    .line 2683
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$stmt:Ljava/sql/Statement;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignTable:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryTable:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    iput-object p8, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    iput-object p9, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    iput-object p10, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$tuples:Ljava/util/ArrayList;

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
    .line 2683
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$3;->forEach(Ljava/lang/String;)V

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
    .line 2685
    const/4 v1, 0x0

    .line 2692
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/16 v4, 0x32

    invoke-interface {v0, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2693
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 2702
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2703
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2711
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2712
    const-string v0, "Type"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2714
    if-eqz v0, :cond_0

    const-string v2, "innodb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SUPPORTS_FK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2715
    :cond_1
    const-string v0, "Comment"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2717
    if-eqz v0, :cond_0

    .line 2718
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v2, ";"

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2720
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2721
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2726
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 2728
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-result-object v7

    .line 2730
    const/4 v0, 0x0

    .line 2732
    iget-object v2, v7, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2733
    iget-object v2, v7, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v0

    .line 2735
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2736
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v10, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2740
    const/16 v0, 0xe

    new-array v11, v0, [[B

    .line 2741
    const/4 v12, 0x4

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    aput-object v0, v11, v12

    .line 2742
    const/4 v12, 0x5

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    aput-object v0, v11, v12

    .line 2743
    const-string v0, "Name"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2745
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_3

    .line 2749
    const/4 v12, 0x6

    iget-object v13, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v13, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v11, v12

    .line 2751
    const/4 v0, 0x7

    iget-object v12, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v12, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v11, v0

    .line 2752
    const/4 v10, 0x0

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_4
    aput-object v0, v11, v10

    .line 2753
    const/4 v10, 0x1

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    aput-object v0, v11, v10

    .line 2756
    iget-object v0, v7, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2760
    const/4 v0, 0x2

    iget-object v10, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v11, v0

    .line 2761
    const/4 v10, 0x3

    iget-object v12, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v13, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, v13, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v11, v10

    .line 2762
    const/16 v0, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    aput-object v10, v11, v0

    .line 2764
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getForeignKeyActions(Ljava/lang/String;)[I

    move-result-object v0

    .line 2766
    const/16 v10, 0x9

    const/4 v12, 0x1

    aget v12, v0, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v11, v10

    .line 2767
    const/16 v10, 0xa

    const/4 v12, 0x0

    aget v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v11, v10

    .line 2768
    const/16 v0, 0xb

    const/4 v10, 0x0

    aput-object v10, v11, v0

    .line 2769
    const/16 v0, 0xc

    const/4 v10, 0x0

    aput-object v10, v11, v0

    .line 2770
    const/16 v0, 0xd

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    aput-object v10, v11, v0

    .line 2771
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$tuples:Ljava/util/ArrayList;

    new-instance v10, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v12, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v12}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2772
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 2773
    goto/16 :goto_1

    .line 2695
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SHOW TABLE STATUS FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2696
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    goto/16 :goto_0

    .line 2741
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_2

    .line 2742
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_3

    .line 2752
    :cond_7
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_4

    .line 2753
    :cond_8
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto/16 :goto_5

    .line 2780
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    .line 2782
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2780
    :cond_9
    :goto_6
    throw v0

    :cond_a
    if-eqz v1, :cond_b

    .line 2782
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2790
    :cond_b
    :goto_7
    return-void

    .line 2783
    :catch_0
    move-exception v1

    .line 2784
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_6

    .line 2783
    :catch_1
    move-exception v0

    .line 2784
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_7
.end method
