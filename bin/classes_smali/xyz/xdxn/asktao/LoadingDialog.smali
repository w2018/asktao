.class public Lxyz/xdxn/asktao/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private mCancelable:Z

.field private mImageId:I

.field private mMessage:Ljava/lang/String;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p3, p0, Lxyz/xdxn/asktao/LoadingDialog;->mMessage:Ljava/lang/String;

    .line 28
    iput p4, p0, Lxyz/xdxn/asktao/LoadingDialog;->mImageId:I

    .line 29
    iput-boolean p5, p0, Lxyz/xdxn/asktao/LoadingDialog;->mCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const v2, 0x7f060002

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lxyz/xdxn/asktao/LoadingDialog;-><init>(Landroid/content/Context;ILjava/lang/String;IZ)V

    return-void
.end method

.method private initView()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 39
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/LoadingDialog;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lxyz/xdxn/asktao/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lxyz/xdxn/asktao/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 44
    const v2, 0x3e99999a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 45
    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    invoke-virtual {p0}, Lxyz/xdxn/asktao/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    iget-boolean v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mCancelable:Z

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/LoadingDialog;->setCancelable(Z)V

    .line 49
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 51
    iget-object v2, p0, Lxyz/xdxn/asktao/LoadingDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mImageId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 54
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v2, v3

    const/16 v3, 0x168

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 55
    iget-object v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    iget-object v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 58
    iget-object v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lxyz/xdxn/asktao/LoadingDialog;->initView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 71
    iget-boolean v0, p0, Lxyz/xdxn/asktao/LoadingDialog;->mCancelable:Z

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
