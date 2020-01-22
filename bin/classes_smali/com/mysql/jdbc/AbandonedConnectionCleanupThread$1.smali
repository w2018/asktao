.class Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;
.super Ljava/lang/Object;
.source "AbandonedConnectionCleanupThread.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Abandoned connection cleanup thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 50
    const-class v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 51
    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    return-object v0
.end method
