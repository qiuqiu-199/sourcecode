.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateKeyFinalFragment.java"


# static fields
.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final REQUEST_EDIT_KEY:I = 0x8007

.field public static final STATE_CUSTOM_CONFIGURATION:Ljava/lang/String; = "state_save_keyring_parcel"


# instance fields
.field private isCustomConfiguration:Z

.field mBackButton:Landroid/view/View;

.field mCreateButton:Landroid/view/View;

.field private mCreateOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field mCustomKeyLayout:Landroid/view/View;

.field mCustomKeyRevertButton:Landroid/widget/Button;

.field mEmailEdit:Landroid/widget/TextView;

.field private mMoveToCardOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field mNameEdit:Landroid/widget/TextView;

.field private mQueuedDisplayResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

.field private mQueuedFinishResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

.field private mQueuedSaveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

.field private mSaveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

.field mUploadCheckbox:Landroid/widget/CheckBox;

.field private mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^[\\S]+@[\\S]+\\.[a-z]+$"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 64
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mSaveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->moveToCard(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->uploadKey(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->displayResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method private checkEmailValidity()V
    .locals 7

    move-object/16 v4, p0

    .line 327
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 330
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 333
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 334
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 341
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mEmailEdit:Landroid/widget/TextView;

    const v1, 0x7f1100dd

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mEmailEdit:Landroid/widget/TextView;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$3;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->checkEmailValidity()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static createDefaultSaveKeyringParcel(Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 9

    move-object/16 v6, p0

    .line 282
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildNewKeyringParcel()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 284
    iget-boolean v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenSign:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    if-nez v1, :cond_0

    .line 286
    sget-object v1, Lorg/sufficientlysecure/keychain/Constants;->SECURITY_TOKEN_V2_SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    iput-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenSign:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 287
    sget-object v1, Lorg/sufficientlysecure/keychain/Constants;->SECURITY_TOKEN_V2_DEC:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    iput-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenDec:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 288
    sget-object v1, Lorg/sufficientlysecure/keychain/Constants;->SECURITY_TOKEN_V2_AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    iput-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAuth:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 290
    :cond_0
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenSign:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V

    .line 292
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenDec:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    const/16 v3, 0xc

    invoke-virtual {v1, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V

    .line 294
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAuth:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    const/16 v3, 0x20

    invoke-virtual {v1, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V

    .line 297
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>()V

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->createUnLockParcelForNewKey(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setNewUnlock(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/Constants;->addDefaultSubkeys(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V

    .line 301
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 303
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->createUnLockParcelForNewKey(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setNewUnlock(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setNewUnlock(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 308
    :goto_0
    new-instance v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserId(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 313
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 315
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 316
    new-instance v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v5, v6, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v2}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserId(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->createDefaultSaveKeyringParcel(Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createKey()V
    .locals 7

    move-object/16 v4, p0

    .line 349
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-boolean v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    .line 357
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;

    invoke-direct {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Z)V

    .line 397
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v2, 0x1

    const v3, 0x7f110bf7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v4, v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCreateOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 398
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCreateOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->createKey()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private displayResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 402
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedDisplayResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    return-void

    .line 407
    :cond_0
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->displayResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private moveToCard(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 411
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 412
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    .line 416
    :try_start_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getFingerprintByKeyId(J)[B

    move-result-object v2

    .line 417
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSubKeysByMasterKeyId(J)Ljava/util/List;

    move-result-object v1

    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey;

    .line 425
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->createMoveToSecurityTokenChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addOrReplaceSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setSecurityTokenPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 430
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setSecurityTokenAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 432
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    .line 434
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;

    invoke-direct {v1, v5, v0, v6}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    .line 477
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v0, 0x2

    const v2, 0x7f110c11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v6, v0, v5, v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mMoveToCardOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 478
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mMoveToCardOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    :catch_0
    const-string v6, "Key that should be moved to Security Token not found in database!"

    const/4 v0, 0x0

    .line 419
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->moveToCard(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;
    .locals 5

    .line 94
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;-><init>()V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->setRetainInstance(Z)V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private uploadKey(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 482
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    iput-object v9, v8, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedSaveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    return-void

    .line 490
    :cond_0
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 492
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v4

    .line 494
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;

    move-object v2, v0

    move-object v3, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;JLorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    .line 528
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v1, 0x3

    const v2, 0x7f110c2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v9, v1, v8, v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v9, v8, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 529
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->uploadKey(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finishWithResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 533
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedFinishResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-void

    .line 539
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "operation_result"

    .line 540
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, -0x1

    .line 541
    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 542
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->finishWithResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public keyConfigRevertToDefault()V
    .locals 5

    move-object/16 v2, p0

    .line 222
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->createDefaultSaveKeyringParcel(Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mSaveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    .line 227
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCustomKeyLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->isCustomConfiguration:Z

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->keyConfigRevertToDefault()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public keyConfigUseCustom(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 216
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mSaveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    .line 217
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCustomKeyLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    .line 218
    iput-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->isCustomConfiguration:Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->keyConfigUseCustom(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$checkEmailValidity$3$CreateKeyFinalFragment(Landroid/view/View;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mNameEdit:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method final synthetic lambda$onCreateView$0$CreateKeyFinalFragment(Landroid/view/View;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->createKey()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$CreateKeyFinalFragment(Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->keyConfigRevertToDefault()V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$CreateKeyFinalFragment(Landroid/view/View;)V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 147
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 242
    invoke-super {v1, v2}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 245
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->setHasOptionsMenu(Z)V

    if-eqz v2, :cond_0

    const-string v0, "state_save_keyring_parcel"

    .line 247
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state_save_keyring_parcel"

    .line 248
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->keyConfigUseCustom(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->keyConfigRevertToDefault()V

    .line 255
    :goto_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedFinishResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedFinishResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->finishWithResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    .line 260
    :cond_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedDisplayResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    .line 262
    :try_start_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedDisplayResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->displayResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedDisplayResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedDisplayResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    .line 267
    throw v2

    .line 270
    :cond_2
    :goto_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedSaveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    if-eqz v2, :cond_3

    .line 272
    :try_start_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedSaveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->uploadKey(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedSaveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    goto :goto_2

    :catchall_1
    move-exception v2

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mQueuedSaveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    .line 276
    throw v2

    :cond_3
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 190
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCreateOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCreateOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 193
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mMoveToCardOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mMoveToCardOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 196
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_2
    const v0, 0x8007

    if-eq v2, v0, :cond_3

    .line 211
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    if-ne v3, v2, :cond_4

    const-string v2, "save_keyring_parcel"

    .line 204
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    .line 205
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->keyConfigUseCustom(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    :cond_4
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d0003

    .line 168
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c0042

    .line 105
    invoke-virtual {v3, v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090249

    .line 107
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mNameEdit:Landroid/widget/TextView;

    const v4, 0x7f09014d

    .line 108
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mEmailEdit:Landroid/widget/TextView;

    const v4, 0x7f090102

    .line 109
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f0900f3

    .line 110
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mBackButton:Landroid/view/View;

    const v4, 0x7f0900ff

    .line 111
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCreateButton:Landroid/view/View;

    const v4, 0x7f09010c

    .line 112
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCustomKeyLayout:Landroid/view/View;

    const v4, 0x7f09028d

    .line 113
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCustomKeyRevertButton:Landroid/widget/Button;

    .line 115
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 118
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mNameEdit:Landroid/widget/TextView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mNameEdit:Landroid/widget/TextView;

    const v1, 0x7f110d45

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 126
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 133
    :cond_2
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mEmailEdit:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 135
    :cond_3
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mEmailEdit:Landroid/widget/TextView;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_2
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->checkEmailValidity()V

    .line 140
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCreateButton:Landroid/view/View;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$0;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mCustomKeyRevertButton:Landroid/widget/Button;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mBackButton:Landroid/view/View;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 175
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090224

    if-eq v0, v1, :cond_0

    .line 184
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 178
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "save_keyring_parcel"

    .line 179
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mSaveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x8007

    .line 180
    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 158
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    const v1, 0x7f090224

    .line 160
    invoke-interface {v3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 161
    iget-boolean v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 163
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onPrepareOptionsMenu(Landroid/view/Menu;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 233
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->isCustomConfiguration:Z

    if-eqz v0, :cond_0

    const-string v0, "state_save_keyring_parcel"

    .line 236
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mSaveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
