.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;
.super Ljava/lang/Object;
.source "MysqlDataSourceFactory.java"

# interfaces
.implements Ljavax/naming/spi/ObjectFactory;


# static fields
.field protected static final DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlDataSource"

.field protected static final POOL_DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource"

.field protected static final XA_DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlXADataSource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p2, p1}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getObjectInstance(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavax/naming/Name;",
            "Ljavax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    check-cast p1, Ljavax/naming/Reference;

    .line 65
    invoke-virtual {p1}, Ljavax/naming/Reference;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_7

    const-string v0, "com.mysql.jdbc.jdbc2.optional.MysqlDataSource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.MysqlXADataSource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/16 v1, 0xcea

    .line 79
    const-string v2, "port"

    invoke-direct {p0, v2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPort(I)V

    .line 87
    const-string v1, "user"

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUser(Ljava/lang/String;)V

    .line 93
    :cond_2
    const-string v1, "password"

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPassword(Ljava/lang/String;)V

    .line 99
    :cond_3
    const-string v1, "serverName"

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setServerName(Ljava/lang/String;)V

    .line 105
    :cond_4
    const-string v1, "databaseName"

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setDatabaseName(Ljava/lang/String;)V

    .line 111
    :cond_5
    const-string v1, "explicitUrl"

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    const-string v1, "url"

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUrl(Ljava/lang/String;)V

    .line 119
    :cond_6
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPropertiesViaRef(Ljavax/naming/Reference;)V

    .line 125
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create DataSource of class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
