.class public Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;
.super Ljava/lang/Object;
.source "Sha256PasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# static fields
.field public static PLUGIN_NAME:Ljava/lang/String;


# instance fields
.field protected connection:Lcom/mysql/jdbc/Connection;

.field protected password:Ljava/lang/String;

.field protected publicKeyRequested:Z

.field protected publicKeyString:Ljava/lang/String;

.field protected seed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "sha256_password"

    sput-object v0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    .line 56
    iput-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    return-void
.end method

.method private static readRSAKey(Lcom/mysql/jdbc/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 168
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 170
    const/4 v2, 0x0

    .line 173
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 175
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 179
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 181
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    :goto_1
    :try_start_2
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getParanoid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    const-string v0, "Sha256PasswordPlugin.0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    .line 197
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 195
    :cond_0
    throw v0

    .line 183
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 195
    if-eqz v1, :cond_2

    .line 197
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 207
    :cond_2
    return-object v0

    .line 191
    :cond_3
    :try_start_6
    const-string v2, "Sha256PasswordPlugin.0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    const-string v1, "Sha256PasswordPlugin.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 202
    throw v0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    const-string v1, "Sha256PasswordPlugin.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 202
    throw v0

    .line 195
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 185
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    .line 71
    return-void
.end method

.method protected encryptPassword()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected encryptPassword(Ljava/lang/String;)[B
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytesNullTerminated(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    array-length v1, v0

    new-array v1, v1, [B

    .line 160
    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v1, v2, v3}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/ExportControlled;->decodeRSAPublicKey(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lcom/mysql/jdbc/ExportControlled;->encryptWithRSAPublicKey([BLjava/security/interfaces/RSAPublicKey;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v0, "Sha256PasswordPlugin.3"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-object v0
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
    .line 59
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 61
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-static {v1, v0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->readRSAKey(Lcom/mysql/jdbc/Connection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    .line 65
    :cond_0
    return-void
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    new-array v1, v4, [B

    aput-byte v3, v1, v3

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 95
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    return v4

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 107
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    .line 108
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 110
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 111
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v0, "Sha256PasswordPlugin.3"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 117
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowPublicKeyRetrieval()Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    const-string v0, "Sha256PasswordPlugin.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    iget-object v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 126
    :cond_4
    iget-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_5

    .line 131
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p0}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 133
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iput-boolean v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    goto/16 :goto_0

    .line 137
    :cond_5
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    new-array v1, v4, [B

    aput-byte v4, v1, v3

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iput-boolean v4, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    goto/16 :goto_0
.end method

.method public requiresConfidentiality()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 87
    return-void
.end method
