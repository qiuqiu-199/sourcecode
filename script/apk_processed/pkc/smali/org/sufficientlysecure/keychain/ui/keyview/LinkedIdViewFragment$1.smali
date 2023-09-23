.class Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;
.super Landroid/os/AsyncTask;
.source "LinkedIdViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->verifyResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 387
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 387
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 390
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 394
    :try_start_0
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$700(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getFingerprintByKeyId(J)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 400
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    move-result-object v3

    invoke-virtual {v3, v8, v0}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->verify(Landroid/content/Context;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    move-result-object v8

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    const-wide/16 v0, 0x3e8

    cmp-long v2, v5, v0

    if-gez v2, :cond_0

    sub-long v2, v0, v5

    .line 405
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object v8

    .line 396
    :catch_1
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v0, "Key to verify linked id for must exist in db!"

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;--->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 387
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 415
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;->success()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$1100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/widget/TextSwitcher;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$900(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->getVerifiedText(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$1100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/widget/TextSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    .line 422
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$900(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->getVerifiedText(Z)I

    move-result v0

    .line 421
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 423
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFY_OK:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$900(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Z

    move-result v2

    invoke-virtual {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->setVerifyingState(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;Z)V

    .line 424
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    move-result-object v5

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->seekAttention()V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFY_ERROR:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$900(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->setVerifyingState(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;Z)V

    .line 427
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 429
    :goto_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->access$1202(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;--->onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
