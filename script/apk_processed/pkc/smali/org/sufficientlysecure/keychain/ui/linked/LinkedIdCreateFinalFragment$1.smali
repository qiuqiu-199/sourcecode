.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;
.super Landroid/os/AsyncTask;
.source "LinkedIdCreateFinalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->proofVerify()V
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
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 136
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 143
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    invoke-virtual {v2, v8}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    move-result-object v2

    if-nez v2, :cond_0

    .line 145
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    .line 148
    :cond_0
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->fingerprint:[B

    invoke-virtual {v2, v8, v3}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->verify(Landroid/content/Context;[B)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    move-result-object v8

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    const-wide/16 v0, 0x3e8

    cmp-long v3, v5, v0

    if-gez v3, :cond_1

    sub-long v3, v0, v5

    .line 153
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;->success()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifiedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    :cond_2
    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;--->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 166
    invoke-super {v3, v4}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;--->onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;->success()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;ZLjava/lang/Boolean;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;ZLjava/lang/Boolean;)V

    .line 172
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/operations/results/LinkedVerifyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;

    invoke-interface {v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    :goto_0
    return-void
.end method
