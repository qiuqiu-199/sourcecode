.class public abstract Lorg/sufficientlysecure/keychain/ui/DecryptFragment;
.super Landroid/support/v4/app/Fragment;
.source "DecryptFragment.java"


# static fields
.field public static final ARG_DECRYPT_VERIFY_RESULT:Ljava/lang/String; = "decrypt_verify_result"


# instance fields
.field private mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

.field protected mEncryptionIcon:Landroid/widget/ImageView;

.field protected mEncryptionText:Landroid/widget/TextView;

.field private mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayAnimator:Landroid/widget/ViewAnimator;

.field protected mResultLayout:Landroid/widget/LinearLayout;

.field protected mSignatureAction:Landroid/widget/TextView;

.field protected mSignatureEmail:Landroid/widget/TextView;

.field protected mSignatureIcon:Landroid/widget/ImageView;

.field protected mSignatureLayout:Landroid/view/View;

.field protected mSignatureName:Landroid/widget/TextView;

.field private mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

.field protected mSignatureText:Landroid/widget/TextView;

.field private unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 60
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private lookupUnknownKey(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 137
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    .line 141
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 140
    invoke-static {v4, v3, v4, v4}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v3

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;

    invoke-direct {v3, v2, v4, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    .line 179
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v0, 0x7f110c10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 181
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->lookupUnknownKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setShowAction(J)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 247
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureAction:Landroid/widget/TextView;

    const v1, 0x7f1100f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureAction:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f0800ee

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 249
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureLayout:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$1;

    invoke-direct {v1, v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->setShowAction(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setSignatureLayoutVisibility(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 243
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->setSignatureLayoutVisibility(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showErrorOverlay(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 105
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mOverlayAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mOverlayAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->showErrorOverlay(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showKey(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 185
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    .line 188
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f11017e

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 191
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->showKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showUnknownKeyStatus()V
    .locals 11

    move-object/16 v8, p0

    .line 372
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v0

    .line 374
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    const-string v2, "got missing status for non-missing key, shouldn\'t happen!"

    .line 377
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_0
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getPrimaryUserId()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v2

    .line 382
    iget-object v5, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 383
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureName:Landroid/widget/TextView;

    iget-object v6, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureName:Landroid/widget/TextView;

    const v6, 0x7f110d45

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :goto_0
    iget-object v5, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 388
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureEmail:Landroid/widget/TextView;

    iget-object v2, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 390
    :cond_2
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureEmail:Landroid/widget/TextView;

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 391
    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v5

    .line 390
    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyIdWithPrefix(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_1
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 397
    :cond_3
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v3, 0x7f1100fe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 398
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v7, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNKNOWN_KEY:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v2, v3, v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 400
    invoke-direct {v8, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 401
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureAction:Landroid/widget/TextView;

    const v3, 0x7f1100f4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureAction:Landroid/widget/TextView;

    const v3, 0x7f0800b3

    .line 403
    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 404
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureLayout:Landroid/view/View;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$4;

    invoke-direct {v3, v8, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;J)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    invoke-direct {v8, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 408
    invoke-virtual {v8, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto :goto_2

    .line 414
    :cond_4
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v1, 0x7f1100f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 415
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INVALID:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    const/16 v0, 0x8

    .line 417
    invoke-direct {v8, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 419
    invoke-direct {v8, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 421
    invoke-virtual {v8, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    :goto_2
    return-void

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->showUnknownKeyStatus()V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$loadSignerKeyData$2$DecryptFragment()Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 3

    .line 264
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v1}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$onViewCreated$0$DecryptFragment(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mOverlayAnimator:Landroid/widget/ViewAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method final synthetic lambda$setShowAction$1$DecryptFragment(JLandroid/view/View;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showKey(J)V

    return-void
.end method

.method final synthetic lambda$showUnknownKeyStatus$3$DecryptFragment(JLandroid/view/View;)V
    .locals 0

    .line 404
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->lookupUnknownKey(J)V

    return-void
.end method

.method public loadSignerKeyData()V
    .locals 6

    move-object/16 v3, p0

    .line 253
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v3}, Landroid/arch/lifecycle/LiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    const/4 v0, 0x0

    .line 255
    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 258
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;)V

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 271
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$3;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;)V

    invoke-virtual {v0, v3, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    :cond_2
    :goto_0
    const/16 v0, 0x8

    .line 259
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->loadSignerKeyData()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected loadVerifyResult(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 197
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 198
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 199
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v5

    .line 201
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mResultLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 218
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    const v0, 0x7f1100fb

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 219
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionIcon:Landroid/widget/ImageView;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v5, v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    goto :goto_0

    .line 205
    :pswitch_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    const v0, 0x7f1100f6

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionIcon:Landroid/widget/ImageView;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v5, v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    const v0, 0x7f1100f7

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 212
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionIcon:Landroid/widget/ImageView;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v5, v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 224
    :goto_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/16 v5, 0x8

    .line 227
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 229
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v0, 0x7f1100fa

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_SIGNED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v5, v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 232
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->loadSignerKeyData()V

    .line 233
    invoke-direct {v4, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    const/4 v5, 0x1

    .line 235
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto :goto_1

    .line 238
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->loadSignerKeyData()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->loadVerifyResult(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 443
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 446
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadSignerKeyData(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    if-nez v10, :cond_0

    .line 276
    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showUnknownKeyStatus()V

    return-void

    .line 280
    :cond_0
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v0

    .line 282
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureName:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureName:Landroid/widget/TextView;

    const v3, 0x7f110d45

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :goto_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureEmail:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 290
    :cond_2
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureEmail:Landroid/widget/TextView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 291
    invoke-virtual {v3}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v3

    .line 290
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyIdWithPrefix(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_1
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 297
    :goto_2
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v3}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 298
    :goto_3
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v6}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 299
    :goto_4
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v7

    sget-object v8, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .line 300
    :goto_5
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v10

    if-eqz v2, :cond_7

    .line 303
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v2, 0x7f1100ff

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 304
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v10, v2, v3, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 306
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 307
    invoke-direct {v9, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setShowAction(J)V

    .line 309
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto/16 :goto_6

    :cond_7
    if-eqz v3, :cond_8

    .line 312
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v2, 0x7f1100fd

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 313
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v10, v2, v3, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 315
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 316
    invoke-direct {v9, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setShowAction(J)V

    .line 318
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 320
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto/16 :goto_6

    :cond_8
    if-eqz v6, :cond_9

    .line 323
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v2, 0x7f1100f8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 324
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v10, v2, v3, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 326
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 327
    invoke-direct {v9, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setShowAction(J)V

    .line 329
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 331
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_a

    .line 335
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v2, 0x7f110100

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 336
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v10, v2, v3, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 338
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 339
    invoke-direct {v9, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setShowAction(J)V

    .line 341
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 343
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    .line 346
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v2, 0x7f1100fc

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 347
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v10, v2, v3, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 349
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 350
    invoke-direct {v9, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setShowAction(J)V

    .line 352
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 354
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    goto :goto_6

    .line 357
    :cond_b
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v2, 0x7f110101

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 358
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v10, v2, v3, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 360
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setSignatureLayoutVisibility(I)V

    .line 361
    invoke-direct {v9, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->setShowAction(J)V

    .line 363
    invoke-direct {v9, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->showErrorOverlay(Z)V

    .line 365
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onVerifyLoaded(Z)V

    :goto_6
    return-void

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->onLoadSignerKeyData(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 112
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "decrypt_verify_result"

    .line 114
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected abstract onVerifyLoaded(Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 82
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v0, 0x7f090286

    .line 86
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mResultLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090282

    .line 87
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionIcon:Landroid/widget/ImageView;

    const v0, 0x7f090283

    .line 88
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mEncryptionText:Landroid/widget/TextView;

    const v0, 0x7f090289

    .line 89
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureIcon:Landroid/widget/ImageView;

    const v0, 0x7f09028c

    .line 90
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureText:Landroid/widget/TextView;

    const v0, 0x7f09028a

    .line 91
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureLayout:Landroid/view/View;

    const v0, 0x7f09028b

    .line 92
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureName:Landroid/widget/TextView;

    const v0, 0x7f090288

    .line 93
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureEmail:Landroid/widget/TextView;

    const v0, 0x7f090287

    .line 94
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mSignatureAction:Landroid/widget/TextView;

    .line 95
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mResultLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    move-object v3, v2

    check-cast v3, Landroid/widget/ViewAnimator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mOverlayAnimator:Landroid/widget/ViewAnimator;

    const v3, 0x7f090113

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 100
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$0;

    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 119
    invoke-super {v1, v2}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->onViewStateRestored(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v0, "decrypt_verify_result"

    .line 125
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->loadVerifyResult(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V

    :cond_1
    return-void
.end method

.method public startDisplayLogActivity()V
    .locals 7

    move-object/16 v4, p0

    .line 432
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "log"

    .line 437
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 438
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment;--->startDisplayLogActivity()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
