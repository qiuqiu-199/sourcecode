.class public abstract Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;
.super Ljava/lang/Object;
.source "OrbotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SilentStartManager"
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 414
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;)Landroid/app/ProgressDialog;
    .locals 0

    .line 414
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 460
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 461
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f110c28

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 463
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;--->showProgressDialog(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected abstract onOrbotStarted()V
.end method

.method protected abstract onSilentStartDisabled()V
.end method

.method public startOrbotAndListen(Landroid/content/Context;Z)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    const-string v0, "starting orbot listener"

    const/4 v1, 0x0

    .line 419
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    .line 421
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->showProgressDialog(Landroid/content/Context;)V

    .line 424
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;

    invoke-direct {v0, v2, v4}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;-><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;Z)V

    .line 454
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "org.torproject.android.intent.action.STATUS"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->requestStartTor(Landroid/content/Context;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;--->startOrbotAndListen(Landroid/content/Context;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
