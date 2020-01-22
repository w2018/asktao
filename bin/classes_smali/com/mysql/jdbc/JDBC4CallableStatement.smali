.class public Lcom/mysql/jdbc/JDBC4CallableStatement;
.super Lcom/mysql/jdbc/CallableStatement;
.source "JDBC4CallableStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 143
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    .line 145
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 147
    return-object v1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 156
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    .line 158
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 160
    return-object v1
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 169
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    .line 171
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 173
    return-object v0
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 182
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    .line 184
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 186
    return-object v0
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 195
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v0

    .line 197
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 199
    return-object v0
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 208
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(Ljava/lang/String;)Ljava/sql/NClob;

    move-result-object v0

    .line 210
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 212
    return-object v0
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 221
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 225
    return-object v0
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 234
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 238
    return-object v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 86
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object v0

    .line 88
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 90
    return-object v0
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 96
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(Ljava/lang/String;)Ljava/sql/RowId;

    move-result-object v0

    .line 98
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 100
    return-object v0
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 65
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v0

    .line 67
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 69
    return-object v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    move-object v0, v1

    .line 76
    check-cast v0, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;

    move-result-object v0

    .line 78
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    .line 80
    return-object v0
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    .line 116
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNClob(ILjava/io/Reader;)V

    .line 126
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNClob(ILjava/io/Reader;J)V

    .line 131
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    .line 121
    return-void
.end method

.method public setNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNString(ILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    .line 47
    return-void
.end method

.method public setRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    .line 51
    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    .line 55
    return-void
.end method

.method public setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    .line 60
    return-void
.end method
