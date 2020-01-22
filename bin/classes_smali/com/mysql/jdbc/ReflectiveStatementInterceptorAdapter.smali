.class public Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;
.super Ljava/lang/Object;
.source "ReflectiveStatementInterceptorAdapter.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private final toProxy:Lcom/mysql/jdbc/StatementInterceptor;

.field final v2PostProcessMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/StatementInterceptor;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->v2PostProcessMethod:Ljava/lang/reflect/Method;

    .line 40
    return-void
.end method

.method public static final getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_0
    const-string v1, "postProcess"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mysql/jdbc/Statement;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/mysql/jdbc/Connection;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/sql/SQLException;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptor;->destroy()V

    .line 44
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptor;->executeTopLevelOnly()Z

    move-result v0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/StatementInterceptor;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 52
    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 5
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
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->v2PostProcessMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v0, 0x3

    aput-object p4, v3, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x5

    if-eqz p6, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x6

    if-eqz p7, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x7

    aput-object p8, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Unable to reflectively invoke interceptor"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    throw v1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Unable to reflectively invoke interceptor"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 69
    throw v1

    .line 70
    :catch_2
    move-exception v0

    .line 71
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Unable to reflectively invoke interceptor"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    throw v1
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
    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/StatementInterceptor;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method
