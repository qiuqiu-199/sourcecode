.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateKeyNameFragment.java"


# instance fields
.field mBackButton:Landroid/view/View;

.field mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

.field mNameEdit:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

.field mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 33
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;
    .locals 5

    .line 44
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private nextClicked()V
    .locals 6

    move-object/16 v3, p0

    .line 82
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNameEdit:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNameEdit:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    .line 84
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;

    move-result-object v0

    .line 85
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;--->nextClicked()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$CreateKeyNameFragment(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$CreateKeyNameFragment(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->nextClicked()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 76
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0043

    const/4 v0, 0x0

    .line 55
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900fe

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNameEdit:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    const v3, 0x7f0900f3

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mBackButton:Landroid/view/View;

    const v3, 0x7f0900ff

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNextButton:Landroid/view/View;

    .line 62
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNameEdit:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 66
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNameEdit:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->requestFocus()Z

    .line 68
    :cond_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mBackButton:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->mNextButton:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
