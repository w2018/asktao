.class public Lcom/mysql/fabric/xmlrpc/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->url:Ljava/net/URL;

    .line 55
    return-void
.end method


# virtual methods
.method public clearHeader(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public execute(Lcom/mysql/fabric/xmlrpc/base/MethodCall;)Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    const-string v1, "User-Agent"

    const-string v2, "MySQL XML-RPC"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 77
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 107
    :cond_0
    throw v0

    .line 81
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 87
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 91
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 93
    new-instance v3, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;

    invoke-direct {v3}, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;-><init>()V

    .line 95
    invoke-virtual {v2, v1, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v3}, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->getMethodResponse()Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    new-instance v2, Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;-><init>(Lcom/mysql/fabric/xmlrpc/base/Fault;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :cond_2
    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_3
    return-object v1

    .line 107
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
