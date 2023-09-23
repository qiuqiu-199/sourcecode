.class public abstract Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.source "LinkedIdCreateFinalFragment.java"


# instance fields
.field fingerprint:[B

.field mVerifiedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

.field private mVerifyAnimator:Landroid/widget/ViewAnimator;

.field private mVerifyButtonAnimator:Landroid/widget/ViewAnimator;

.field private mVerifyImage:Landroid/widget/ImageView;

.field private mVerifyStatus:Landroid/widget/TextView;

.field private masterKeyId:J


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 49
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifiedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;ZLjava/lang/Boolean;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->setVerifyProgress(ZLjava/lang/Boolean;)V

    return-void
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 72
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->masterKeyId:J

    .line 73
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->fingerprint:[B

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setVerifyProgress(ZLjava/lang/Boolean;)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move-object/16 v5, p2

    const/4 v0, 0x2

    if-nez v5, :cond_1

    .line 108
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyStatus:Landroid/widget/TextView;

    const v1, 0x7f110962

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->displayButton(I)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyStatus:Landroid/widget/TextView;

    const v1, 0x7f110961

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyImage:Landroid/widget/ImageView;

    const v1, 0x7f080136

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->displayButton(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyStatus:Landroid/widget/TextView;

    const v0, 0x7f11095f

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyImage:Landroid/widget/ImageView;

    const v0, 0x7f080132

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v5, 0x1

    .line 121
    invoke-virtual {v3, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->displayButton(I)V

    .line 123
    :goto_1
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->setVerifyProgress(ZLjava/lang/Boolean;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$LinkedIdCreateFinalFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method public createOperationInput()Landroid/os/Parcelable;
    .locals 6

    move-object/16 v3, p0

    .line 204
    iget-wide v0, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->masterKeyId:J

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->fingerprint:[B

    .line 205
    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 206
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifiedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->fromResource(Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;)Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->toUserAttribute()Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)V

    .line 208
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->createOperationInput()Landroid/os/Parcelable;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected cryptoOperation()V
    .locals 6

    move-object/16 v3, p0

    .line 181
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifiedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110949

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 183
    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    .line 187
    :cond_0
    invoke-super {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->cryptoOperation()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->cryptoOperation()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 192
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifiedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v0, 0x7f110949

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    .line 194
    invoke-interface {v3, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    .line 198
    :cond_0
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public displayButton(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 127
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyButtonAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyButtonAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->displayButton(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
.end method

.method final synthetic lambda$onCreateView$0$LinkedIdCreateFinalFragment(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->cryptoOperation()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$LinkedIdCreateFinalFragment(Landroid/view/View;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$LinkedIdCreateFinalFragment(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->proofVerify()V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$LinkedIdCreateFinalFragment(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->proofVerify()V

    return-void
.end method

.method protected abstract newView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 65
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 68
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$0;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V

    invoke-virtual {v2, v1, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 79
    invoke-virtual {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->newView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09024c

    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$1;

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v2, 0x7f09005e

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$2;

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090363

    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyAnimator:Landroid/widget/ViewAnimator;

    const v2, 0x7f090362

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyImage:Landroid/widget/ImageView;

    const v2, 0x7f090364

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyStatus:Landroid/widget/TextView;

    const v2, 0x7f090360

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyButtonAnimator:Landroid/widget/ViewAnimator;

    const v2, 0x7f0900a8

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$3;

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090098

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$4;

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    const/4 p0, 0x0

    .line 98
    invoke-direct {v0, v2, p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->setVerifyProgress(ZLjava/lang/Boolean;)V

    .line 99
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->mVerifyStatus:Landroid/widget/TextView;

    const p0, 0x7f110960

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(I)V

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 218
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 213
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected proofVerify()V
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->setVerifyProgress(ZLjava/lang/Boolean;)V

    .line 136
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 175
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;--->proofVerify()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
