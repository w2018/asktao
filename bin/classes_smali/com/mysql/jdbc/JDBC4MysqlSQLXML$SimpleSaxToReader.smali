.class Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "JDBC4MysqlSQLXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleSaxToReader"
.end annotation


# instance fields
.field buf:Ljava/lang/StringBuilder;

.field private inCDATA:Z

.field final synthetic this$0:Lcom/mysql/jdbc/JDBC4MysqlSQLXML;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/JDBC4MysqlSQLXML;)V
    .locals 1
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->this$0:Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    return-void
.end method

.method private escapeCharsForXml(CZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    .line 747
    sparse-switch p1, :sswitch_data_0

    .line 776
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    :cond_0
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9f

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x2028

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_4

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :goto_0
    return-void

    .line 749
    :sswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 753
    :sswitch_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 757
    :sswitch_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 762
    :sswitch_3
    if-nez p2, :cond_3

    .line 763
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 771
    :sswitch_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "&#xD;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 782
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 747
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_4
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private escapeCharsForXml(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 724
    if-nez p1, :cond_1

    .line 733
    :cond_0
    return-void

    .line 728
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 730
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml(CZ)V

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private escapeCharsForXml([CIIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    if-nez p1, :cond_1

    .line 744
    :cond_0
    return-void

    .line 741
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 742
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-direct {p0, v1, p4}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml(CZ)V

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml([CIIZ)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public comment([CII)V
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
    .line 711
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 713
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    .line 706
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 666
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->characters([CII)V

    .line 695
    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    .line 702
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 670
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    if-eqz p4, :cond_0

    .line 674
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml(Ljava/lang/String;Z)V

    .line 678
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    return-void
.end method

.method toReader()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 720
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
