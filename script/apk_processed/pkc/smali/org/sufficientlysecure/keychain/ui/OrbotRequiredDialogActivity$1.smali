.class Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;
.super Ljava/lang/Object;
.source "OrbotRequiredDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 103
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    .line 106
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->putOrbotInRequiredState(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->onOrbotStarted()V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$1;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
