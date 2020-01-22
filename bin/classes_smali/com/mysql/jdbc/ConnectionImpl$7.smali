.class Lcom/mysql/jdbc/ConnectionImpl$7;
.super Lcom/mysql/jdbc/IterateBlock;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock",
        "<",
        "Lcom/mysql/jdbc/Extension;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;

.field final synthetic val$autoCommitFlag:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4761
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    iput-boolean p3, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->val$autoCommitFlag:Z

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method forEach(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4762
    check-cast p1, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->val$autoCommitFlag:Z

    invoke-interface {p1, v0}, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;->setAutoCommit(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->stopIterating:Z

    .line 4765
    :cond_0
    return-void
.end method

.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4761
    check-cast p1, Lcom/mysql/jdbc/Extension;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl$7;->forEach(Lcom/mysql/jdbc/Extension;)V

    return-void
.end method
