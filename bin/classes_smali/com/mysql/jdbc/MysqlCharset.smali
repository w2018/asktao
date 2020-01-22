.class Lcom/mysql/jdbc/MysqlCharset;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# instance fields
.field public final charsetName:Ljava/lang/String;

.field public final javaEncodingsUc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public major:I

.field public final mblen:I

.field public minor:I

.field public final priority:I

.field public subminor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    .line 834
    const/4 v1, 0x4

    iput v1, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    .line 835
    iput v4, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    .line 836
    iput v0, p0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    .line 851
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 852
    iput p2, p0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    .line 853
    iput p3, p0, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    move v1, v0

    .line 855
    :goto_0
    array-length v0, p4

    if-ge v1, v0, :cond_1

    .line 856
    aget-object v2, p4, v1

    .line 858
    :try_start_0
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v0

    .line 862
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 863
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 866
    :catch_0
    move-exception v0

    .line 868
    if-ne p2, v4, :cond_0

    .line 869
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    .line 855
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 875
    if-le p2, v4, :cond_3

    .line 876
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    .line 881
    :cond_2
    :goto_2
    return-void

    .line 878
    :cond_3
    const-string v0, "Cp1252"

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 893
    iput p5, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    .line 894
    iput p6, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    .line 895
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 899
    iput p5, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    .line 900
    iput p6, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    .line 901
    iput p7, p0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    .line 902
    return-void
.end method

.method private addEncodingMapping(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 884
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 886
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_0
    return-void
.end method


# virtual methods
.method getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 930
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0
.end method

.method isOkayForVersion(Lcom/mysql/jdbc/Connection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 919
    iget v0, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v1, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v2, p0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    invoke-interface {p1, v0, v1, v2}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v1, "charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, ",mblen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget v1, p0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
