.class public Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;
.super Ljava/lang/Object;
.source "ExportControlled.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ExportControlled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509TrustManagerWrapper"
.end annotation


# instance fields
.field private certFactory:Ljava/security/cert/CertificateFactory;

.field private origTm:Ljavax/net/ssl/X509TrustManager;

.field private validator:Ljava/security/cert/CertPathValidator;

.field private validatorParams:Ljava/security/cert/PKIXParameters;

.field private verifyServerCert:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 251
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 252
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 253
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 276
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Z)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 250
    iput-boolean v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 251
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 252
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 253
    iput-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 256
    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 257
    iput-boolean p2, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 259
    if-eqz p2, :cond_1

    .line 261
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 262
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 263
    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 266
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 267
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 268
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_1
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 283
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 284
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 290
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v2, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1, v0, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    .line 297
    check-cast v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 309
    :cond_2
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 301
    :catch_1
    move-exception v0

    .line 302
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method
