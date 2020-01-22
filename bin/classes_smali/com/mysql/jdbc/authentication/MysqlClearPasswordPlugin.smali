.class public Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlClearPasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "mysql_clear_password"

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
    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 48
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 76
    :goto_0
    new-instance v2, Lcom/mysql/jdbc/Buffer;

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 83
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    .line 85
    invoke-virtual {v2, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 88
    invoke-virtual {v2, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 90
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return v5

    .line 75
    :cond_0
    :try_start_1
    const-string v0, "UTF-8"

    move-object v1, v0

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v0, "MysqlClearPasswordPlugin.1"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    .line 68
    return-void
.end method
