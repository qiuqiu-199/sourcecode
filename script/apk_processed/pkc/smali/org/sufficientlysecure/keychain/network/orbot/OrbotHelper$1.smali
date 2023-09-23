.class final Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;
.super Landroid/os/Handler;
.source "OrbotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->putOrbotInRequiredState(ILorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Landroid/support/v4/app/FragmentActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 317
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;---><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 320
    iget v1, v1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;->onCancel()V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;->onNeutralButton()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
