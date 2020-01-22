.class Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
.super Ljava/lang/Object;
.source "MultiHostConnectionProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/MultiHostConnectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JdbcInterfaceProxy"
.end annotation


# instance fields
.field invokeOn:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    monitor-enter v2

    .line 105
    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method
