.class public Lorg/json/XMLParserConfiguration;
.super Ljava/lang/Object;
.source "XMLParserConfiguration.java"


# static fields
.field public static final KEEP_STRINGS:Lorg/json/XMLParserConfiguration;

.field public static final ORIGINAL:Lorg/json/XMLParserConfiguration;


# instance fields
.field public final cDataTagName:Ljava/lang/String;

.field public final convertNilAttributeToNull:Z

.field public final keepStrings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lorg/json/XMLParserConfiguration;

    invoke-direct {v0}, Lorg/json/XMLParserConfiguration;-><init>()V

    sput-object v0, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    .line 35
    new-instance v0, Lorg/json/XMLParserConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/json/XMLParserConfiguration;-><init>(Z)V

    sput-object v0, Lorg/json/XMLParserConfiguration;->KEEP_STRINGS:Lorg/json/XMLParserConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "content"

    invoke-direct {p0, v1, v0, v1}, Lorg/json/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, p1, v0}, Lorg/json/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 66
    const-string v0, "content"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/json/XMLParserConfiguration;-><init>(ZLjava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Lorg/json/XMLParserConfiguration;->keepStrings:Z

    .line 89
    iput-object p2, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    .line 91
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean p1, p0, Lorg/json/XMLParserConfiguration;->keepStrings:Z

    .line 104
    iput-object p2, p0, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 105
    iput-boolean p3, p0, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    .line 106
    return-void
.end method
