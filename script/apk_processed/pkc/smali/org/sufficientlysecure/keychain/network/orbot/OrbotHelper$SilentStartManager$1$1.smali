.class Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;
.super Ljava/lang/Object;
.source "OrbotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 431
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;->this$1:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;---><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 4

    move-object/16 v1, p0

    .line 434
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;->this$1:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;

    iget-boolean v0, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->val$showProgress:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;->this$1:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->this$0:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->access$000(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 437
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;->this$1:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1;->this$0:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;->onOrbotStarted()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager$1$1;--->run()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
