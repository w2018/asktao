.class public Lcom/mysql/jdbc/NonRegisteringDriver;
.super Ljava/lang/Object;
.source "NonRegisteringDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;
    }
.end annotation


# static fields
.field private static final ALLOWED_QUOTES:Ljava/lang/String; = "\"\'"

.field public static final DBNAME_PROPERTY_KEY:Ljava/lang/String; = "DBNAME"

.field public static final DEBUG:Z = false

.field public static final HOST_NAME_INDEX:I = 0x0

.field public static final HOST_PROPERTY_KEY:Ljava/lang/String; = "HOST"

.field public static final LICENSE:Ljava/lang/String; = "GPL"

.field public static final LOADBALANCE_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:loadbalance://"

.field private static final MXJ_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:mxj://"

.field public static final NAME:Ljava/lang/String; = "MySQL Connector Java"

.field public static final NUM_HOSTS_PROPERTY_KEY:Ljava/lang/String; = "NUM_HOSTS"

.field public static final OS:Ljava/lang/String; = null

.field public static final PASSWORD_PROPERTY_KEY:Ljava/lang/String; = "password"

.field public static final PATH_PROPERTY_KEY:Ljava/lang/String; = "PATH"

.field public static final PLATFORM:Ljava/lang/String; = null

.field public static final PORT_NUMBER_INDEX:I = 0x1

.field public static final PORT_PROPERTY_KEY:Ljava/lang/String; = "PORT"

.field public static final PROPERTIES_TRANSFORM_KEY:Ljava/lang/String; = "propertiesTransform"

.field public static final PROTOCOL_PROPERTY_KEY:Ljava/lang/String; = "PROTOCOL"

.field private static final REPLICATION_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:replication://"

.field public static final RUNTIME_VENDOR:Ljava/lang/String; = null

.field public static final RUNTIME_VERSION:Ljava/lang/String; = null

.field public static final TRACE:Z = false

.field private static final URL_PREFIX:Ljava/lang/String; = "jdbc:mysql://"

.field public static final USER_PROPERTY_KEY:Ljava/lang/String; = "user"

.field public static final USE_CONFIG_PROPERTY_KEY:Ljava/lang/String; = "useConfigs"

.field public static final VERSION:Ljava/lang/String; = "5.1.46"

.field protected static final connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;",
            "Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;",
            ">;"
        }
    .end annotation
.end field

