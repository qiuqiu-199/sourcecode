.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;
.super Ljava/lang/Object;
.source "RemoteSelectIdKeyActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->createMvpView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

.field final synthetic val$addressText:Landroid/widget/TextView;

.field final synthetic val$autocryptHint:Landroid/widget/TextView;

.field final synthetic val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

.field final synthetic val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

.field final synthetic val$rootView:Landroid/view/ViewGroup;

.field final synthetic val$titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Landroid/view/ViewGroup;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 253
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$titleText:Landroid/widget/TextView;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$autocryptHint:Landroid/widget/TextView;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$addressText:Landroid/widget/TextView;

    iput-object p3, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iput-object p4, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Landroid/view/ViewGroup;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setSelectionIcons(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 292
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 298
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 300
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0600f6

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 302
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v0, v1, v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->setSelectionDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->setSelectionIcons(Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public displayOverflowMenu()V
    .locals 6

    move-object/16 v3, p0

    .line 390
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 391
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0d0014

    .line 392
    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 393
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1$$Lambda$0;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 397
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->displayOverflowMenu()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishAndReturn(J)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 256
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "sign_key_id"

    .line 262
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v4, -0x1

    .line 263
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->finishAndReturn(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishAsCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 269
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 275
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->finishAsCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public highlightKey(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 358
    new-instance v0, Landroid/support/transition/Fade;

    invoke-direct {v0}, Landroid/support/transition/Fade;-><init>()V

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Fade;->setDuration(J)Landroid/support/transition/Transition;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    .line 359
    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    .line 360
    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;)V

    .line 361
    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    move-result-object v0

    .line 367
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 369
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->setActiveItem(Ljava/lang/Integer;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->highlightKey(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$displayOverflowMenu$0$RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1(Landroid/view/MenuItem;)Z
    .locals 0

    .line 394
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onClickMenuListAllKeys()V

    const/4 p1, 0x0

    return p1
.end method

.method public launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 381
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$500(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAddressText(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 307
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$addressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->setAddressText(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyListData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 353
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->setData(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->setKeyListData(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setShowAutocryptHint(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 288
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$autocryptHint:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->setShowAutocryptHint(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleClientIconAndName(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    .line 280
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$titleText:Landroid/widget/TextView;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const v5, 0x7f110cf5

    invoke-virtual {v1, v5, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$autocryptHint:Landroid/widget/TextView;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v4

    const v8, 0x7f110822

    invoke-virtual {v1, v8, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->setSelectionIcons(Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->setTitleClientIconAndName(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showImportInternalError()V
    .locals 6

    move-object/16 v3, p0

    .line 376
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110195

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showImportInternalError()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutEmpty()V
    .locals 5

    move-object/16 v2, p0

    .line 312
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutEmpty()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutGenerateOk()V
    .locals 5

    move-object/16 v2, p0

    .line 341
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902bf

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 342
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutGenerateOk()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutGenerateProgress()V
    .locals 5

    move-object/16 v2, p0

    .line 335
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902c0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 336
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutGenerateProgress()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutGenerateSave()V
    .locals 5

    move-object/16 v2, p0

    .line 347
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902c1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 348
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutGenerateSave()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutImportExplanation()V
    .locals 5

    move-object/16 v2, p0

    .line 329
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902c2

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 330
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutImportExplanation()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutSelectKeyList()V
    .locals 5

    move-object/16 v2, p0

    .line 323
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902c3

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 324
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutSelectKeyList()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutSelectNoKeys()V
    .locals 5

    move-object/16 v2, p0

    .line 317
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->val$layoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f0902c4

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 318
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showLayoutSelectNoKeys()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showOpenKeychainIntent()V
    .locals 6

    move-object/16 v3, p0

    .line 402
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment$1;--->showOpenKeychainIntent()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
