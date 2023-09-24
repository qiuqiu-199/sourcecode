.class public Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;
.source "EncryptTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment<",
        "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_RETURN_PROCESS_TEXT:Ljava/lang/String; = "return_process_text"

.field public static final ARG_SELF_ENCRYPT:Ljava/lang/String; = "self_encrypt"

.field public static final ARG_TEXT:Ljava/lang/String; = "text"

.field public static final ARG_USE_COMPRESSION:Ljava/lang/String; = "use_compression"


# instance fields
.field private mHiddenRecipients:Z

.field private mMessage:Ljava/lang/String;

.field private mReturnProcessTextAfterEncrypt:Z

.field private mSelfEncrypt:Z

.field private mShareAfterEncrypt:Z

.field private mUseCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 57
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mHiddenRecipients:Z

    const-string v0, ""

    .line 71
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method private copyToClipboard(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 324
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "clipboard"

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    const v6, 0x7f11016c

    .line 331
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v6, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_1
    const-string v2, "Keychain"

    .line 335
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->getResultBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 337
    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->copyToClipboard(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createSendIntent([B)Landroid/content/Intent;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 344
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;

    .line 347
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getModeFragment()Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;

    move-result-object v7

    .line 348
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->isAsymmetric()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 352
    :cond_0
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getAsymmetricEncryptionUserIds()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v0

    .line 357
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 358
    array-length v2, v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v7, v3

    .line 359
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v4

    .line 360
    iget-object v5, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 361
    iget-object v4, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v7, "android.intent.extra.EMAIL"

    .line 365
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->createSendIntent([B)Landroid/content/Intent;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;Z)Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 77
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "text"

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "return_process_text"

    .line 81
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->newInstance(Ljava/lang/String;Z)Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
    .locals 11

    move-object/16 v8, p0

    .line 265
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 272
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCleartextSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 276
    iget-boolean v3, v8, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mUseCompression:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 277
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 279
    :cond_1
    iget-boolean v3, v8, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mHiddenRecipients:Z

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setHiddenRecipients(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 282
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 284
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;

    .line 285
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getModeFragment()Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->isAsymmetric()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 288
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getAsymmetricEncryptionKeyIds()[J

    move-result-object v5

    .line 289
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getAsymmetricSigningKeyId()J

    move-result-wide v6

    if-eqz v5, :cond_2

    .line 291
    array-length v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v2, :cond_3

    cmp-long v2, v6, v3

    if-nez v2, :cond_3

    .line 295
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110188

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 296
    invoke-interface {v0, v8}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 300
    :cond_3
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEncryptionMasterKeyIds([J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 301
    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    cmp-long v1, v6, v3

    if-eqz v1, :cond_7

    .line 302
    iget-boolean v1, v8, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mSelfEncrypt:Z

    if-eqz v1, :cond_7

    .line 303
    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    if-nez v2, :cond_5

    .line 308
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110bd8

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 309
    invoke-interface {v0, v8}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 312
    :cond_5
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 313
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110bd4

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 314
    invoke-interface {v0, v8}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 317
    :cond_6
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 320
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v0

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->createSignEncryptParcel(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;[B)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v0

    return-object v0

    .line 266
    :cond_8
    :goto_2
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110173

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 267
    invoke-interface {v0, v8}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 89
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onAttach(Landroid/content/Context;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " must inherit from EncryptionActivity"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 138
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    .line 140
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    .line 141
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "return_process_text"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mReturnProcessTextAfterEncrypt:Z

    .line 144
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    if-nez v4, :cond_1

    .line 146
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    const-string v1, "use_compression"

    .line 148
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "use_compression"

    .line 149
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mUseCompression:Z

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getTextUseCompression()Z

    move-result v1

    iput-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mUseCompression:Z

    :goto_0
    const-string v1, "self_encrypt"

    .line 154
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "self_encrypt"

    .line 155
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mSelfEncrypt:Z

    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getTextSelfEncrypt()Z

    move-result v4

    iput-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mSelfEncrypt:Z

    .line 160
    :goto_1
    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 166
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0009

    .line 167
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v3, 0x7f0900d7

    .line 169
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mUseCompression:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v3, 0x7f0900d8

    .line 170
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mSelfEncrypt:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 172
    iget-boolean v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mReturnProcessTextAfterEncrypt:Z

    if-eqz v3, :cond_0

    const v3, 0x7f090152

    .line 173
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f09014e

    .line 174
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f090154

    .line 175
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0074

    const/4 v0, 0x0

    .line 101
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090157

    .line 103
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 123
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 181
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 213
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 202
    :sswitch_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->hideKeyboard()V

    .line 203
    iput-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mShareAfterEncrypt:Z

    .line 204
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    .line 208
    :sswitch_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->hideKeyboard()V

    .line 209
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->hideKeyboard()V

    const/4 v3, 0x0

    .line 197
    iput-boolean v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mShareAfterEncrypt:Z

    .line 198
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    .line 187
    :sswitch_3
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->toggleEnableSelfEncrypt(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 183
    :sswitch_4
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->toggleEnableCompression(Landroid/view/MenuItem;Z)V

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0900d7 -> :sswitch_4
        0x7f0900d8 -> :sswitch_3
        0x7f09014e -> :sswitch_2
        0x7f090152 -> :sswitch_1
        0x7f090154 -> :sswitch_0
    .end sparse-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 57
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V

    return-void
.end method

.method public onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 372
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->hideKeyboard()V

    .line 376
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mShareAfterEncrypt:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->getResultBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->createSendIntent([B)Landroid/content/Intent;

    move-result-object v4

    const v0, 0x7f110cfa

    .line 379
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mReturnProcessTextAfterEncrypt:Z

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.PROCESS_TEXT"

    .line 382
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->getResultBytes()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4, v1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->copyToClipboard(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 131
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "use_compression"

    .line 132
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mUseCompression:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "self_encrypt"

    .line 133
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mSelfEncrypt:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public toggleEnableCompression(Landroid/view/MenuItem;Z)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 243
    iput-boolean v8, v6, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mUseCompression:Z

    .line 244
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 246
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v8, :cond_0

    const v7, 0x7f110caf

    const v1, 0x7f110caf

    goto :goto_0

    :cond_0
    const v7, 0x7f110cae

    const v1, 0x7f110cae

    :goto_0
    const/16 v2, 0xdac

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;

    invoke-direct {v4, v6, v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;Z)V

    const v5, 0x7f11007d

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 259
    invoke-interface {v7, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->toggleEnableCompression(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toggleEnableSelfEncrypt(Landroid/view/MenuItem;Z)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 221
    iput-boolean v8, v6, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->mSelfEncrypt:Z

    .line 222
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 224
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v8, :cond_0

    const v7, 0x7f110cbb

    const v1, 0x7f110cbb

    goto :goto_0

    :cond_0
    const v7, 0x7f110cba

    const v1, 0x7f110cba

    :goto_0
    const/16 v2, 0xdac

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$2;

    invoke-direct {v4, v6, v8}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;Z)V

    const v5, 0x7f11007d

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 237
    invoke-interface {v7, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;--->toggleEnableSelfEncrypt(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
