.class public Lcom/mysql/fabric/jdbc/FabricMySQLDriver;
.super Lcom/mysql/jdbc/NonRegisteringDriver;
.source "FabricMySQLDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field public static final FABRIC_PASSWORD_PROPERTY_KEY:Ljava/lang/String; = "fabricPassword"

.field public static final FABRIC_PROTOCOL_PROPERTY_KEY:Ljava/lang/String; = "fabricProtocol"

.field public static final FABRIC_REPORT_ERRORS_PROPERTY_KEY:Ljava/lang/String; = "fabricReportErrors"

.field public static final FABRIC_SERVER_GROUP_PROPERTY_KEY:Ljava/lang/String; = "fabricServerGroup"

.field public static final FABRIC_SHARD_KEY_PROPERTY_KEY:Ljava/lang/String; = "fabricShardKey"

.field public static final FABRIC_SHARD_TABLE_PROPERTY_KEY:Ljava/lang/String; = "fabricShardTable"

.field public static final FABRIC_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:fabric://"

.field public static final FABRIC_USERNAME_PROPERTY_KEY:Ljava/lang/String; = "fabricUsername"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;

    invoke-direct {v0}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;-><init>()V

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t register driver"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;->parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;->parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v0, "fabricProtocol"

    const-string v2, "http"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    const-string v0, "com.mysql.fabric.jdbc.JDBC4FabricMySQLConnectionProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Properties;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 78
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    throw v0

    .line 84
    :cond_1
    new-instance v0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;

    invoke-direct {v0, v1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;-><init>(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "no logging"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "jdbc:mysql:fabric://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "fabric:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    goto :goto_0
.end method
