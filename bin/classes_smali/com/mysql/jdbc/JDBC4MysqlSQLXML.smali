.class public Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
.super Ljava/lang/Object;
.source "JDBC4MysqlSQLXML.java"

# interfaces
.implements Ljava/sql/SQLXML;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;
    }
.end annotation


# instance fields
.field private asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private asDOMResult:Ljavax/xml/transform/dom/DOMResult;

.field private asSAXResult:Ljavax/xml/transform/sax/SAXResult;

.field private asStringWriter:Ljava/io/StringWriter;

.field private columnIndexOfXml:I

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private fromResultSet:Z

.field private inputFactory:Ljavax/xml/stream/XMLInputFactory;

.field private isClosed:Z

.field private outputFactory:Ljavax/xml/stream/XMLOutputFactory;

.field private owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field private saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

.field private stringRep:Ljava/lang/String;

.field private workingWithResult:Z


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z

    .line 108
    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    .line 109
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 110
    return-void
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/ResultSetInternalMethods;ILcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z

    .line 101
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 102
    iput p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    .line 104
    iput-object p3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 105
    return-void
.end method

.method private binaryInputStreamStreamToReader(Ljava/io/ByteArrayOutputStream;)Ljava/io/Reader;
    .locals 4
    .parameter

    .prologue
    .line 513
    :try_start_0
    const-string v1, "UTF-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 517
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v2, v0}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    .line 521
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 522
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 523
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 525
    if-eqz v0, :cond_1

    .line 536
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 532
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 537
    :catch_1
    move-exception v0

    .line 538
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "SQLXMLInstance has been free()d"

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkWorkingWithResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Can\'t perform requested operation after getResult() has been called to write XML data"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized setBinaryStreamInternal()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 378
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCharacterStreamInternal()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    .line 417
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected domSourceToString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 594
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 595
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 596
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 597
    invoke-virtual {v1, v0, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 599
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 602
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 604
    throw v1
.end method

.method public declared-synchronized free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 194
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBinaryStream(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 225
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSource(Ljava/lang/Class;)Ljavax/xml/transform/Source;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/xml/transform/Source;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 277
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 282
    if-eqz p1, :cond_0

    const-class v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Lorg/xml/sax/InputSource;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    .line 292
    :goto_0
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_1
    monitor-exit p0

    return-object v0

    .line 289
    :cond_1
    :try_start_1
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    goto :goto_0

    .line 293
    :cond_2
    const-class v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 297
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 301
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v0, :cond_3

    .line 302
    new-instance v0, Lorg/xml/sax/InputSource;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    .line 307
    :goto_2
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_3
    :try_start_4
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v0

    goto :goto_2

    .line 315
    :cond_4
    :try_start_5
    const-class v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    move-object v1, v0

    .line 324
    :goto_3
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    goto :goto_1

    .line 321
    :cond_5
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_3

    .line 325
    :cond_6
    const-class v0, Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    .line 329
    :try_start_6
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v0, :cond_7

    .line 330
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    move-object v1, v0

    .line 335
    :goto_4
    new-instance v0, Ljavax/xml/transform/stax/StAXSource;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v2, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stax/StAXSource;-><init>(Ljavax/xml/stream/XMLStreamReader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 336
    :catch_1
    move-exception v0

    .line 337
    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 338
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 332
    :cond_7
    :try_start_8
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v1, v0

    goto :goto_4

    .line 343
    :cond_8
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML Source of type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" Not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public declared-synchronized getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 126
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 128
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 183
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 185
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 189
    :cond_1
    monitor-exit p0

    return v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected readerToString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    const/16 v1, 0x200

    new-array v1, v1, [C

    .line 550
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 551
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 557
    throw v1

    .line 560
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized serializeAsCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 565
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :goto_0
    monitor-exit p0

    return-object v0

    .line 571
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_1

    .line 572
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->domSourceToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 575
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_2

    .line 576
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->toReader()Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->binaryInputStreamStreamToReader(Ljava/io/ByteArrayOutputStream;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized serializeAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 610
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :goto_0
    monitor-exit p0

    return-object v0

    .line 616
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->domSourceToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->toReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->binaryInputStreamStreamToReader(Ljava/io/ByteArrayOutputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->owningResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iget v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->columnIndexOfXml:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBinaryStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 368
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 372
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setBinaryStreamInternal()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharacterStream()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 407
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 411
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setCharacterStreamInternal()Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Class;)Ljavax/xml/transform/Result;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/xml/transform/Result;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 465
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->workingWithResult:Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asStringWriter:Ljava/io/StringWriter;

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 475
    if-eqz p1, :cond_0

    const-class v0, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;-><init>(Lcom/mysql/jdbc/JDBC4MysqlSQLXML;)V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    .line 478
    new-instance v0, Ljavax/xml/transform/sax/SAXResult;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->saxToReaderConverter:Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;

    .line 480
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asSAXResult:Ljavax/xml/transform/sax/SAXResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :goto_0
    monitor-exit p0

    return-object v0

    .line 481
    :cond_1
    :try_start_1
    const-class v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    new-instance v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v0}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    .line 484
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->asDOMResult:Ljavax/xml/transform/dom/DOMResult;

    goto :goto_0

    .line 486
    :cond_2
    const-class v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setCharacterStreamInternal()Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    :cond_3
    :try_start_2
    const-class v0, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    if-nez v0, :cond_4

    .line 491
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 494
    :cond_4
    new-instance v0, Ljavax/xml/transform/stax/StAXResult;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->setCharacterStreamInternal()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stax/StAXResult;-><init>(Ljavax/xml/stream/XMLEventWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    :try_start_4
    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 497
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 499
    throw v1

    .line 502
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML Result of type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" Not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized setString(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkClosed()V

    .line 175
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->checkWorkingWithResult()V

    .line 177
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->stringRep:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->fromResultSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
