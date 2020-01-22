.class public Lcom/mysql/fabric/xmlrpc/base/Value;
.super Ljava/lang/Object;
.source "Value.java"


# static fields
.field public static final TYPE_array:B = 0x8t

.field public static final TYPE_base64:B = 0x6t

.field public static final TYPE_boolean:B = 0x2t

.field public static final TYPE_dateTime_iso8601:B = 0x5t

.field public static final TYPE_double:B = 0x4t

.field public static final TYPE_i4:B = 0x0t

.field public static final TYPE_int:B = 0x1t

.field public static final TYPE_string:B = 0x3t

.field public static final TYPE_struct:B = 0x7t


# instance fields
.field private dtf:Ljavax/xml/datatype/DatatypeFactory;

.field protected objType:B

.field protected objValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDouble(D)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 53
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setInt(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Array;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 81
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Struct;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 77
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 57
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setString(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 69
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDateTime(Ljava/util/GregorianCalendar;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 61
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBoolean(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBase64([B)V

    .line 74
    return-void
.end method

.method private escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 214
    sparse-switch v2, :sswitch_data_0

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 222
    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public appendString(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 110
    return-void
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 89
    iget-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 164
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 165
    return-void
.end method

.method public setBase64([B)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 154
    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 155
    return-void
.end method

.method public setBoolean(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 123
    :goto_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 124
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBoolean(Z)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 115
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 150
    return-void
.end method

.method public setDateTime(Ljava/util/GregorianCalendar;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 141
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 142
    return-void
.end method

.method public setDouble(D)V
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 129
    return-void
.end method

.method public setDouble(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 134
    return-void
.end method

.method public setInt(I)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 95
    return-void
.end method

.method public setInt(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 100
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 104
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 105
    return-void
.end method

.method public setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    .line 159
    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<value>"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    packed-switch v0, :pswitch_data_0

    .line 203
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<string>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</string>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_0
    const-string v0, "</value>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<i4>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</i4>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<int>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</int>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<boolean>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</boolean>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 183
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<double>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</double>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 187
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<dateTime.iso8601>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</dateTime.iso8601>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 191
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<base64>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</base64>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 195
    :pswitch_7
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Struct;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 199
    :pswitch_8
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Array;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
