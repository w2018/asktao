.class public Lcom/mysql/jdbc/ExportControlled;
.super Ljava/lang/Object;
.source "ExportControlled.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;,
        Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;
    }
.end annotation


# static fields
.field private static final SQL_STATE_BAD_SSL_PARAMS:Ljava/lang/String; = "08000"

.field private static final TLS_PROTOCOLS:[Ljava/lang/String; = null

.field private static final TLSv1:Ljava/lang/String; = "TLSv1"

.field private static final TLSv1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final TLSv1_2:Ljava/lang/String; = "TLSv1.2"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLSv1.2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/ExportControlled;->TLS_PROTOCOLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method public static decodeRSAPublicKey(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 492
    if-nez p0, :cond_0

    .line 493
    :try_start_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    const-string v1, "Unable to decode public key"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 496
    :cond_0
    :try_start_1
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 497
    const-string v1, "-----END PUBLIC KEY-----"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/util/Base64Decoder;->decode([BII)[B

    move-result-object v0

    .line 502
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 503
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 504
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method protected static enabled()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public static encryptWithRSAPublicKey([BLjava/security/interfaces/RSAPublicKey;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
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
    .line 512
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 513
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 514
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private static getSSLSocketFactoryDefaultOrConfigured(Lcom/mysql/jdbc/MysqlIO;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 317
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v2

    .line 318
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v5

    .line 321
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v4

    .line 322
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 325
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    const-string v0, "javax.net.ssl.keyStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v0, "javax.net.ssl.keyStoreType"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    const-string v0, "JKS"

    .line 332
    :cond_0
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 334
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 342
    const-string v3, "javax.net.ssl.trustStore"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    const-string v3, "javax.net.ssl.trustStorePassword"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    const-string v3, "javax.net.ssl.trustStoreType"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 346
    const-string v3, "JKS"

    .line 349
    :cond_2
    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 351
    :try_start_1
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    :cond_3
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 365
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v10

    .line 366
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 373
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 376
    :try_start_3
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 377
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v12

    .line 378
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 379
    if-nez v1, :cond_6

    const/4 v1, 0x0

    new-array v1, v1, [C

    move-object v8, v1

    .line 380
    :goto_2
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v1

    .line 381
    :try_start_4
    invoke-virtual {v12, v1, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 382
    invoke-virtual {v11, v12, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 383
    invoke-virtual {v11}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14

    move-result-object v0

    .line 407
    :goto_3
    if-eqz v1, :cond_4

    .line 409
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11

    :cond_4
    :goto_4
    move-object v1, v0

    .line 421
    :goto_5
    :try_start_6
    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 422
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 423
    if-nez v4, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [C

    move-object v2, v0

    .line 425
    :goto_6
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v6, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 429
    :goto_7
    invoke-virtual {v10, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 432
    invoke-virtual {v10}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    .line 433
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getVerifyServerCertificate()Z

    move-result v10

    .line 435
    array-length v11, v8

    move v4, v7

    :goto_8
    if-ge v4, v11, :cond_a

    aget-object v0, v8, v4

    .line 437
    instance-of v2, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v0, v10}, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;Z)V

    move-object v0, v2

    :cond_5
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    .line 435
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    .line 335
    :catch_0
    move-exception v8

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 352
    :catch_1
    move-exception v8

    .line 353
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 367
    :catch_2
    move-exception v0

    .line 368
    const-string v0, "Default algorithm definitions for TrustManager and/or KeyManager are invalid.  Check java security properties file."

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v7, v7, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 379
    :cond_6
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v1

    move-object v8, v1

    goto/16 :goto_2

    .line 385
    :catch_3
    move-exception v0

    .line 386
    :goto_9
    :try_start_8
    const-string v0, "Could not recover keys from client keystore.  Check password?"

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 407
    :catchall_0
    move-exception v0

    :goto_a
    if-eqz v6, :cond_7

    .line 409
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    .line 407
    :cond_7
    :goto_b
    throw v0

    .line 388
    :catch_4
    move-exception v0

    .line 389
    :goto_c
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported keystore algorithm ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 391
    :catch_5
    move-exception v0

    .line 392
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create KeyStore instance ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 394
    :catch_6
    move-exception v1

    .line 395
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load client"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keystore from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 397
    :catch_7
    move-exception v0

    .line 398
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not appear to be a valid URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 400
    :catch_8
    move-exception v0

    .line 401
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "08000"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 403
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 405
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 423
    :cond_8
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_6

    .line 440
    :catch_9
    move-exception v0

    .line 441
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not appear to be a valid URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 458
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 460
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    .line 458
    :cond_9
    :goto_11
    throw v0

    .line 443
    :catch_a
    move-exception v0

    .line 444
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create KeyStore instance ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 446
    :catch_b
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported keystore algorithm ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 449
    :catch_c
    move-exception v0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load trust"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keystore from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 452
    :catch_d
    move-exception v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "08000"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 455
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 456
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 458
    :cond_a
    if-eqz v6, :cond_b

    .line 460
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_13

    .line 468
    :cond_b
    :goto_12
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 469
    new-instance v0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;

    invoke-direct {v0}, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;-><init>()V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_c
    :try_start_10
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 474
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 475
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/security/KeyManagementException; {:try_start_10 .. :try_end_10} :catch_f

    move-result-object v0

    return-object v0

    .line 477
    :catch_e
    move-exception v0

    .line 478
    const-string v0, "TLS is not a valid SSL protocol."

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v7, v7, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 479
    :catch_f
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyManagementException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v7, v7, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 410
    :catch_10
    move-exception v1

    goto/16 :goto_b

    :catch_11
    move-exception v1

    goto/16 :goto_4

    .line 461
    :catch_12
    move-exception v1

    goto/16 :goto_11

    :catch_13
    move-exception v0

    goto :goto_12

    .line 407
    :catchall_2
    move-exception v0

    move-object v6, v1

    goto/16 :goto_a

    .line 400
    :catch_14
    move-exception v0

    move-object v6, v1

    goto/16 :goto_10

    .line 397
    :catch_15
    move-exception v0

    move-object v6, v1

    goto/16 :goto_f

    .line 394
    :catch_16
    move-exception v3

    move-object v6, v1

    goto/16 :goto_e

    .line 391
    :catch_17
    move-exception v0

    move-object v6, v1

    goto/16 :goto_d

    .line 388
    :catch_18
    move-exception v0

    move-object v6, v1

    goto/16 :goto_c

    .line 385
    :catch_19
    move-exception v0

    move-object v6, v1

    goto/16 :goto_9

    :cond_d
    move-object v0, v6

    goto/16 :goto_7

    :cond_e
    move-object v1, v6

    move-object v0, v6

    goto/16 :goto_3

    :cond_f
    move-object v1, v6

    goto/16 :goto_5
.end method

.method public static isSSLEstablished(Lcom/mysql/jdbc/MysqlIO;)Z
    .locals 2
    .parameter

    .prologue
    .line 486
    const-class v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected static transformSocketToSSLSocket(Lcom/mysql/jdbc/MysqlIO;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v4, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;

    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->getSSLSocketFactoryDefaultOrConfigured(Lcom/mysql/jdbc/MysqlIO;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-direct {v4, v0, v1, v5}, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/mysql/jdbc/SocketFactory;Ljava/net/Socket;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v5}, Lcom/mysql/jdbc/SocketFactory;->connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledTLSProtocols()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 117
    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 129
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    sget-object v7, Lcom/mysql/jdbc/ExportControlled;->TLS_PROTOCOLS:[Ljava/lang/String;

    array-length v8, v7

    move v0, v2

    :goto_1
    if-ge v0, v8, :cond_4

    aget-object v9, v7, v0

    .line 131
    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 132
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_1
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v0, v1, v5}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v5}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->isEnterpriseEdition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    :cond_2
    sget-object v0, Lcom/mysql/jdbc/ExportControlled;->TLS_PROTOCOLS:[Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "TLSv1.1"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    const-string v5, "TLSv1"

    aput-object v5, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v5

    .line 201
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getLastPacketSentTimeMs()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getLastPacketReceivedTimeMs()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 135
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledSSLCipherSuites()Ljava/lang/String;

    move-result-object v5

    .line 139
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v1, v3

    .line 141
    :goto_2
    const/4 v0, 0x0

    .line 142
    if-eqz v1, :cond_7

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 147
    const-string v3, "\\s*,\\s*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_3
    if-ge v2, v5, :cond_11

    aget-object v6, v3, v2

    .line 148
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 149
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v1, v2

    .line 139
    goto :goto_2

    .line 156
    :cond_7
    const/4 v1, 0x5

    const/4 v5, 0x5

    const/16 v6, 0x2d

    invoke-virtual {p0, v1, v5, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    const/4 v1, 0x5

    const/4 v5, 0x6

    const/16 v6, 0x1a

    invoke-virtual {p0, v1, v5, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x6

    invoke-virtual {p0, v1, v5, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 162
    :cond_a
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v1

    if-ge v1, v11, :cond_f

    .line 171
    :cond_b
    :goto_4
    if-eqz v3, :cond_10

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_5
    if-ge v0, v6, :cond_11

    aget-object v2, v5, v0

    .line 174
    if-eqz v3, :cond_c

    const-string v7, "_DHE_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-gt v7, v8, :cond_d

    const-string v7, "_DH_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-gt v7, v8, :cond_d

    .line 175
    :cond_c
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 165
    :cond_e
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v1

    if-ge v1, v11, :cond_b

    :cond_f
    move v3, v2

    goto :goto_4

    :cond_10
    move-object v1, v0

    .line 182
    :cond_11
    if-eqz v1, :cond_12

    .line 183
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 186
    :cond_12
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnbufferedInput()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 194
    :goto_6
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 198
    iput-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 204
    return-void

    .line 191
    :cond_13
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method
