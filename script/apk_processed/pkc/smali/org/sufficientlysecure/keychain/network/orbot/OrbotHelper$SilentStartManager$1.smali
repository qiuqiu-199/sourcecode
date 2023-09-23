.class Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OrbotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->startOrbotAndListen(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;

.field final synthetic val$showProgress:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 424
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->this$0:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;

    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->val$showProgress:Z

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;---><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    const-string v0, "org.torproject.android.intent.extra.STATUS"

    .line 427
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67df1556

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9df

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "STARTS_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 442
    :pswitch_0
    invoke-virtual {v5, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    iget-boolean v5, v4, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->val$showProgress:Z

    if-eqz v5, :cond_3

    .line 444
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->this$0:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->access$000(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 446
    :cond_3
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->this$0:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->onSilentStartDisabled()V

    goto :goto_2

    .line 429
    :pswitch_1
    invoke-virtual {v5, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;-><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 450
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Orbot silent start broadcast: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "org.torproject.android.intent.extra.STATUS"

    .line 451
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 450
    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;--->onReceive(Landroid/content/Context;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
