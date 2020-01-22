.class public Lcom/mysql/jdbc/util/ResultSetUtil;
.super Ljava/lang/Object;
.source "ResultSetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendResultSetSlashGStyle(Ljava/lang/StringBuilder;Ljava/sql/ResultSet;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v5

    .line 41
    new-array v6, v5, [Ljava/lang/String;

    move v1, v3

    move v0, v3

    .line 43
    :goto_0
    if-ge v1, v5, :cond_1

    .line 44
    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    .line 46
    aget-object v4, v6, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 47
    aget-object v0, v6, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x1

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    const-string v2, "*************************** "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ". row ***************************\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 58
    :goto_2
    if-ge v4, v5, :cond_4

    .line 59
    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v7, v0, v1

    move v1, v3

    .line 61
    :goto_3
    if-ge v1, v7, :cond_2

    .line 62
    const-string v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 65
    :cond_2
    aget-object v1, v6, v4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v1, v4, 0x1

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_4
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 73
    :cond_3
    const-string v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 79
    :cond_4
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1

    .line 82
    :cond_5
    return-object p0
.end method
