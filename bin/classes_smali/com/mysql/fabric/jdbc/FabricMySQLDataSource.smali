.class public Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.source "FabricMySQLDataSource.java"

# interfaces
.implements Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProperties;


# static fields
.field private static final driver:Ljava/sql/Driver; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fabricPassword:Ljava/lang/String;

.field private fabricProtocol:Ljava/lang/String;

.field private fabricReportErrors:Z

.field private fabricServerGroup:Ljava/lang/String;

.field private fabricShardKey:Ljava/lang/String;

.field private fabricShardTable:Ljava/lang/String;

.field private fabricUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;

    invoke-direct {v0}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;-><init>()V

    sput-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->driver:Ljava/sql/Driver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can create driver"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;-><init>()V

    .line 131
    const-string v0, "http"

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricProtocol:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricReportErrors:Z

    return-void
.end method


# virtual methods
.method protected getConnection(Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->explicitUrl:Z

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:mysql:fabric://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->hostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->databaseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 94
    :goto_0
    sget-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->driver:Ljava/sql/Driver;

    check-cast v0, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;->parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2

    .line 95
    const-string v0, "DBNAME"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "HOST"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "PORT"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 101
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->url:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 108
    const-string v0, "fabricShardKey"

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardTable:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 111
    const-string v0, "fabricShardTable"

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricServerGroup:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 114
    const-string v0, "fabricServerGroup"

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricServerGroup:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    :cond_6
    const-string v0, "fabricProtocol"

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricUsername:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 118
    const-string v0, "fabricUsername"

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    :cond_7
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricPassword:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 121
    const-string v0, "fabricPassword"

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    :cond_8
    const-string v0, "fabricReportErrors"

    iget-boolean v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricReportErrors:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->driver:Ljava/sql/Driver;

    invoke-interface {v0, v1, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getFabricPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricReportErrors()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricReportErrors:Z

    return v0
.end method

.method public getFabricServerGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricServerGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricShardKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricShardTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardTable:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setFabricPassword(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricPassword:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setFabricProtocol(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricProtocol:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setFabricReportErrors(Z)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricReportErrors:Z

    .line 186
    return-void
.end method

.method public setFabricServerGroup(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricServerGroup:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setFabricShardKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardKey:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFabricShardTable(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricShardTable:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setFabricUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLDataSource;->fabricUsername:Ljava/lang/String;

    .line 170
    return-void
.end method
