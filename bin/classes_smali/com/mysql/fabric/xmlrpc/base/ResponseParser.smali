.class public Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResponseParser.java"


# instance fields
.field elNames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Member;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Member;->setName(Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->appendString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1

    .line 132
    :cond_2
    :try_start_1
    const-string v1, "i4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setInt(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBoolean(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_5
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->appendString(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_6
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDouble(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v1, "dateTime.iso8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 141
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDateTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_8
    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBase64([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "methodResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "params"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 81
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 82
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Param;

    .line 85
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 86
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 89
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 90
    instance-of v2, v1, Lcom/mysql/fabric/xmlrpc/base/Data;

    if-eqz v2, :cond_4

    .line 91
    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Data;->addValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 92
    :cond_4
    instance-of v2, v1, Lcom/mysql/fabric/xmlrpc/base/Param;

    if-eqz v2, :cond_5

    .line 93
    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Param;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 94
    :cond_5
    instance-of v2, v1, Lcom/mysql/fabric/xmlrpc/base/Member;

    if-eqz v2, :cond_6

    .line 95
    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Member;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 96
    :cond_6
    instance-of v2, v1, Lcom/mysql/fabric/xmlrpc/base/Fault;

    if-eqz v2, :cond_0

    .line 97
    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Fault;

    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Fault;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 99
    :cond_7
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Array;

    .line 101
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 102
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V

    goto/16 :goto_0

    .line 103
    :cond_8
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 104
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Data;

    .line 105
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Array;

    .line 106
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Array;->setData(Lcom/mysql/fabric/xmlrpc/base/Data;)V

    goto/16 :goto_0

    .line 107
    :cond_9
    const-string v1, "struct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 108
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Struct;

    .line 109
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 110
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V

    goto/16 :goto_0

    .line 111
    :cond_a
    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Member;

    .line 113
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    .line 114
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/Struct;->addMember(Lcom/mysql/fabric/xmlrpc/base/Member;)V

    goto/16 :goto_0

    .line 115
    :cond_b
    const-string v1, "fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Fault;

    .line 117
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 118
    invoke-virtual {v1, v0}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->setFault(Lcom/mysql/fabric/xmlrpc/base/Fault;)V

    goto/16 :goto_0
.end method

.method public getMethodResponse()Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p3, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v0, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "methodResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "params"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Params;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Params;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "value"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_4
    const-string v0, "array"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Array;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_5
    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Data;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_6
    const-string v0, "struct"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Struct;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_7
    const-string v0, "member"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Member;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 67
    :cond_8
    const-string v0, "fault"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v1, Lcom/mysql/fabric/xmlrpc/base/Fault;

    invoke-direct {v1}, Lcom/mysql/fabric/xmlrpc/base/Fault;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
