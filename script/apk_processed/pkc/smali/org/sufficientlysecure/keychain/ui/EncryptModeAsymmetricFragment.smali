.class public Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;
.super Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;
.source "EncryptModeAsymmetricFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;
    }
.end annotation


# static fields
.field public static final ARG_ENCRYPTION_KEY_IDS:Ljava/lang/String; = "encryption_key_ids"

.field public static final ARG_SINGATURE_KEY_ID:Ljava/lang/String; = "signature_key_id"


# instance fields
.field keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

.field private mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 53
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$onCreateView$0$EncryptModeAsymmetricFragment(Landroid/widget/ViewAnimator;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_1
    return-void
.end method

.method public static newInstance(J[J)Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;
    .locals 6

    move-wide/16 v3, p0

    move-object/16 v5, p2

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "signature_key_id"

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "encryption_key_ids"

    .line 67
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 68
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->newInstance(J[J)Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private preselectKeysFromArguments(Landroid/os/Bundle;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    const-string v0, "signature_key_id"

    .line 139
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 141
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setPreSelectedKeyId(J)V

    :cond_0
    const-string v0, "encryption_key_ids"

    .line 143
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    if-eqz v6, :cond_1

    .line 145
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->setPreSelectedKeyIds([J)V

    :cond_1
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->preselectKeysFromArguments(Landroid/os/Bundle;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAsymmetricEncryptionKeyIds()[J
    .locals 9

    move-object/16 v6, p0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->getSelectedChipList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    .line 194
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 199
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->getAsymmetricEncryptionKeyIds()[J"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAsymmetricEncryptionUserIds()[Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->getSelectedChipList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    .line 210
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->getAsymmetricEncryptionUserIds()[Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAsymmetricSigningKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 187
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->getAsymmetricSigningKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 5

    move-object/16 v2, p0

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should never happen, this is a programming error!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAsymmetric()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->isAsymmetric()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 125
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;

    .line 128
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->getSignKeyLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$1;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;)Landroid/arch/lifecycle/Observer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 129
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->getEncryptRecipientLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$2;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;)Landroid/arch/lifecycle/Observer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 134
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->preselectKeysFromArguments(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 75
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c006d

    const/4 v0, 0x0

    .line 85
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902cf

    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    const v3, 0x7f09027d

    .line 88
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    const v3, 0x7f090047

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 91
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    invoke-virtual {p0, v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->setFilterableListLayout(Landroid/view/ViewGroup;)V

    const v3, 0x7f090289

    .line 93
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    .line 94
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;-><init>(Landroid/widget/ViewAnimator;)V

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setOnKeyChangedListener(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;)V

    .line 100
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mSignKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    const p0, 0x7f1100b7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setShowNone(Ljava/lang/Integer;)V

    const v3, 0x7f090282

    .line 102
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    .line 103
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->mEncryptKeyView:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;Landroid/widget/ViewAnimator;)V

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->addChipsListener(Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
