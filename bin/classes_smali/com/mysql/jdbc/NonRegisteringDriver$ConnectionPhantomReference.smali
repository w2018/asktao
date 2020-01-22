.class Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "NonRegisteringDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/NonRegisteringDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionPhantomReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/mysql/jdbc/ConnectionImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private io:Lcom/mysql/jdbc/NetworkResources;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 895
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getNetworkResources()Lcom/mysql/jdbc/NetworkResources;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    if-eqz v0, :cond_0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    invoke-virtual {v0}, Lcom/mysql/jdbc/NetworkResources;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    iput-object v1, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    .line 909
    :cond_0
    return-void

    .line 906
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    throw v0
.end method
