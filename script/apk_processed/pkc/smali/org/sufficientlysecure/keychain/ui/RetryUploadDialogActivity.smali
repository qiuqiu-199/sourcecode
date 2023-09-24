.class public Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RetryUploadDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_CRYPTO_INPUT:Ljava/lang/String; = "extra_crypto_input"

.field public static final RESULT_CRYPTO_INPUT:Ljava/lang/String; = "result_crypto_input"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 34
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 42
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;

    move-result-object v3

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "uploadRetryDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
