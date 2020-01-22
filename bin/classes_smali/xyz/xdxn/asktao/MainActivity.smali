.class public Lxyz/xdxn/asktao/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/MainActivity$100000000;,
        Lxyz/xdxn/asktao/MainActivity$100000001;,
        Lxyz/xdxn/asktao/MainActivity$100000002;
    }
.end annotation


# instance fields
.field bt_con:Landroid/widget/Button;

.field share:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startApp()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 40
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 48
    const v1, 0x7f050004

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 49
    const v1, 0x7f050005

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 50
    const v1, 0x7f050006

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 51
    const v1, 0x7f050007

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 52
    const v1, 0x7f050008

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 54
    iget-object v1, p0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    const-string v7, "db_host"

    const-string v8, "127.0.0.1"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    const-string v7, "db_port"

    const-string v8, "3306"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    const-string v7, "db_name"

    const-string v8, "gserver"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    const-string v7, "db_user"

    const-string v8, "root"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    const-string v7, "db_pass"

    const-string v8, "123456"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    const v0, 0x7f050003

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 70
    const v0, 0x7f05000b

    new-instance v1, Lxyz/xdxn/asktao/MainActivity$100000001;

    invoke-direct {v1, p0}, Lxyz/xdxn/asktao/MainActivity$100000001;-><init>(Lxyz/xdxn/asktao/MainActivity;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    const v8, 0x7f050009

    new-instance v0, Lxyz/xdxn/asktao/MainActivity$100000002;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lxyz/xdxn/asktao/MainActivity$100000002;-><init>(Lxyz/xdxn/asktao/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    invoke-static {p0}, LLogCatBroadcaster;->start(Landroid/content/Context;)V

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/MainActivity;->setContentView(I)V

    .line 22
    const-string v0, "dbconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxyz/xdxn/asktao/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    .line 23
    invoke-direct {p0}, Lxyz/xdxn/asktao/MainActivity;->startApp()V

    .line 24
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/MainActivity;->bt_con:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity;->bt_con:Landroid/widget/Button;

    new-instance v1, Lxyz/xdxn/asktao/MainActivity$100000000;

    invoke-direct {v1, p0}, Lxyz/xdxn/asktao/MainActivity$100000000;-><init>(Lxyz/xdxn/asktao/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lxyz/xdxn/asktao/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 109
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f08002a
        :pswitch_0
    .end packed-switch
.end method
