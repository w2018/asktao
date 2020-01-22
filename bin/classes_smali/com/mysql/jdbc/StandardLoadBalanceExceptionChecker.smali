.class public Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;
.super Ljava/lang/Object;
.source "StandardLoadBalanceExceptionChecker.java"

# interfaces
.implements Lcom/mysql/jdbc/LoadBalanceExceptionChecker;


# instance fields
.field private sqlExClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private sqlStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureSQLExceptionSubclassList(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, ","

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    goto :goto_1

    .line 112
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    iput-object v1, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    goto :goto_0
.end method

.method private configureSQLStateList(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, ","

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iput-object v1, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v0, "loadBalanceSQLStateFailover"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->configureSQLStateList(Ljava/lang/String;)V

    .line 77
    const-string v0, "loadBalanceSQLExceptionSubclassFailover"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->configureSQLExceptionSubclassList(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    const-string v0, "08"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 49
    goto :goto_0

    .line 56
    :cond_2
    instance-of v0, p1, Lcom/mysql/jdbc/CommunicationsException;

    if-eqz v0, :cond_3

    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 64
    goto :goto_0

    .line 69
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
