.class Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
.source "FailoverConnectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/FailoverConnectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FailoverJdbcInterfaceProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/FailoverConnectionProxy;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V

    .line 82
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->incrementQueriesIssuedSinceFailover()V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-static {v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->access$000(Lcom/mysql/jdbc/FailoverConnectionProxy;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-virtual {v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->fallBackToPrimaryIfAvailable()V

    .line 102
    :cond_1
    return-object v1
.end method
