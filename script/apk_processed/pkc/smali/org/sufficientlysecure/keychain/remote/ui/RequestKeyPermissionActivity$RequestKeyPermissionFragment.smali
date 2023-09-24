.class public Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RequestKeyPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestKeyPermissionFragment"
.end annotation


# instance fields
.field private buttonAllow:Landroid/widget/Button;

.field private buttonCancel:Landroid/widget/Button;

.field private mvpView:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 79
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)Landroid/widget/Button;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->buttonAllow:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    return-object p0
.end method

.method private createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    const v0, 0x7f0902b9

    .line 135
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f0901b0

    .line 136
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f0901ae

    .line 137
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f0901ac

    .line 138
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f090187

    .line 139
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const v0, 0x7f090280

    .line 140
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 142
    new-instance v10, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;

    move-object v1, v10

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v10

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;--->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupListenersForPresenter()V
    .locals 5

    move-object/16 v2, p0

    .line 198
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->buttonAllow:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->buttonCancel:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;--->setupListenersForPresenter()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 108
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    .line 111
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 116
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 88
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 90
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v5

    .line 91
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v1, 0x7f0c0028

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 95
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f090076

    .line 97
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->buttonAllow:Landroid/widget/Button;

    const v1, 0x7f09007c

    .line 98
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->buttonCancel:Landroid/widget/Button;

    .line 100
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->setupListenersForPresenter()V

    .line 101
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    .line 103
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 125
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;)V

    .line 129
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    :cond_0
    return-void
.end method
