.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RemoteDeduplicateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteDeduplicateDialogFragment"
.end annotation


# instance fields
.field private buttonCancel:Landroid/widget/Button;

.field private buttonSelect:Landroid/widget/Button;

.field private keyChoiceList:Landroid/support/v7/widget/RecyclerView;

.field private mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 128
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method private createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const v0, 0x7f0902bc

    .line 192
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;Landroid/widget/TextView;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;--->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupListenersForPresenter()V
    .locals 5

    move-object/16 v2, p0

    .line 237
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->buttonSelect:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$$Lambda$0;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->buttonCancel:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$$Lambda$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;--->setupListenersForPresenter()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$setupListenersForPresenter$0$RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 237
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->onClickSelect()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$1$RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 238
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->onClickCancel()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 165
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    .line 168
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 173
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 139
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 141
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 142
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0025

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 146
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f09009c

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->buttonSelect:Landroid/widget/Button;

    const v2, 0x7f09007c

    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->buttonCancel:Landroid/widget/Button;

    const v2, 0x7f090141

    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    .line 153
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 154
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;

    const/4 v4, 0x1

    invoke-direct {v3, v6, v4, v4}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 157
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->setupListenersForPresenter()V

    .line 158
    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    move-result-object v6

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    .line 160
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 182
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;)V

    .line 186
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    :cond_0
    return-void
.end method
