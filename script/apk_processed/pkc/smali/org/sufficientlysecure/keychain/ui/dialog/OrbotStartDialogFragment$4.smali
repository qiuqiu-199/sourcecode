.class Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;
.super Ljava/lang/Object;
.source "OrbotStartDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 133
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 137
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;

    invoke-static {}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->getShowOrbotStartIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
