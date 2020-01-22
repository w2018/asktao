.class public Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;
.super Ljava/lang/Object;
.source "SessionAssociationInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# static fields
.field protected static final sessionLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected currentSessionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final resetSessionKey()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static final setSessionKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
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
    .line 58
    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->currentSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-string v1, "SET @mysql_proxy_session=?"

    invoke-interface {p3, v1}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 72
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 73
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 78
    iput-object v0, p0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->currentSessionKey:Ljava/lang/String;

    .line 81
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    throw v0
.end method
