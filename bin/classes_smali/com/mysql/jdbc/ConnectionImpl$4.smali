.class Lcom/mysql/jdbc/ConnectionImpl$4;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/ExceptionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->createConfigCacheIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 3655
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$4;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 3652
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3649
    return-void
.end method

.method public interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3656
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3657
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$4;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-static {v0}, Lcom/mysql/jdbc/ConnectionImpl;->access$000(Lcom/mysql/jdbc/ConnectionImpl;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl$4;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/CacheAdapter;->invalidate(Ljava/lang/Object;)V

    .line 3659
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
