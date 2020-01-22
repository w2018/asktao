.class Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTimeoutSetter"
.end annotation


# instance fields
.field private final connImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final milliseconds:I

.field private final mysqlIoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mysql/jdbc/MysqlIO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Lcom/mysql/jdbc/MysqlIO;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5510
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->connImplRef:Ljava/lang/ref/WeakReference;

    .line 5511
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->mysqlIoRef:Ljava/lang/ref/WeakReference;

    .line 5512
    iput p3, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->milliseconds:I

    .line 5513
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5517
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->connImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    .line 5518
    if-eqz v0, :cond_1

    .line 5519
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5520
    :try_start_1
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->milliseconds:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketTimeout(I)V

    .line 5521
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->mysqlIoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MysqlIO;

    .line 5522
    if-eqz v0, :cond_0

    .line 5523
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;->milliseconds:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/MysqlIO;->setSocketTimeout(I)V

    .line 5525
    :cond_0
    monitor-exit v1

    .line 5530
    :cond_1
    return-void

    .line 5525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5527
    :catch_0
    move-exception v0

    .line 5528
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
