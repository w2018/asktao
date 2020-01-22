.class public Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;
.super Ljava/lang/Object;
.source "AbandonedConnectionCleanupThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

.field static threadRef:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    .line 42
    new-instance v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    .line 54
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;

    invoke-direct {v1}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private checkContextClassLoaders()V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->uncheckedShutdown()V

    goto :goto_0
.end method

.method public static checkedShutdown()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->shutdown(Z)V

    .line 114
    return-void
.end method

.method private static consistentClassLoaders()Z
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 105
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->checkedShutdown()V

    .line 146
    return-void
.end method

.method private static shutdown(Z)V
    .locals 1
    .parameter

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->consistentClassLoaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public static uncheckedShutdown()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->shutdown(Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->checkContextClassLoaders()V

    .line 64
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->refQueue:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    .line 67
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->cleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const/4 v1, 0x0

    sput-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    .line 75
    return-void

    .line 69
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v3, Lcom/mysql/jdbc/NonRegisteringDriver;->connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 77
    :catch_1
    move-exception v1

    goto :goto_0
.end method
