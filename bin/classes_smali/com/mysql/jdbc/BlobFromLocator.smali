.class public Lcom/mysql/jdbc/BlobFromLocator;
.super Ljava/lang/Object;
.source "BlobFromLocator.java"

# interfaces
.implements Ljava/sql/Blob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;
    }
.end annotation


# instance fields
.field private blobColumnName:Ljava/lang/String;

.field private creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private numColsInResultSet:I

.field private numPrimaryKeys:I

.field private primaryKeyColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryKeyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private quotedId:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V
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
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    .line 56
    iput v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    .line 66
    iput-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 67
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    iput v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    .line 70
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    .line 72
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    move v0, v1

    .line 76
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    if-ge v0, v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v3, v3, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v3, v3, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/BlobFromLocator;->notEnoughInformationInQuery()V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    .line 101
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-nez v0, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/mysql/jdbc/BlobFromLocator;->notEnoughInformationInQuery()V

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 111
    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    .line 132
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    .line 133
    return-void

    .line 123
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method private notEnoughInformationInQuery()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "Emulated BLOB locators must come from a ResultSet with only one table selected, and all primary keys selected"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method createGetBytesStatement()Ljava/sql/PreparedStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "SELECT SUBSTRING("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v0, ") FROM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v0, " WHERE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v0, " = ?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v0, :cond_0

    .line 485
    const-string v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v0, " = ?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    .line 657
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    .line 658
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    .line 659
    return-void
.end method

.method public getBinaryStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;-><init>(Lcom/mysql/jdbc/BlobFromLocator;)V

    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLocatorFetchBufferSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;-><init>(Lcom/mysql/jdbc/BlobFromLocator;JJ)V

    return-object v0
.end method

.method public getBytes(JI)[B
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/BlobFromLocator;->createGetBytesStatement()Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 253
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 255
    if-eqz v1, :cond_0

    .line 257
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 257
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    :cond_1
    :goto_1
    throw v0

    .line 258
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method getBytesInternal(Ljava/sql/PreparedStatement;JI)[B
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
    .line 495
    const/4 v2, 0x0

    .line 499
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 500
    const/4 v1, 0x2

    invoke-interface {p1, v1, p4}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 502
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v3, v1, :cond_0

    .line 503
    add-int/lit8 v4, v3, 0x3

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 502
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 506
    :cond_0
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 508
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(IZ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 514
    if-eqz v2, :cond_1

    .line 516
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    :cond_1
    :goto_1
    return-object v1

    .line 512
    :cond_2
    :try_start_2
    const-string v1, "BLOB data not found! Did primary keys change?"

    const-string v3, "S1000"

    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    .line 516
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 514
    :cond_3
    :goto_2
    throw v1

    .line 517
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "SELECT LENGTH("

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v0, ") FROM "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v0, " = ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v0, :cond_0

    .line 291
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, " = ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 300
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v3, v0, :cond_1

    .line 301
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 300
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 304
    :cond_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 306
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/sql/ResultSet;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 312
    if-eqz v2, :cond_2

    .line 314
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 322
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 324
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 307
    :cond_3
    :goto_3
    return-wide v3

    .line 310
    :cond_4
    :try_start_4
    const-string v0, "BLOB data not found! Did primary keys change?"

    const-string v3, "S1000"

    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_5

    .line 314
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 322
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 324
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 312
    :cond_6
    :goto_6
    throw v0

    .line 315
    :catch_0
    move-exception v2

    goto :goto_5

    .line 325
    :catch_1
    move-exception v1

    goto :goto_6

    .line 315
    :catch_2
    move-exception v0

    goto :goto_2

    .line 325
    :catch_3
    move-exception v0

    goto :goto_3

    .line 312
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public position(Ljava/sql/Blob;J)J
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/sql/Blob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/BlobFromLocator;->position([BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public position([BJ)J
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "SELECT LOCATE("

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    const-string v0, "?, "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    const-string v0, ") FROM "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v0, " = ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v0, :cond_0

    .line 373
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v0, " = ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 380
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 381
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1, v0, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 383
    :goto_1
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v3, v0, :cond_1

    .line 384
    add-int/lit8 v4, v3, 0x2

    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 383
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 387
    :cond_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 389
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/sql/ResultSet;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 395
    if-eqz v2, :cond_2

    .line 397
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 405
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 407
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 390
    :cond_3
    :goto_3
    return-wide v3

    .line 393
    :cond_4
    :try_start_4
    const-string v0, "BLOB data not found! Did primary keys change?"

    const-string v3, "S1000"

    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_5

    .line 397
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 405
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 407
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 395
    :cond_6
    :goto_6
    throw v0

    .line 398
    :catch_0
    move-exception v2

    goto :goto_5

    .line 408
    :catch_1
    move-exception v1

    goto :goto_6

    .line 398
    :catch_2
    move-exception v0

    goto :goto_2

    .line 408
    :catch_3
    move-exception v0

    goto :goto_3

    .line 395
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public setBinaryStream(J)Ljava/io/OutputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setBytes(J[B)I
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/BlobFromLocator;->setBytes(J[BII)I

    move-result v0

    return v0
.end method

.method public setBytes(J[BII)I
    .locals 7
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
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 164
    const/4 v3, 0x0

    .line 166
    add-int v0, p4, p5

    array-length v1, p3

    if-le v0, v1, :cond_0

    .line 167
    array-length v0, p3

    sub-int p5, v0, p4

    .line 170
    :cond_0
    new-array v5, p5, [B

    .line 171
    invoke-static {p3, p4, v5, v4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, " SET "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v0, " = INSERT("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v0, ", ?) WHERE "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v0, " = ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 189
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v0, :cond_1

    .line 190
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v0, " = ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 199
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1, v0, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    move v3, v4

    .line 201
    :goto_1
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v3, v0, :cond_2

    .line 202
    add-int/lit8 v4, v3, 0x2

    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 201
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 205
    :cond_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    .line 207
    if-eq v0, v2, :cond_4

    .line 208
    const-string v0, "BLOB data not found! Did primary keys change?"

    const-string v2, "S1000"

    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 213
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    :cond_3
    :goto_3
    throw v0

    :cond_4
    if-eqz v1, :cond_5

    .line 213
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 214
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 211
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method public truncate(J)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 421
    const/4 v3, 0x0

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v0, " SET "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v0, " = LEFT("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 432
    const-string v0, ") WHERE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v0, " = ?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 437
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v0, :cond_0

    .line 438
    const-string v0, " AND "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v0, " = ?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 445
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    move v3, v4

    .line 447
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v3, v0, :cond_1

    .line 448
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 447
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 451
    :cond_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    .line 453
    if-eq v0, v2, :cond_3

    .line 454
    const-string v0, "BLOB data not found! Did primary keys change?"

    const-string v2, "S1000"

    iget-object v3, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 459
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 457
    :cond_2
    :goto_3
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    .line 459
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 467
    :cond_4
    :goto_4
    return-void

    .line 460
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 457
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method
