.class public Lcom/mysql/jdbc/MysqlSavepoint;
.super Ljava/lang/Object;
.source "MysqlSavepoint.java"

# interfaces
.implements Ljava/sql/Savepoint;


# instance fields
.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private savepointName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/mysql/jdbc/MysqlSavepoint;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const-string v0, "Savepoint name can not be NULL or empty"

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlSavepoint;->savepointName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/mysql/jdbc/MysqlSavepoint;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 89
    return-void
.end method

.method private static getUniqueId()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5f

    .line 36
    new-instance v0, Ljava/rmi/server/UID;

    invoke-direct {v0}, Ljava/rmi/server/UID;-><init>()V

    invoke-virtual {v0}, Ljava/rmi/server/UID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSavepointId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "Only named savepoints are supported."

    const-string v1, "S1C00"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlSavepoint;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlSavepoint;->savepointName:Ljava/lang/String;

    return-object v0
.end method
