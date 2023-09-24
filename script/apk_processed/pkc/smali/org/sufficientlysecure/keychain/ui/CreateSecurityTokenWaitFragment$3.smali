.class Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$3;
.super Landroid/view/animation/Animation;
.source "CreateSecurityTokenWaitFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 146
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    invoke-direct {v0}, Landroid/view/animation/Animation;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
