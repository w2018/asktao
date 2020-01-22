.class public Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlNativePasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "mysql_native_password"

    return-object v0
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
    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 49
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Buffer;",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 78
    iget-object v1, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    .line 80
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 85
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return v5

    .line 83
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/Security;->scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string v0, "MysqlNativePasswordPlugin.1"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    .line 69
    return-void
.end method
