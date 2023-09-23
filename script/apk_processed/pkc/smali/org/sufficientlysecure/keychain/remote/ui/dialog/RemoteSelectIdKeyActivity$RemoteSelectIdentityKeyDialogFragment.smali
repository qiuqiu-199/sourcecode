.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RemoteSelectIdKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteSelectIdentityKeyDialogFragment"
.end annotation


# instance fields
.field private buttonExplBack:Landroid/view/View;

.field private buttonExplGotIt:Landroid/view/View;

.field private buttonGenOkBack:Landroid/view/View;

.field private buttonGenOkFinish:Landroid/view/View;

.field private buttonGotoOpenKeychain:Landroid/view/View;

.field private buttonKeyListCancel:Landroid/view/View;

.field private buttonKeyListOther:Landroid/view/View;

.field private buttonNoKeysCancel:Landroid/view/View;

.field private buttonNoKeysExisting:Landroid/view/View;

.field private buttonNoKeysNew:Landroid/view/View;

.field private buttonOverflow:Landroid/view/View;

.field private keyChoiceList:Landroid/support/v7/widget/RecyclerView;

.field private mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 158
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonOverflow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonKeyListOther:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonKeyListCancel:Landroid/view/View;

    return-object p0
.end method

.method private createMvpView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    .line 246
    new-instance v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v10}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    const v10, 0x7f090311

    .line 247
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v2, v10

    check-cast v2, Landroid/widget/TextView;

    const v10, 0x7f090312

    .line 248
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x7f0901a7

    .line 249
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    check-cast v3, Landroid/widget/TextView;

    const v10, 0x7f0901c7

    .line 250
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    check-cast v6, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    .line 251
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 253
    new-instance v10, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;

    move-object v0, v10

    move-object v1, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Landroid/view/ViewGroup;)V

    return-object v10

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;--->createMvpView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupListenersForPresenter()V
    .locals 7

    move-object/16 v4, p0

    .line 414
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonOverflow:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$0;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonKeyListOther:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$1;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonKeyListCancel:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$2;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonNoKeysNew:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$3;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonNoKeysExisting:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$4;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonNoKeysCancel:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$5;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonExplBack:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$6;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonExplGotIt:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$7;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonGenOkBack:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$8;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$8;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonGenOkFinish:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$9;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$9;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonGotoOpenKeychain:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$10;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$10;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$$Lambda$11;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)V

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;--->setupListenersForPresenter()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$setupListenersForPresenter$0$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 414
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickOverflowMenu()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$1$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 416
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickKeyListOther()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$10$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 429
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickGoToOpenKeychain()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$11$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;I)V
    .locals 0

    .line 432
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onKeyItemClick(I)V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$2$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 417
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickKeyListCancel()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$3$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 419
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickNoKeysGenerate()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$4$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 420
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickNoKeysExisting()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$5$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 421
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickNoKeysCancel()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$6$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 423
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickExplanationBack()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$7$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 424
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickExplanationGotIt()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$8$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 426
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickGenerateOkBack()V

    return-void
.end method

.method final synthetic lambda$setupListenersForPresenter$9$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 427
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickGenerateOkFinish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 218
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    .line 221
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 226
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onDialogCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 178
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 180
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 181
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c002c

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 185
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f090262

    .line 188
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonOverflow:Landroid/view/View;

    const v3, 0x7f090088

    .line 190
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonKeyListCancel:Landroid/view/View;

    const v3, 0x7f090089

    .line 191
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonKeyListOther:Landroid/view/View;

    const v3, 0x7f09008e

    .line 193
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonNoKeysNew:Landroid/view/View;

    const v3, 0x7f09008d

    .line 194
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonNoKeysExisting:Landroid/view/View;

    const v3, 0x7f09008c

    .line 195
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonNoKeysCancel:Landroid/view/View;

    const v3, 0x7f090080

    .line 197
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonExplBack:Landroid/view/View;

    const v3, 0x7f090081

    .line 198
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonExplGotIt:Landroid/view/View;

    const v3, 0x7f090084

    .line 200
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonGenOkBack:Landroid/view/View;

    const v3, 0x7f090085

    .line 201
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonGenOkFinish:Landroid/view/View;

    const v3, 0x7f090086

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->buttonGotoOpenKeychain:Landroid/view/View;

    const v3, 0x7f09018a

    .line 205
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    .line 206
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->keyChoiceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;

    const/4 v5, 0x1

    invoke-direct {v4, v7, v5, v5}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 210
    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->setupListenersForPresenter()V

    .line 211
    invoke-direct {v6, v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->createMvpView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    move-result-object v7

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    .line 213
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 235
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;)V

    .line 239
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    :cond_0
    return-void
.end method
