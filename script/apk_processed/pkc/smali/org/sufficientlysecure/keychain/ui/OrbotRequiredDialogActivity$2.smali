.class Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;
.super Ljava/lang/Object;
.source "OrbotRequiredDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 123
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;---><init>(Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 4

    move-object/16 v1, p0

    .line 126
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->onOrbotStarted()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity$2;--->run()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
