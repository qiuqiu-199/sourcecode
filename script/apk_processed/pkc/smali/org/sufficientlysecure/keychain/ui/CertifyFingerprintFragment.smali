.class public Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;
.super Landroid/support/v4/app/Fragment;
.source "CertifyFingerprintFragment.java"


# static fields
.field static final REQUEST_CERTIFY:I = 0x1


# instance fields
.field private vFingerprint:Landroid/widget/TextView;

.field private viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;
    .locals 4

    .line 46
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 75
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->vFingerprint:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->formatFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startCertifyActivity()V
    .locals 10

    move-object/16 v7, p0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "extra_key_ids"

    const/4 v2, 0x1

    .line 81
    new-array v3, v2, [J

    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getMasterKeyId()J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 82
    invoke-virtual {v7, v0, v2}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;--->startCertifyActivity()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$CertifyFingerprintFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$CertifyFingerprintFragment(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$CertifyFingerprintFragment(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->startCertifyActivity()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 63
    invoke-super {v1, v2}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 66
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment$$Lambda$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;)V

    invoke-virtual {v2, v1, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v3, p0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    .line 94
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0038

    const/4 v0, 0x0

    .line 51
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900cd

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->vFingerprint:Landroid/widget/TextView;

    const v3, 0x7f0900ca

    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0900cb

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
