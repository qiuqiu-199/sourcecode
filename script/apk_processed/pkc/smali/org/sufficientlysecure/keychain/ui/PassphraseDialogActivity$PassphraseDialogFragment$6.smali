.class Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;
.super Landroid/os/AsyncTask;
.source "PassphraseDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->checkPassphraseAndFinishCaching(Landroid/widget/Button;Lorg/sufficientlysecure/keychain/util/Passphrase;I)V
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
        "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

.field final synthetic val$passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field final synthetic val$positive:Landroid/widget/Button;

.field final synthetic val$timeToLiveSeconds:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Landroid/widget/Button;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 523
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$positive:Landroid/widget/Button;

    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$timeToLiveSeconds:I

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;---><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Landroid/widget/Button;I)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 523
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    const/4 v13, 0x0

    const/4 v0, 0x0

    .line 528
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 531
    iget-object v3, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyIds()[J

    move-result-object v3

    array-length v4, v3

    move-object v6, v13

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-wide v7, v3, v5

    .line 532
    iget-object v9, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v9

    .line 533
    invoke-virtual {v9, v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 537
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v9

    .line 538
    invoke-virtual {v9, v7, v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v7

    .line 541
    iget-object v8, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v6, v7

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 548
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    sub-long v7, v3, v1

    const-wide/16 v1, 0x64

    cmp-long v3, v7, v1

    if-gez v3, :cond_3

    sub-long v3, v1, v7

    .line 551
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_3
    return-object v6

    .line 559
    :catch_1
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f11016f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 560
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 562
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 563
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->dismiss()V

    .line 564
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-object v13

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;--->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 523
    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->onPostExecute(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)V
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 572
    invoke-super {v9, v10}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;--->onPostExecute(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)V"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$800(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez v10, :cond_1

    .line 581
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v10

    const-string v1, ""

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v10

    iget-object v1, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    const v2, 0x7f110d4e

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$900(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Landroid/widget/ViewAnimator;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 584
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$positive:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    const-string v1, "Everything okay!"

    .line 589
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    iget-boolean v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    if-eqz v1, :cond_2

    const-string v1, "Not caching entered passphrase!"

    .line 592
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "Caching entered passphrase"

    .line 594
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 597
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v4

    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 598
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v7

    iget v8, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$timeToLiveSeconds:I

    .line 596
    invoke-static/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->addCachedPassphrase(Landroid/content/Context;JJLorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;I)V

    .line 601
    :goto_0
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    iget-object v1, v9, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->val$passphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V

    return-void
.end method
