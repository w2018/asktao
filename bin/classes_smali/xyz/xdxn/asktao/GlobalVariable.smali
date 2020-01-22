.class public Lxyz/xdxn/asktao/GlobalVariable;
.super Landroid/app/Application;
.source "GlobalVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/GlobalVariable$100000000;,
        Lxyz/xdxn/asktao/GlobalVariable$IsStatus;
    }
.end annotation


# instance fields
.field private Jdata:Ljava/lang/String;

.field private allowArr:[Ljava/lang/String;

.field private conn:Lcom/mysql/jdbc/Connection;

.field private context:Landroid/content/Context;

.field private falg:Z

.field private loadingDialog:Lxyz/xdxn/asktao/LoadingDialog;

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private share:Landroid/content/SharedPreferences;

.field private status:Z

.field private stmt:Ljava/sql/Statement;

.field private viewPage:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    iput-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    move-object v0, v1

    check-cast v0, Ljava/sql/Statement;

    iput-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->stmt:Ljava/sql/Statement;

    iput-boolean v2, p0, Lxyz/xdxn/asktao/GlobalVariable;->status:Z

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lxyz/xdxn/asktao/GlobalVariable;->Jdata:Ljava/lang/String;

    iput-boolean v2, p0, Lxyz/xdxn/asktao/GlobalVariable;->falg:Z

    return-void
.end method

.method static synthetic access$L1000000(Lxyz/xdxn/asktao/GlobalVariable;)Lcom/mysql/jdbc/Connection;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    return-object v0
.end method

.method static synthetic access$L1000002(Lxyz/xdxn/asktao/GlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->status:Z

    return v0
.end method

.method static synthetic access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->share:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$L1000010(Lxyz/xdxn/asktao/GlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->falg:Z

    return v0
.end method

.method static synthetic access$S1000000(Lxyz/xdxn/asktao/GlobalVariable;Lcom/mysql/jdbc/Connection;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    return-void
.end method

.method static synthetic access$S1000002(Lxyz/xdxn/asktao/GlobalVariable;Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->status:Z

    return-void
.end method

.method static synthetic access$S1000005(Lxyz/xdxn/asktao/GlobalVariable;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->share:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$S1000010(Lxyz/xdxn/asktao/GlobalVariable;Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->falg:Z

    return-void
.end method


# virtual methods
.method public ConnectionMysql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lxyz/xdxn/asktao/GlobalVariable$100000000;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lxyz/xdxn/asktao/GlobalVariable$100000000;-><init>(Lxyz/xdxn/asktao/GlobalVariable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public closeMysql()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 186
    :try_start_0
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->stmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->stmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 188
    :cond_0
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lxyz/xdxn/asktao/GlobalVariable;->falg:Z

    .line 194
    iput-boolean v3, p0, Lxyz/xdxn/asktao/GlobalVariable;->status:Z

    .line 195
    const/4 v0, 0x2

    const-string v1, "MSG"

    const v2, 0x7f05000e

    invoke-virtual {p0, v2}, Lxyz/xdxn/asktao/GlobalVariable;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAllowArr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->allowArr:[Ljava/lang/String;

    return-object v0
.end method

.method public getConn()Lcom/mysql/jdbc/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->Jdata:Ljava/lang/String;

    return-object v0
.end method

.method public getLBM()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public getLoadingDialog()Lxyz/xdxn/asktao/LoadingDialog;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->loadingDialog:Lxyz/xdxn/asktao/LoadingDialog;

    return-object v0
.end method

.method public getMysqlStatus()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->status:Z

    return v0
.end method

.method public getShare()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->share:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStmt()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    iput-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->stmt:Ljava/sql/Statement;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/sql/Statement;

    goto :goto_0
.end method

.method public getTimeLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    .line 65
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->viewPage:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public onCreate()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 40
    const-string v0, "dbconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->share:Landroid/content/SharedPreferences;

    .line 41
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method public sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "falg"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lxyz/xdxn/asktao/GlobalVariable;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public setAllowArr([Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->allowArr:[Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->context:Landroid/content/Context;

    return-void
.end method

.method public setJsonData(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->Jdata:Ljava/lang/String;

    return-void
.end method

.method public setLoadingDialog(Lxyz/xdxn/asktao/LoadingDialog;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxyz/xdxn/asktao/LoadingDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->loadingDialog:Lxyz/xdxn/asktao/LoadingDialog;

    return-void
.end method

.method public setVibrator(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Landroid/content/Context;->VIBRATOR_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/GlobalVariable;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 57
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/ViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable;->viewPage:Landroid/support/v4/view/ViewPager;

    return-void
.end method
