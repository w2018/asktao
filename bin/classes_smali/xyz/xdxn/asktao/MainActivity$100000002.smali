.class Lxyz/xdxn/asktao/MainActivity$100000002;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/MainActivity;

.field private final val$edit_db_host:Landroid/widget/EditText;

.field private final val$edit_db_name:Landroid/widget/EditText;

.field private final val$edit_db_pass:Landroid/widget/EditText;

.field private final val$edit_db_port:Landroid/widget/EditText;

.field private final val$edit_db_user:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iput-object p2, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_host:Landroid/widget/EditText;

    iput-object p3, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_port:Landroid/widget/EditText;

    iput-object p4, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_name:Landroid/widget/EditText;

    iput-object p5, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_user:Landroid/widget/EditText;

    iput-object p6, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_pass:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/MainActivity$100000002;)Lxyz/xdxn/asktao/MainActivity;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v0, v0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_host"

    iget-object v2, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_host:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v0, v0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_port"

    iget-object v2, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_port:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v0, v0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_name"

    iget-object v2, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v0, v0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_user"

    iget-object v2, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_user:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v0, v0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_pass"

    iget-object v2, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->val$edit_db_pass:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v0, v0, Lxyz/xdxn/asktao/MainActivity;->share:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    iget-object v0, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    iget-object v1, p0, Lxyz/xdxn/asktao/MainActivity$100000002;->this$0:Lxyz/xdxn/asktao/MainActivity;

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Lxyz/xdxn/asktao/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
