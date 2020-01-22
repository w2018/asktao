.class public Lcom/mysql/jdbc/ProfilerEventHandlerFactory;
.super Ljava/lang/Object;
.source "ProfilerEventHandlerFactory.java"


# instance fields
.field protected log:Lcom/mysql/jdbc/log/Log;

.field private ownerConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method private constructor <init>(Lcom/mysql/jdbc/Connection;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->ownerConnection:Lcom/mysql/jdbc/Connection;

    .line 35
    iput-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->log:Lcom/mysql/jdbc/log/Log;

    .line 68
    iput-object p1, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->ownerConnection:Lcom/mysql/jdbc/Connection;

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->ownerConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->log:Lcom/mysql/jdbc/log/Log;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to get logger from connection"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    const-class v1, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandler()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 52
    invoke-interface {p0, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeExtension(Lcom/mysql/jdbc/Extension;)V

    .line 53
    invoke-interface {p0, v0}, Lcom/mysql/jdbc/MySQLConnection;->setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    const-class v1, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
