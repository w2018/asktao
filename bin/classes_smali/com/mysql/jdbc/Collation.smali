.class Lcom/mysql/jdbc/Collation;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# instance fields
.field public final collationName:Ljava/lang/String;

.field public final index:I

.field public final mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

.field public final priority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput p1, p0, Lcom/mysql/jdbc/Collation;->index:I

    .line 945
    iput-object p2, p0, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    .line 946
    iput p3, p0, Lcom/mysql/jdbc/Collation;->priority:I

    .line 947
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MysqlCharset;

    iput-object v0, p0, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    .line 948
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget v1, p0, Lcom/mysql/jdbc/Collation;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    const-string v1, ",collationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    iget-object v1, p0, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-string v1, ",charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v1, p0, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    iget-object v1, v1, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const-string v1, ",javaCharsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget-object v1, p0, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
