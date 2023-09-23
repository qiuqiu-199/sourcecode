.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewKeyKeybaseFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;,
        Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeybaseFingerprint:Ljava/lang/String;

.field private mKeybaseOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mKeybaseProof:Ljava/lang/String;

.field private mProof:Lcom/textuality/keybase/lib/Proof;

.field private mProofListing:Landroid/widget/TableLayout;

.field private mProofVerifyDetail:Landroid/widget/TextView;

.field private mProofVerifyHeader:Landroid/view/View;

.field private mReportHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 61
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/textuality/keybase/lib/Proof;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->appendIfOK(Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/textuality/keybase/lib/Proof;)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;I)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getProofNarrative(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;I)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->haveProofFor(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->verify(Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mReportHeader:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/widget/TableLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofListing:Landroid/widget/TableLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/view/LayoutInflater;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private appendIfOK(Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/textuality/keybase/lib/Proof;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/textuality/keybase/lib/Proof;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Lcom/textuality/keybase/lib/Proof;",
            ")V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 309
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->appendIfOK(Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/textuality/keybase/lib/Proof;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private displaySpannableResult(Landroid/text/SpannableStringBuilder;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 460
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyDetail:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 463
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->displaySpannableResult(Landroid/text/SpannableStringBuilder;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getProofNarrative(I)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    packed-switch v2, :pswitch_data_0

    const v2, 0x7f110860

    goto :goto_0

    :pswitch_0
    const v2, 0x7f110861

    goto :goto_0

    :pswitch_1
    const v2, 0x7f11085f

    goto :goto_0

    :pswitch_2
    const v2, 0x7f11085e

    goto :goto_0

    :pswitch_3
    const v2, 0x7f11085d

    goto :goto_0

    :pswitch_4
    const v2, 0x7f11085c

    goto :goto_0

    :pswitch_5
    const v2, 0x7f11085b

    goto :goto_0

    :pswitch_6
    const v2, 0x7f11085a

    .line 301
    :goto_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, ""

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->getProofNarrative(I)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private haveProofFor(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    const/4 v0, 0x1

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->haveProofFor(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;
    .locals 4

    .line 80
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->startSearch(Ljava/lang/String;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startSearch(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 118
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    .line 120
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;

    invoke-direct {v1, v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->putOrbotInRequiredState(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;

    invoke-direct {v1, v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->startSearch(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private verify(Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 341
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProof:Lcom/textuality/keybase/lib/Proof;

    .line 342
    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseProof:Ljava/lang/String;

    .line 343
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseFingerprint:Ljava/lang/String;

    .line 345
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyDetail:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v3, 0x7f110c2e

    .line 348
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x1

    invoke-direct {v2, v0, v1, v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 349
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->verify(Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ViewKeyKeybaseFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;
    .locals 6

    move-object/16 v3, p0

    .line 363
    new-instance v0, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseProof:Ljava/lang/String;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseFingerprint:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 102
    invoke-super {v1, v2}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 105
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$$Lambda$0;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)V

    invoke-virtual {v2, v1, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 354
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mKeybaseOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0109

    const/4 v0, 0x0

    .line 85
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 86
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f090385

    .line 88
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mReportHeader:Landroid/widget/TextView;

    const v2, 0x7f090379

    .line 89
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofListing:Landroid/widget/TableLayout;

    const v2, 0x7f09037b

    .line 90
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyHeader:Landroid/view/View;

    const v2, 0x7f09037a

    .line 91
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyDetail:Landroid/widget/TextView;

    .line 92
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mReportHeader:Landroid/widget/TextView;

    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofListing:Landroid/widget/TableLayout;

    invoke-virtual {v2, p0}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 94
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyHeader:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProofVerifyDetail:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 438
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 440
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v1, 0x7f110864

    .line 442
    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 443
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v6

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget v6, v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mMsgId:I

    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const v6, 0x7f110869

    .line 445
    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 447
    :cond_0
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    .line 448
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, "\n\n"

    .line 449
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->displaySpannableResult(Landroid/text/SpannableStringBuilder;)V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;)V
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 369
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 371
    iget-object v0, v11, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mProofUrl:Ljava/lang/String;

    .line 372
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceUrl:Ljava/lang/String;

    .line 373
    iget-object v11, v11, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceLabel:Ljava/lang/String;

    .line 375
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->mProof:Lcom/textuality/keybase/lib/Proof;

    .line 378
    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const v3, 0x7f110850

    .line 395
    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    const v3, 0x7f11086b

    .line 386
    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    const v3, 0x7f110868

    .line 380
    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    const v3, 0x7f110867

    .line 392
    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    const v3, 0x7f110856

    .line 389
    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_5
    const v3, 0x7f110852

    .line 383
    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 399
    :goto_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v5, 0x7f110865

    .line 401
    invoke-virtual {v10, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 402
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    .line 403
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v5, "\n\n"

    .line 404
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 405
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 406
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 408
    new-instance v7, Landroid/text/style/URLSpan;

    invoke-direct {v7, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v4, v7, v5, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 411
    :cond_0
    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->getType()I

    move-result v0

    if-ne v6, v0, :cond_1

    const-string v0, " "

    .line 412
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const v3, 0x7f110855

    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, " "

    .line 414
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const v3, 0x7f110854

    invoke-virtual {v10, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 416
    :goto_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 417
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v4, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 419
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {v4, v3, v0, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v11, 0x4

    .line 421
    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->getType()I

    move-result v0

    if-ne v11, v0, :cond_2

    const-string v11, ", "

    .line 422
    invoke-virtual {v4, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const v0, 0x7f110866

    .line 423
    invoke-virtual {v10, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v0, " \u201c"

    .line 424
    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/textuality/keybase/lib/Proof;->getHandle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v0, "\u201d, "

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    const-string v11, " "

    .line 426
    invoke-virtual {v4, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const v0, 0x7f110851

    invoke-virtual {v10, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 428
    invoke-direct {v10, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->displaySpannableResult(Landroid/text/SpannableStringBuilder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;)V"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;)V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
