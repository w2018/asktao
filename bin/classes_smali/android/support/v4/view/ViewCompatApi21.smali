.class Landroid/support/v4/view/ViewCompatApi21;
.super Ljava/lang/Object;
.source "ViewCompatApi21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 34
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 38
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Landroid/support/v4/view/ViewCompatApi21$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewCompatApi21$1;-><init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 65
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 46
    return-void
.end method
