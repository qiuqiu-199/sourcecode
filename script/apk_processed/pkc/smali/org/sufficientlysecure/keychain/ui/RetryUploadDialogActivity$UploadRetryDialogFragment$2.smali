.class Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;
.super Ljava/lang/Object;
.source "RetryUploadDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 73
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 76
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "result_crypto_input"

    .line 77
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_crypto_input"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 77
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4, v0, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
