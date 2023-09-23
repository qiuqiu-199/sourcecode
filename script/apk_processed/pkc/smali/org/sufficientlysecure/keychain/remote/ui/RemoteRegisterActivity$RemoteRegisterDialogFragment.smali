.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RemoteRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteRegisterDialogFragment"
.end annotation


# instance fields
.field private buttonAllow:Landroid/widget/Button;

.field private buttonCancel:Landroid/widget/Button;

.field private mvpView:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 78
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    return-object p0
.end method

.method private createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const v0, 0x7f090051

    .line 135
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090187

    .line 136
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 138
    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;

    invoke-direct {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;--->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupListenersForPresenter()V
    .locals 5

    move-object/16 v2, p0

    .line 174
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->buttonAllow:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->buttonCancel:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$3;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;--->setupListenersForPresenter()V"

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

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    .line 111
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 116
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 88
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    const v1, 0x7f0c0027

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

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->buttonAllow:Landroid/widget/Button;

    const v1, 0x7f09007c

    .line 98
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->buttonCancel:Landroid/widget/Button;

    .line 100
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->setupListenersForPresenter()V

    .line 101
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    .line 103
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 125
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;)V

    .line 129
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    :cond_0
    return-void
.end method
