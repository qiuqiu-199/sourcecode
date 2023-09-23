.class final Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;
.super Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;
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

.field final synthetic val$dialogHandler:Landroid/os/Handler;

.field final synthetic val$fragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$middleButton:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/os/Handler;ILandroid/support/v4/app/FragmentActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 358
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$dialogHandler:Landroid/os/Handler;

    iput p0, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$middleButton:I

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;---><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/os/Handler;ILandroid/support/v4/app/FragmentActivity;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onOrbotStarted()V
    .locals 4

    move-object/16 v1, p0

    .line 362
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;->onOrbotStarted()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;--->onOrbotStarted()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSilentStartDisabled()V
    .locals 6

    move-object/16 v3, p0

    .line 367
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$dialogHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget v1, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$middleButton:I

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->getOrbotStartDialogFragment(Landroid/os/Messenger;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->val$fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 368
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "OrbotHelperOrbotStartDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;--->onSilentStartDisabled()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
