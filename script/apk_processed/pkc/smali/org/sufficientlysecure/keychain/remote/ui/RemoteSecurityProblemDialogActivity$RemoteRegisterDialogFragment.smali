.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RemoteSecurityProblemDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteRegisterDialogFragment"
.end annotation


# static fields
.field public static final BUTTON_BAR_OVERRIDE:I = 0x1

.field public static final BUTTON_BAR_REGULAR:I = 0x0

.field public static final SECONDARY_CHILD_NONE:I = 0x0

.field public static final SECONDARY_CHILD_OVERRIDE:I = 0x2

.field public static final SECONDARY_CHILD_RECOMMENDATION:I = 0x1


# instance fields
.field private buttonGotIt:Landroid/widget/Button;

.field private buttonOverride:Landroid/widget/Button;

.field private buttonOverrideBack:Landroid/widget/Button;

.field private buttonOverrideConfirm:Landroid/widget/Button;

.field private buttonOverrideUndo:Landroid/widget/Button;

.field private buttonViewKey:Landroid/widget/Button;

.field private mvpView:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 84
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonViewKey:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverride:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideUndo:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    return-object p0
.end method

.method private createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    const v0, 0x7f09019b

    .line 155
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090187

    .line 156
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v1, 0x7f09012c

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    const v1, 0x7f09012a

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const v1, 0x7f090129

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const v1, 0x7f09012b

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v0, 0x7f090128

    .line 165
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    .line 167
    new-instance v11, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;

    move-object v2, v11

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v11

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;--->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupListenersForPresenter()V
    .locals 5

    move-object/16 v2, p0

    .line 325
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonGotIt:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonViewKey:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$3;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverride:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideUndo:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$5;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$5;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideBack:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$6;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$6;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideConfirm:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$7;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$7;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;--->setupListenersForPresenter()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 128
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    .line 131
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 136
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 104
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 106
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v5

    .line 107
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v1, 0x7f0c00dd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f090076

    .line 113
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonGotIt:Landroid/widget/Button;

    const v1, 0x7f0900aa

    .line 114
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonViewKey:Landroid/widget/Button;

    const v1, 0x7f09008f

    .line 115
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverride:Landroid/widget/Button;

    const v1, 0x7f090092

    .line 116
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideUndo:Landroid/widget/Button;

    const v1, 0x7f090090

    .line 117
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideBack:Landroid/widget/Button;

    const v1, 0x7f090091

    .line 118
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->buttonOverrideConfirm:Landroid/widget/Button;

    .line 120
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->setupListenersForPresenter()V

    .line 121
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->mvpView:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    .line 123
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 145
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setView(Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;)V

    .line 149
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    :cond_0
    return-void
.end method
