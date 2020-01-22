.class public Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;
.super Ljava/lang/Object;
.source "LoadBalancedAutoCommitInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private conn:Lcom/mysql/jdbc/ConnectionImpl;

.field private countStatements:Z

.field private matchingAfterStatementCount:I

.field private matchingAfterStatementRegex:Ljava/lang/String;

.field private matchingAfterStatementThreshold:I

.field private proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 31
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 36
    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    .line 55
    const-string v0, "loadBalanceAutoCommitStatementThreshold"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    const-string v0, "loadBalanceAutoCommitStatementRegex"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_1
    return-void

    .line 65
    :cond_0
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method pauseCounters()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    .line 131
    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 3
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
    const/4 v2, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    if-eqz v0, :cond_0

    const-string v0, "SET"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SHOW"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object p3

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iput v2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    .line 91
    :goto_1
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    if-nez v1, :cond_3

    .line 92
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    .line 95
    check-cast v0, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    :cond_5
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 111
    :cond_6
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    iget v1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I

    if-lt v0, v1, :cond_0

    .line 112
    iput v2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
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
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method resumeCounters()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->countStatements:Z

    .line 135
    return-void
.end method