.field protected static final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 75
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getOSName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->OS:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getPlatform()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->PLATFORM:Ljava/lang/String;

    .line 78
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VENDOR:Ljava/lang/String;

    .line 79
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VERSION:Ljava/lang/String;

    .line 105
    :try_start_0
    const-class v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method private connectFailover(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 380
    if-nez v1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 397
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const-string v0, "roundRobinLoadBalance"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "NUM_HOSTS"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 391
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 392
    add-int/lit8 v4, v0, 0x1

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOST."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PORT."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_1
    invoke-static {v3, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private connectLoadBalanced(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 357
    if-nez v1, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    .line 362
    :cond_0
    const-string v0, "roundRobinLoadBalance"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "NUM_HOSTS"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 368
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 369
    add-int/lit8 v4, v0, 0x1

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOST."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PORT."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    :cond_1
    invoke-static {v3, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/LoadBalancedConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public static expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 848
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 850
    invoke-static {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 851
    const-string v0, "address="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 852
    const-string v1, ")"

    const-string v3, "\'\""

    const-string v4, "\'\""

    invoke-static {v0, v1, v3, v4, v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 854
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 859
    :cond_1
    const-string v1, "="

    const-string v4, "\'\""

    const-string v5, "\'\""

    invoke-static {v0, v1, v4, v5, v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 861
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 864
    :goto_1
    if-eqz v1, :cond_4

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 865
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 868
    :cond_4
    if-eqz v1, :cond_0

    .line 869
    const-string v4, "HOST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "DBNAME"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "PORT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "PROTOCOL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "PATH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 871
    :cond_5
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 876
    :cond_6
    :goto_2
    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 862
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 872
    :cond_8
    const-string v4, "user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 873
    :cond_9
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 881
    :cond_a
    return-object v2
.end method

.method static getMajorVersionInternal()I
    .locals 1

    .prologue
    .line 169
    const-string v0, "5"

    invoke-static {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->safeIntParse(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getMinorVersionInternal()I
    .locals 1

    .prologue
    .line 178
    const-string v0, "1"

    invoke-static {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->safeIntParse(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isHostMaster(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 463
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 465
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "master"

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHostPropertiesList(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 885
    if-eqz p0, :cond_0

    const-string v0, "address="

    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 199
    const-string v1, "address="

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 201
    aput-object v6, v0, v5

    .line 226
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 210
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 211
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 212
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 215
    aput-object v1, v0, v4

    .line 217
    aput-object v2, v0, v5

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "NonRegisteringDriver.37"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 222
    :cond_2
    aput-object p0, v0, v4

    .line 223
    aput-object v6, v0, v5

    goto :goto_0
.end method

.method private static safeIntParse(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 231
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static trackConnection(Lcom/mysql/jdbc/Connection;)V
    .locals 2
    .parameter

    .prologue
    .line 350
    new-instance v0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;

    check-cast p0, Lcom/mysql/jdbc/ConnectionImpl;

    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/ref/ReferenceQueue;)V

    .line 351
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string v0, "NonRegisteringDriver.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 266
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
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

    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string v1, "NonRegisteringDriver.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "08001"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 313
    :cond_0
    const-string v1, "jdbc:mysql:loadbalance://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connectLoadBalanced(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    .line 332
    :cond_1
    :goto_0
    return-object v0

    .line 315
    :cond_2
    const-string v1, "jdbc:mysql:replication://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connectReplicationConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    const-string v2, "1"

    const-string v3, "NUM_HOSTS"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connectFailover(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_4
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/NonRegisteringDriver;->host(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/NonRegisteringDriver;->port(Ljava/util/Properties;)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/NonRegisteringDriver;->database(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 336
    throw v0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NonRegisteringDriver.17"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NonRegisteringDriver.18"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "08001"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 344
    throw v0
.end method

.method protected connectReplicationConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v3

    .line 403
    if-nez v3, :cond_0

    move-object v0, v2

    .line 459
    :goto_0
    return-object v0

    .line 407
    :cond_0
    invoke-virtual {v3}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 408
    invoke-virtual {v3}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 412
    const-string v4, "com.mysql.jdbc.ReplicationConnection.isSlave"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    const-string v4, "NUM_HOSTS"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 416
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 417
    const-string v0, "Must specify at least one slave host to connect to for master/slave replication load-balancing functionality"

    const-string v1, "01S00"

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 420
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOST.1"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "PORT.1"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v7

    .line 427
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_5

    .line 428
    add-int/lit8 v8, v2, 0x1

    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HOST."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PORT."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HOST."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PORT."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HOST."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 436
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PORT."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 437
    if-eqz v7, :cond_3

    .line 438
    invoke-direct {p0, v9}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostMaster(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 439
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 441
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 444
    :cond_3
    if-nez v2, :cond_4

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 447
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 452
    :cond_5
    const-string v2, "NUM_HOSTS"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v2, "NUM_HOSTS"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v2, "HOST"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v2, "PORT"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v2, "HOST"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v2, "PORT"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {v6, v0, v5, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/ReplicationConnection;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public database(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 481
    const-string v0, "DBNAME"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMajorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMinorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 528
    if-nez p2, :cond_1

    .line 529
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 532
    :goto_0
    if-eqz p1, :cond_0

    const-string v1, "jdbc:mysql://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 536
    :cond_0
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    const-string v2, "HOST"

    const-string v3, "HOST"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iput-boolean v8, v1, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 538
    const-string v2, "NonRegisteringDriver.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 540
    new-instance v2, Ljava/sql/DriverPropertyInfo;

    const-string v3, "PORT"

    const-string v4, "PORT"

    const-string v5, "3306"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iput-boolean v9, v2, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 542
    const-string v3, "NonRegisteringDriver.7"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 544
    new-instance v3, Ljava/sql/DriverPropertyInfo;

    const-string v4, "DBNAME"

    const-string v5, "DBNAME"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iput-boolean v9, v3, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 546
    const-string v4, "Database name"

    iput-object v4, v3, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 548
    new-instance v4, Ljava/sql/DriverPropertyInfo;

    const-string v5, "user"

    const-string v6, "user"

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iput-boolean v8, v4, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 550
    const-string v5, "NonRegisteringDriver.13"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 552
    new-instance v5, Ljava/sql/DriverPropertyInfo;

    const-string v6, "password"

    const-string v7, "password"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iput-boolean v8, v5, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 554
    const-string v6, "NonRegisteringDriver.16"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 556
    const/4 v6, 0x5

    invoke-static {v0, v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exposeAsDriverPropertyInfo(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;

    move-result-object v0

    .line 558
    aput-object v1, v0, v9

    .line 559
    aput-object v2, v0, v8

    .line 560
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 561
    const/4 v1, 0x3

    aput-object v4, v0, v1

    .line 562
    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 564
    return-object v0

    :cond_1
    move-object v0, p2

    goto/16 :goto_0
.end method

.method public host(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 581
    const-string v0, "HOST"

    const-string v1, "localhost"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jdbcCompliant()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 602
    if-eqz p2, :cond_1

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7, p2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 604
    :goto_0
    if-nez p1, :cond_2

    move-object v0, v8

    .line 813
    :cond_0
    :goto_1
    return-object v0

    .line 602
    :cond_1
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    goto :goto_0

    .line 608
    :cond_2
    const-string v1, "jdbc:mysql://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "jdbc:mysql:mxj://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "jdbc:mysql:loadbalance://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "jdbc:mysql:replication://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v8

    .line 611
    goto :goto_1

    .line 614
    :cond_3
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 616
    const-string v1, "jdbc:mysql:mxj://"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 618
    const-string v1, "socketFactory"

    const-string v2, "com.mysql.management.driverlaunched.ServerLauncherSocketFactory"

    invoke-virtual {v7, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 625
    :cond_4
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 627
    if-eq v1, v11, :cond_6

    .line 628
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 631
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v4, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 634
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 636
    const-string v2, "="

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 641
    if-eq v5, v11, :cond_18

    .line 642
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 644
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_17

    .line 645
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 651
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 652
    :catch_0
    move-exception v5

    .line 654
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 655
    :catch_1
    move-exception v5

    .line 657
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 663
    :cond_6
    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    const-string v2, "/"

    const-string v3, "\"\'"

    const-string v4, "\"\'"

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    .line 669
    if-eq v3, v11, :cond_7

    .line 670
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 672
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 673
    const-string v4, "DBNAME"

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 681
    :cond_7
    :goto_4
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 682
    const-string v2, ","

    const-string v3, "\"\'"

    const-string v4, "\"\'"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 684
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 685
    add-int/lit8 v2, v2, 0x1

    .line 687
    invoke-static {v1}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 689
    aget-object v4, v1, v0

    if-eqz v4, :cond_8

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HOST."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v7, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    :goto_6
    aget-object v4, v1, v6

    if-eqz v4, :cond_9

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PORT."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v1, v1, v6

    invoke-virtual {v7, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    .line 692
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HOST."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "localhost"

    invoke-virtual {v7, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_6

    .line 698
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PORT."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "3306"

    invoke-virtual {v7, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 703
    :cond_a
    const-string v0, "HOST.1"

    const-string v1, "localhost"

    invoke-virtual {v7, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 704
    const-string v0, "PORT.1"

    const-string v1, "3306"

    invoke-virtual {v7, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v2, v6

    .line 707
    :cond_b
    const-string v0, "NUM_HOSTS"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    const-string v0, "HOST"

    const-string v1, "HOST.1"

    invoke-virtual {v7, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 709
    const-string v0, "PORT"

    const-string v1, "PORT.1"

    invoke-virtual {v7, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 711
    const-string v0, "propertiesTransform"

    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_15

    .line 715
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesTransform;

    .line 717
    invoke-interface {v0, v7}, Lcom/mysql/jdbc/ConnectionPropertiesTransform;->transformProperties(Ljava/util/Properties;)Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    move-object v1, v0

    .line 733
    :goto_7
    invoke-static {}, Lcom/mysql/jdbc/Util;->isColdFusion()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "autoConfigureForColdFusion"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 734
    const-string v0, "useConfigs"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    if-eqz v0, :cond_c

    .line 739
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_c
    const-string v0, "coldFusion"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v0, "useConfigs"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 752
    :cond_d
    if-eqz p2, :cond_14

    .line 753
    const-string v0, "useConfigs"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_8
    if-nez v0, :cond_e

    .line 757
    const-string v0, "useConfigs"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    :cond_e
    if-eqz v0, :cond_13

    .line 761
    const-string v2, ","

    invoke-static {v0, v2, v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 763
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 765
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 767
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 768
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 773
    if-nez v4, :cond_f

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find configuration template named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01S00"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 778
    :catch_2
    move-exception v1

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load configuration template \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' due to underlying IOException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "01S00"

    invoke-static {v0, v2, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 782
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 784
    throw v0

    .line 718
    :catch_3
    move-exception v0

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create properties transform instance \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to underlying exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 722
    :catch_4
    move-exception v0

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create properties transform instance \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to underlying exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 726
    :catch_5
    move-exception v0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create properties transform instance \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to underlying exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 777
    :cond_f
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    .line 788
    :cond_10
    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 790
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 793
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_a

    :cond_11
    move-object v0, v2

    .line 801
    :goto_b
    if-eqz p2, :cond_0

    .line 802
    invoke-virtual {p2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 804
    :cond_12
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 806
    const-string v3, "NUM_HOSTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 807
    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    move-object v0, v1

    goto :goto_b

    :cond_14
    move-object v0, v8

    goto/16 :goto_8

    :cond_15
    move-object v1, v7

    goto/16 :goto_7

    :cond_16
    move-object v1, v2

    goto/16 :goto_4

    :cond_17
    move-object v1, v8

    goto/16 :goto_3

    :cond_18
    move-object v1, v8

    move-object v2, v8

    goto/16 :goto_3
.end method

.method public port(Ljava/util/Properties;)I
    .locals 2
    .parameter

    .prologue
    .line 825
    const-string v0, "PORT"

    const-string v1, "3306"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public property(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
