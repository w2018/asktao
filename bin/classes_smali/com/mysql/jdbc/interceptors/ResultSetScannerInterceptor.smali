.class public Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;
.super Ljava/lang/Object;
.source "ResultSetScannerInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# instance fields
.field protected regexP:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
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
    .line 44
    const-string v0, "resultSetScannerRegex"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "resultSetScannerRegex must be configured, and must be > 0 characters"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->regexP:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Can\'t use configured regex due to underlying exception."

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    throw v1
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 4
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
    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    aput-object v3, v1, v2

    new-instance v2, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;

    invoke-direct {v2, p0, p3}, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;-><init>(Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-object v0
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
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
