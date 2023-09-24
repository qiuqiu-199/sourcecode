.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;
.super Ljava/lang/Object;
.source "RemoteDeduplicateActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

.field final synthetic val$addressText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;Landroid/widget/TextView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 194
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->val$addressText:Landroid/widget/TextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;Landroid/widget/TextView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finish()V
    .locals 6

    move-object/16 v3, p0

    .line 197
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/4 v2, -0x1

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;--->finish()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishAsCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 210
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 215
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 216
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;--->finishAsCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAddressText(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 226
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->val$addressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;--->setAddressText(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyListAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 231
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;--->setKeyListAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showNoSelectionError()V
    .locals 6

    move-object/16 v3, p0

    .line 221
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No key selected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;--->showNoSelectionError()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
