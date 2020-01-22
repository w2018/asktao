.class public Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;
.super Ljava/lang/Object;
.source "ErrorReportingExceptionInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/ExceptionInterceptor;


# instance fields
.field private fabricHaGroup:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "HOST"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;->hostname:Ljava/lang/String;

    .line 64
    const-string v0, "PORT"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;->port:Ljava/lang/String;

    .line 65
    const-string v0, "connectionAttributes"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "^.*\\bfabricHaGroup:(.+)\\b.*$"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;->fabricHaGroup:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    move-object v0, p2

    .line 47
    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    .line 50
    const-class v1, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v6

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;->fabricHaGroup:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;->hostname:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/fabric/jdbc/ErrorReportingExceptionInterceptor;->port:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/SQLException;
    :try_end_0
    .catch Lcom/mysql/fabric/FabricCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "Failed to report error to Fabric."

    const-string v2, "08S01"

    invoke-static {v1, v2, v0, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    goto :goto_0
.end method
