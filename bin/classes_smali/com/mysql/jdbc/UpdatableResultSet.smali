.class public Lcom/mysql/jdbc/UpdatableResultSet;
.super Lcom/mysql/jdbc/ResultSetImpl;
.source "UpdatableResultSet.java"


# static fields
.field static final STREAM_DATA_MARKER:[B


# instance fields
.field protected charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

.field private charEncoding:Ljava/lang/String;

.field private databasesUsedToTablesUsed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private defaultColumnValue:[[B

.field private deleteSQL:Ljava/lang/String;

.field private deleter:Lcom/mysql/jdbc/PreparedStatement;

.field private initializedCharConverter:Z

.field private insertSQL:Ljava/lang/String;

.field protected inserter:Lcom/mysql/jdbc/PreparedStatement;

.field private isUpdatable:Z

.field private notUpdatableReason:Ljava/lang/String;

.field private populateInserterWithDefaultValues:Z

.field private primaryKeyIndicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qualifiedAndQuotedTableName:Ljava/lang/String;

.field private quotedIdChar:Ljava/lang/String;

.field private refreshSQL:Ljava/lang/String;

.field private refresher:Lcom/mysql/jdbc/PreparedStatement;

.field private savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

.field private updateSQL:Ljava/lang/String;

.field protected updater:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "** STREAM DATA **"

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 2
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
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 52
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    .line 54
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    .line 59
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    .line 61
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 67
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    .line 74
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    .line 88
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    .line 92
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    .line 111
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPopulateInsertRowWithDefaultValues()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    .line 113
    return-void
.end method

.method private extractDefaultValues()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 523
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v5

    .line 524
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    .line 528
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 530
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "%"

    invoke-interface {v5, v0, v8, v1, v9}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 537
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    const-string v0, "COLUMN_NAME"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    const-string v1, "COLUMN_DEF"

    invoke-interface {v3, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 541
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 542
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 544
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aput-object v1, v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 548
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 549
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 548
    :cond_1
    throw v0

    :cond_2
    if-eqz v3, :cond_5

    .line 549
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    move-object v0, v4

    :goto_3
    move-object v3, v0

    .line 554
    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_0

    .line 556
    :cond_4
    return-void

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private getCharConverter()Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    if-nez v0, :cond_0

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    .line 787
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    return-object v0
.end method

.method private getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 763
    if-nez v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 770
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 773
    :goto_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 775
    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 777
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_0
    return-object v0

    .line 767
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private getQuotedIdChar()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    .line 816
    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 818
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 824
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    return-object v0

    .line 820
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1261
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1271
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1273
    if-ne v4, v5, :cond_8

    .line 1275
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1277
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_4

    .line 1278
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 1290
    :goto_0
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getvalueNeedsQuoting()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1291
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v3, v5, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    .line 1321
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    .line 1323
    invoke-interface {v1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    .line 1325
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    .line 1326
    :goto_2
    if-ge v0, v3, :cond_f

    .line 1327
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    .line 1329
    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1330
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1280
    :cond_4
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v0

    .line 1283
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    array-length v4, v0

    if-nez v4, :cond_6

    .line 1284
    :cond_5
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    goto :goto_0

    .line 1286
    :cond_6
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/UpdatableResultSet;->stripBinaryPrefix([B)[B

    move-result-object v0

    goto :goto_0

    .line 1293
    :cond_7
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v3, v5, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_1

    :cond_8
    move v3, v2

    .line 1297
    :goto_4
    if-ge v3, v4, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1301
    iget-boolean v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v5, :cond_9

    .line 1302
    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 1314
    :goto_5
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    .line 1297
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1304
    :cond_9
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v5

    .line 1307
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_a

    array-length v6, v5

    if-nez v6, :cond_b

    .line 1308
    :cond_a
    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    goto :goto_5

    .line 1310
    :cond_b
    invoke-direct {p0, v5}, Lcom/mysql/jdbc/UpdatableResultSet;->stripBinaryPrefix([B)[B

    move-result-object v0

    goto :goto_5

    .line 1332
    :cond_c
    add-int/lit8 v2, v0, 0x1

    :try_start_1
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1339
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_d

    .line 1341
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1339
    :cond_d
    :goto_6
    throw v0

    .line 1336
    :cond_e
    :try_start_3
    const-string v0, "UpdatableResultSet.12"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1339
    :cond_f
    if-eqz v1, :cond_10

    .line 1341
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1347
    :cond_10
    :goto_7
    return-void

    .line 1342
    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7
.end method

.method private resetInserter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1376
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    move v0, v1

    .line 1378
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 1378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1381
    :cond_0
    return-void
.end method

.method private setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V
    .locals 7
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
    const/4 v4, 0x0

    .line 471
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 472
    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p1, p2, v4}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 520
    :goto_0
    return-void

    .line 476
    :cond_0
    sparse-switch p5, :sswitch_data_0

    .line 516
    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    .line 478
    :sswitch_0
    invoke-virtual {p1, p2, v4}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 483
    :sswitch_1
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/ResultSetRow;->getInt(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_0

    .line 486
    :sswitch_2
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/ResultSetRow;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    .line 493
    :sswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p3, p4, v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 496
    :sswitch_4
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    invoke-virtual {p3, p4, v0, p0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    invoke-virtual {p1, p2, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    .line 499
    :sswitch_5
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v0, p3

    move v1, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 502
    :sswitch_6
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v0, p3

    move v1, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_0

    .line 508
    :sswitch_7
    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_2
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_7
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0xc -> :sswitch_3
        0x10 -> :sswitch_7
        0x5b -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_5
    .end sparse-switch
.end method

.method private stripBinaryPrefix([B)[B
    .locals 2
    .parameter

    .prologue
    .line 1460
    const-string v0, "_binary\'"

    const-string v1, "\'"

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public absolute(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->absolute(I)Z

    move-result v0

    return v0
.end method

.method public afterLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->afterLast()V

    .line 166
    return-void
.end method

.method public beforeFirst()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    .line 182
    return-void
.end method

.method public cancelRowUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 199
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 201
    :cond_0
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected checkRowPos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_0

    .line 213
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 215
    :cond_0
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected checkUpdatability()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 243
    :cond_2
    const-string v0, "UpdatableResultSet.43"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 408
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    if-lez v0, :cond_e

    .line 249
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v4

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 252
    if-nez v4, :cond_1a

    .line 253
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    .line 257
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 259
    const-string v0, "NotUpdatableReason.3"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_2
    move v6, v1

    .line 271
    :goto_3
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    if-ge v6, v4, :cond_c

    .line 272
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v5

    .line 273
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    .line 275
    if-nez v5, :cond_5

    .line 276
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v5

    .line 277
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    .line 280
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 282
    const-string v0, "NotUpdatableReason.3"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 287
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 288
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 289
    const-string v0, "NotUpdatableReason.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 295
    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 296
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 297
    const-string v0, "NotUpdatableReason.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    :cond_a
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 271
    :cond_b
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    .line 307
    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f

    .line 308
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 309
    const-string v0, "NotUpdatableReason.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 314
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 315
    const-string v0, "NotUpdatableReason.3"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 320
    :cond_f
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getStrictUpdates()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 321
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v4

    .line 324
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v4, v7, v6, v8}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 329
    :goto_4
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 330
    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-virtual {v5, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 335
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_10

    .line 337
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 335
    :cond_10
    :goto_6
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_11
    if-eqz v3, :cond_12

    .line 337
    :try_start_6
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    .line 346
    :cond_12
    :goto_7
    :try_start_7
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 348
    if-nez v4, :cond_13

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 350
    const-string v0, "NotUpdatableReason.5"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    move v3, v2

    .line 358
    :goto_8
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v6, v6

    if-ge v3, v6, :cond_15

    .line 359
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 360
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_14

    .line 364
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    .line 366
    if-eqz v6, :cond_14

    .line 367
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_14

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 370
    const-string v0, "NotUpdatableReason.6"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 358
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 379
    :cond_15
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 381
    iget-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v3, :cond_17

    .line 382
    if-le v4, v1, :cond_16

    .line 383
    const-string v0, "NotUpdatableReason.7"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 385
    :cond_16
    const-string v0, "NotUpdatableReason.4"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 395
    :cond_17
    if-nez v0, :cond_18

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 397
    const-string v0, "NotUpdatableReason.4"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 338
    :catch_1
    move-exception v1

    .line 339
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 338
    :catch_2
    move-exception v3

    .line 339
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_7

    .line 335
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_5

    :cond_19
    move v0, v2

    goto/16 :goto_2

    :cond_1a
    move-object v7, v0

    move-object v8, v4

    goto/16 :goto_1
.end method

.method public deleteRow()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 425
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 429
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v0, :cond_1

    .line 430
    const-string v0, "UpdatableResultSet.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 432
    const-string v0, "UpdatableResultSet.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    const-string v0, "UpdatableResultSet.3"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 435
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    const-string v0, "UpdatableResultSet.4"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 441
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 449
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 451
    if-ne v8, v3, :cond_8

    .line 452
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 453
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    .line 462
    :cond_7
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 463
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/RowData;->removeRow(I)V

    .line 466
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->previous()Z

    .line 467
    monitor-exit v7

    .line 468
    return-void

    :cond_8
    move v6, v1

    .line 455
    :goto_0
    if-ge v6, v8, :cond_7

    .line 456
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 457
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v2, v6, 0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public first()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->first()Z

    move-result v0

    return v0
.end method

.method protected generateStatements()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v1, :cond_0

    .line 585
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 586
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 588
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getQuotedIdChar()Ljava/lang/String;

    move-result-object v8

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 596
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 597
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    .line 603
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 612
    const/4 v5, 0x1

    .line 613
    const/4 v4, 0x1

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x3

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "<=>"

    .line 617
    :goto_1
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v6, v6

    if-ge v3, v6, :cond_11

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    const/4 v6, 0x0

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v3

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 624
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    .line 626
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    .line 627
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const/16 v15, 0x2e

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v3

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v15

    .line 635
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 642
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 643
    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    :cond_2
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-interface {v1, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/mysql/jdbc/UpdatableResultSet;->getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 678
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v7

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo()Z

    move-result v15

    if-eqz v15, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_d

    .line 687
    :goto_4
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 688
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v6

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo()Z

    move-result v15

    if-eqz v15, :cond_e

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_e

    .line 700
    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    move-object/from16 v16, v0

    aget-object v16, v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v16

    .line 703
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 704
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const/16 v16, 0x2e

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    :cond_6
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const/16 v6, 0x2e

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 721
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    if-nez v4, :cond_f

    .line 724
    const-string v7, " AND "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :goto_6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v7, "?"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_7
    if-eqz v5, :cond_10

    .line 735
    const/4 v5, 0x0

    .line 736
    const-string v7, "SET "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :goto_7
    const-string v7, "?"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string v6, "=?"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 599
    :cond_8
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 600
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    goto/16 :goto_0

    .line 615
    :cond_9
    const-string v2, "="

    goto/16 :goto_1

    .line 654
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v3

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v15

    .line 656
    if-eqz v15, :cond_4

    .line 657
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 663
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 664
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 665
    const/16 v7, 0x2c

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    :cond_b
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-interface {v1, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/mysql/jdbc/UpdatableResultSet;->getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    goto/16 :goto_3

    .line 684
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 697
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 726
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 738
    :cond_10
    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v7, ","

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v7, ","

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 751
    :cond_11
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public getConcurrency()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 808
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/16 v0, 0x3ef

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertRow()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 839
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_0

    .line 840
    const-string v0, "UpdatableResultSet.7"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 843
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 845
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->getLastInsertID()J

    move-result-wide v2

    .line 846
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v0

    .line 847
    new-array v5, v4, [[B

    .line 849
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    .line 850
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 851
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 859
    :goto_1
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 860
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v5, v0

    .line 861
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v7, v0, 0x1

    aget-object v8, v5, v0

    invoke-virtual {v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 849
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_2
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v6

    aput-object v6, v5, v0

    goto :goto_1

    .line 865
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 867
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0, v2, v0}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V

    .line 869
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/RowData;->addRow(Lcom/mysql/jdbc/ResultSetRow;)V

    .line 870
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    .line 871
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    return-void
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isLast()Z

    move-result v0

    return v0
.end method

.method isUpdatable()Z
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    return v0
.end method

.method public last()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->last()Z

    move-result v0

    return v0
.end method

.method public moveToCurrentRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 980
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v0, :cond_0

    .line 981
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 984
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v0, :cond_1

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 986
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 988
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    return-void
.end method

.method public moveToInsertRow()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x52

    const/4 v9, 0x7

    const/4 v1, 0x0

    .line 1009
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1010
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1014
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    .line 1020
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    if-eqz v0, :cond_2

    .line 1021
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->extractDefaultValues()V

    .line 1024
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    .line 1029
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v0

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1033
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1034
    new-array v0, v3, [[B

    .line 1035
    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1036
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 1038
    :goto_1
    if-ge v1, v3, :cond_7

    .line 1039
    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    if-nez v4, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, v1, 0x1

    const-string v5, "DEFAULT"

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 1041
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 1038
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1026
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    goto :goto_0

    .line 1043
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_6

    .line 1044
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v1

    .line 1046
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1066
    :pswitch_0
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 1070
    :goto_3
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    array-length v4, v4

    new-array v4, v4, [B

    .line 1071
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v5, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1072
    aput-object v4, v0, v1

    goto :goto_2

    .line 1053
    :pswitch_1
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    array-length v4, v4

    if-le v4, v9, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/16 v5, 0x43

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x55

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v4, v10, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-ne v4, v10, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    const/16 v5, 0x45

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    const/16 v5, 0x54

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_5

    .line 1058
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_3

    .line 1062
    :cond_5
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    goto/16 :goto_3

    .line 1074
    :cond_6
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 1075
    const/4 v4, 0x0

    aput-object v4, v0, v1

    goto/16 :goto_2

    .line 1079
    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    return-void

    .line 1046
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public next()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->next()Z

    move-result v0

    return v0
.end method

.method public prev()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->prev()Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->previous()Z

    move-result v0

    return v0
.end method

.method public realClose(Z)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1160
    if-nez v1, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 1165
    const/16 v17, 0x0

    .line 1167
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->useUsageAdvisor:Z

    if-eqz v1, :cond_1

    .line 1168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_1

    .line 1169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 1171
    const-string v1, "UpdatableResultSet.34"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/UpdatableResultSet;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v1, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v2, 0x0

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v4, :cond_6

    const-string v4, "N/A"

    :goto_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connectionId:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v7, :cond_7

    const/4 v7, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mysql/jdbc/UpdatableResultSet;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->pointOfOrigin:Ljava/lang/String;

    invoke-direct/range {v1 .. v16}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v1, :cond_2

    .line 1182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    move-object/from16 v1, v17

    .line 1189
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v2, :cond_3

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1197
    :cond_3
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v2, :cond_4

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1205
    :cond_4
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v2, :cond_5

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1212
    :cond_5
    :goto_6
    :try_start_5
    invoke-super/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->realClose(Z)V

    .line 1214
    if-eqz v1, :cond_8

    .line 1215
    throw v1

    .line 1217
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 1173
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v7

    goto :goto_2

    .line 1217
    :cond_8
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1208
    :catch_0
    move-exception v1

    goto :goto_6

    .line 1200
    :catch_1
    move-exception v1

    goto :goto_5

    .line 1192
    :catch_2
    move-exception v1

    goto :goto_4

    .line 1184
    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public refreshRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1242
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v0, :cond_0

    .line 1243
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1246
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v0, :cond_1

    .line 1247
    const-string v0, "UpdatableResultSet.8"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1249
    const-string v0, "UpdatableResultSet.9"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1250
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1251
    const-string v0, "UpdatableResultSet.10"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1252
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1253
    const-string v0, "UpdatableResultSet.11"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1256
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V

    .line 1257
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    return-void
.end method

.method public relative(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->relative(I)Z

    move-result v0

    return v0
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1417
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1435
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setResultSetConcurrency(I)V
    .locals 0
    .parameter

    .prologue
    .line 1446
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetConcurrency(I)V

    .line 1457
    return-void
.end method

.method protected syncUpdate()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1470
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v7, v0

    .line 1479
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    move v0, v1

    .line 1481
    :goto_0
    if-ge v0, v7, :cond_4

    .line 1482
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1484
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getvalueNeedsQuoting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1485
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 1481
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_1

    .line 1490
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 1494
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 1496
    const/4 v0, 0x1

    if-ne v8, v0, :cond_6

    .line 1497
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1498
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v2, v7, 0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    .line 1505
    :cond_5
    return-void

    :cond_6
    move v6, v1

    .line 1500
    :goto_2
    if-ge v6, v8, :cond_5

    .line 1501
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1502
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int v0, v7, v6

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    .line 1500
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1527
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1528
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1530
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 1538
    :goto_0
    monitor-exit v1

    .line 1539
    return-void

    .line 1535
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 1536
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V

    .line 1561
    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1580
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1581
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1583
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 1596
    :goto_0
    monitor-exit v1

    .line 1597
    return-void

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 1590
    if-nez p2, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1593
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1615
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V

    .line 1616
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1638
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1639
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1641
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 1654
    :goto_0
    monitor-exit v1

    .line 1655
    return-void

    .line 1646
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 1648
    if-nez p2, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1651
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1676
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V

    .line 1677
    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1685
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1686
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1688
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    .line 1701
    :goto_0
    monitor-exit v1

    .line 1702
    return-void

    .line 1693
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    .line 1695
    if-nez p2, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1698
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1709
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBlob(ILjava/sql/Blob;)V

    .line 1710
    return-void
.end method

.method public updateBoolean(IZ)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1729
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1730
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1732
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    .line 1741
    :goto_0
    monitor-exit v1

    .line 1742
    return-void

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    .line 1739
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1741
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1760
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBoolean(IZ)V

    .line 1761
    return-void
.end method

.method public updateByte(IB)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1779
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1780
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1781
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1783
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    .line 1792
    :goto_0
    monitor-exit v1

    .line 1793
    return-void

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    .line 1790
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1811
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateByte(IB)V

    .line 1812
    return-void
.end method

.method public updateBytes(I[B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1830
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1831
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1832
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1834
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 1843
    :goto_0
    monitor-exit v1

    .line 1844
    return-void

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 1841
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1862
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBytes(I[B)V

    .line 1863
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1885
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1886
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1888
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 1901
    :goto_0
    monitor-exit v1

    .line 1902
    return-void

    .line 1893
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 1895
    if-nez p2, :cond_2

    .line 1896
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1898
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1923
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 1924
    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1931
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1932
    if-nez p2, :cond_0

    .line 1933
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateNull(I)V

    .line 1937
    :goto_0
    monitor-exit v1

    .line 1938
    return-void

    .line 1935
    :cond_0
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    goto :goto_0

    .line 1937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1956
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1957
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 1958
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1960
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 1969
    :goto_0
    monitor-exit v1

    .line 1970
    return-void

    .line 1965
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 1967
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1969
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1988
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateDate(ILjava/sql/Date;)V

    .line 1989
    return-void
.end method

.method public updateDouble(ID)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2008
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2009
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2011
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    .line 2020
    :goto_0
    monitor-exit v1

    .line 2021
    return-void

    .line 2016
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    .line 2018
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2020
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2039
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateDouble(ID)V

    .line 2040
    return-void
.end method

.method public updateFloat(IF)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2059
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2060
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2062
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    .line 2071
    :goto_0
    monitor-exit v1

    .line 2072
    return-void

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    .line 2069
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2071
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2090
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateFloat(IF)V

    .line 2091
    return-void
.end method

.method public updateInt(II)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2110
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2111
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2113
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 2122
    :goto_0
    monitor-exit v1

    .line 2123
    return-void

    .line 2118
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 2120
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateInt(II)V

    .line 2142
    return-void
.end method

.method public updateLong(IJ)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2161
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2162
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2164
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2167
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 2173
    :goto_0
    monitor-exit v1

    .line 2174
    return-void

    .line 2169
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 2171
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2192
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateLong(IJ)V

    .line 2193
    return-void
.end method

.method public updateNull(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2210
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2211
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2213
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2222
    :goto_0
    monitor-exit v1

    .line 2223
    return-void

    .line 2218
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2220
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2239
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/UpdatableResultSet;->updateNull(I)V

    .line 2240
    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2258
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 2259
    return-void
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 2282
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2335
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    .line 2336
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2358
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    .line 2359
    return-void
.end method

.method protected updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V
    .locals 5
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
    .line 2295
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2296
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_2

    .line 2297
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2299
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2302
    :cond_0
    if-nez p3, :cond_1

    .line 2303
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 2316
    :goto_0
    monitor-exit v1

    .line 2317
    return-void

    .line 2305
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2308
    :cond_2
    if-nez p3, :cond_3

    .line 2309
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 2314
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2311
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2373
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v0, :cond_0

    .line 2374
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2377
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-eqz v0, :cond_2

    .line 2378
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 2379
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow()V

    .line 2380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2388
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2389
    monitor-exit v1

    .line 2390
    return-void

    .line 2381
    :cond_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v0, :cond_1

    .line 2382
    const-string v0, "UpdatableResultSet.44"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public updateShort(IS)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2408
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2409
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2410
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2412
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2415
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    .line 2421
    :goto_0
    monitor-exit v1

    .line 2422
    return-void

    .line 2417
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    .line 2419
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2440
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateShort(IS)V

    .line 2441
    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2459
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2460
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2461
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2463
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2481
    :goto_0
    monitor-exit v6

    .line 2482
    return-void

    .line 2468
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2470
    if-nez p2, :cond_2

    .line 2471
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2481
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2473
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getCharConverter()Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2474
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v8, p1, -0x1

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2477
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2500
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateString(ILjava/lang/String;)V

    .line 2501
    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2520
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2521
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2523
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 2532
    :goto_0
    monitor-exit v1

    .line 2533
    return-void

    .line 2528
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 2530
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2551
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateTime(ILjava/sql/Time;)V

    .line 2552
    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2571
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_1

    .line 2572
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2574
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 2583
    :goto_0
    monitor-exit v1

    .line 2584
    return-void

    .line 2579
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 2581
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2602
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateTimestamp(ILjava/sql/Timestamp;)V

    .line 2603
    return-void
.end method
