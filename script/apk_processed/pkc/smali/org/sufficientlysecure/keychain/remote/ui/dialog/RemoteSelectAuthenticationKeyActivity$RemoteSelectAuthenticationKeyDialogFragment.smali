.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RemoteSelectAuthenticationKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteSelectAuthenticationKeyDialogFragment"
.end annotation


# instance fields
.field private buttonCancel:Landroid/widget/Button;

.field private buttonSelect:Landroid/widget/Button;

.field private keyChoiceList:Landroid/support/v7/widget/RecyclerView;

.field private mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 136
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->buttonSelect:Landroid/widget/Button;

    return-object p0
.end method

.method private createMvpView(Landroid/view/View;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const v0, 0x7f090187

    .line 200
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 201
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    .line 202
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 204
    new-instance v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;

    invoke-direct {v4, v2, v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;Landroid/widget/ImageView;Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;--->createMvpView(Landroid/view/View;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupListenersForPresenter()V
    .locals 7

    move-object/16 v4, p0

    .line 257
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->buttonSelect:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$$Lambda$0;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->buttonCancel:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$$Lambda$1;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$$Lambda$2;

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;)V

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;--->setupListenersForPresenter()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$setupListenersForPresenter$0$RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 257
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->onClickSelect()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$1$RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->onClickCancel()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$2$RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment(Landroid/view/View;I)V
    .locals 0

    .line 260
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    invoke-virtual {p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->onKeyItemClick(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 173
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    .line 176
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 181
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 147
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 149
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 150
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0029

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 154
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f09009c

    .line 157
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->buttonSelect:Landroid/widget/Button;

    const v3, 0x7f09007c

    .line 158
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->buttonCancel:Landroid/widget/Button;

    const v3, 0x7f09005b

    .line 160
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    .line 161
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 162
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;

    const/4 v5, 0x1

    invoke-direct {v4, v7, v5, v5}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 165
    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->setupListenersForPresenter()V

    .line 166
    invoke-direct {v6, v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->createMvpView(Landroid/view/View;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    .line 168
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 190
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;)V

    .line 194
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    :cond_0
    return-void
.end method
