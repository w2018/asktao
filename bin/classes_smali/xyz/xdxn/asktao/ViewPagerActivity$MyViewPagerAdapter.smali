.class public Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/ViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "MyViewPagerAdapter"
.end annotation


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final this$0:Lxyz/xdxn/asktao/ViewPagerActivity;


# direct methods
.method public constructor <init>(Lxyz/xdxn/asktao/ViewPagerActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxyz/xdxn/asktao/ViewPagerActivity;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;->this$0:Lxyz/xdxn/asktao/ViewPagerActivity;

    .line 78
    iput-object p3, p0, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;)Lxyz/xdxn/asktao/ViewPagerActivity;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;->this$0:Lxyz/xdxn/asktao/ViewPagerActivity;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 94
    const/4 v0, -0x2

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 99
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
