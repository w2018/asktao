.class Lcom/mysql/jdbc/ConnectionImpl$6;
.super Lcom/mysql/jdbc/IterateBlock;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->rollback(Ljava/sql/Savepoint;)V
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

.field final synthetic val$savepoint:Ljava/sql/Savepoint;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/sql/Savepoint;)V
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
    .line 4586
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$6;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl$6;->val$savepoint:Ljava/sql/Savepoint;

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
    .line 4587
    check-cast p1, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$6;->val$savepoint:Ljava/sql/Savepoint;

    invoke-interface {p1, v0}, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;->rollback(Ljava/sql/Savepoint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl$6;->stopIterating:Z

    .line 4590
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
    .line 4586
    check-cast p1, Lcom/mysql/jdbc/Extension;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl$6;->forEach(Lcom/mysql/jdbc/Extension;)V

    return-void
.end method
