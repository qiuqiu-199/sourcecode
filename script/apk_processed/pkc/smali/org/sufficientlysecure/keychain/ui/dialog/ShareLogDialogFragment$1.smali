.class Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;
.super Ljava/lang/Object;
.source "ShareLogDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;

.field final synthetic val$stream:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;Landroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 64
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;->val$stream:Landroid/net/Uri;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 67
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->dismiss()V

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.STREAM"

    .line 69
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;->val$stream:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
