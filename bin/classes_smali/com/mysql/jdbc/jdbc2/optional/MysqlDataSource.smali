.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "MysqlDataSource.java"

# interfaces
.implements Ljavax/sql/DataSource;
.implements Ljavax/naming/Referenceable;
.implements Ljava/io/Serializable;


# static fields
.field protected static final mysqlDriver:Lcom/mysql/jdbc/NonRegisteringDriver; = null

.field static final serialVersionUID:J = -0x4c8c39925d645a70L


# instance fields
.field protected databaseName:Ljava/lang/String;

.field protected encoding:Ljava/lang/String;

.field protected explicitUrl:Z

.field protected hostName:Ljava/lang/String;

.field protected transient logWriter:Ljava/io/PrintWriter;

.field protected password:Ljava/lang/String;

.field protected port:I

.field protected profileSql:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-direct {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->mysqlDriver:Lcom/mysql/jdbc/NonRegisteringDriver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not load Driver class com.mysql.jdbc.Driver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->logWriter:Ljava/io/PrintWriter;

    .line 65
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->databaseName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->encoding:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->hostName:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->password:Ljava/lang/String;

    .line 77
    const-string v0, "false"

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->profileSql:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->url:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->user:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->explicitUrl:Z

    .line 89
    const/16 v0, 0xcea

    iput v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->port:I

    .line 95
    return-void
.end method


# virtual methods
.method public exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->exposeAsProperties(Ljava/util/Properties;Z)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->password:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 136
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getConnection(Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected getConnection(Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 387
    iget-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->explicitUrl:Z

    if-nez v0, :cond_2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:mysql://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->hostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->databaseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 411
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->mysqlDriver:Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-virtual {v0, v1, v4}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2

    .line 412
    if-nez v2, :cond_3

    .line 413
    const-string v0, "MysqlDataSource.BadUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08006"

    invoke-static {v0, v1, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->url:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 416
    :cond_3
    const-string v0, "DBNAME"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v0, "HOST"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v0, "PORT"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 422
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 428
    :cond_4
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->mysqlDriver:Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-virtual {v0, v1, p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->databaseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->databaseName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getLoginTimeout()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->port:I

    return v0
.end method

.method public getPortNumber()I
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getPort()I

    move-result v0

    return v0
.end method

.method public getReference()Ljavax/naming/Reference;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "com.mysql.jdbc.jdbc2.optional.MysqlDataSourceFactory"

    .line 262
    new-instance v1, Ljavax/naming/Reference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljavax/naming/Reference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "user"

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 264
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "password"

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->password:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 265
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "serverName"

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 266
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "port"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 267
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "databaseName"

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 268
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "url"

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 269
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "explicitUrl"

    iget-boolean v3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->explicitUrl:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 275
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->storeToRef(Ljavax/naming/Reference;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Ljavax/naming/NamingException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->hostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->hostName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->explicitUrl:Z

    if-nez v0, :cond_0

    .line 345
    const-string v0, "jdbc:mysql://"

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setDatabaseName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->databaseName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->logWriter:Ljava/io/PrintWriter;

    .line 165
    return-void
.end method

.method public setLoginTimeout(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->password:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->port:I

    .line 211
    return-void
.end method

.method public setPortNumber(I)V
    .locals 0
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPort(I)V

    .line 232
    return-void
.end method

.method public setPropertiesViaRef(Ljavax/naming/Reference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeFromRef(Ljavax/naming/Reference;)V

    .line 250
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->hostName:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUrl(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->url:Ljava/lang/String;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->explicitUrl:Z

    .line 336
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->user:Ljava/lang/String;

    .line 362
    return-void
.end method
