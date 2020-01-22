.class public Lcom/mysql/jdbc/util/TimezoneDump;
.super Ljava/lang/Object;
.source "TimezoneDump.java"


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "jdbc:mysql:///test"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 53
    const-string v0, "jdbc:mysql:///test"

    .line 55
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v4

    if-eqz v2, :cond_0

    .line 56
    aget-object v0, p0, v4

    .line 59
    :cond_0
    const-string v2, "com.mysql.jdbc.Driver"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 64
    :try_start_0
    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v2, "SHOW VARIABLES LIKE \'timezone\'"

    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 66
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MySQL timezone name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mysql/jdbc/TimeUtil;->getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Java timezone name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 74
    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 78
    :cond_3
    return-void
.end method
