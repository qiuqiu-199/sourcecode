.class Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;
.super Ljava/lang/Object;
.source "RemoteSecurityProblemDialogActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private layoutInitialized:Z

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

.field final synthetic val$buttonBarAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

.field final synthetic val$explanationText:Landroid/widget/TextView;

.field final synthetic val$iconClientApp:Landroid/widget/ImageView;

.field final synthetic val$overrideText:Landroid/widget/TextView;

.field final synthetic val$recommendText:Landroid/widget/TextView;

.field final synthetic val$secondaryLayoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 167
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$explanationText:Landroid/widget/TextView;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$secondaryLayoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$buttonBarAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iput-object p3, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$recommendText:Landroid/widget/TextView;

    iput-object p4, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$overrideText:Landroid/widget/TextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 168
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;Landroid/widget/TextView;Landroid/widget/TextView;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showGeneric(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 205
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$explanationText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$secondaryLayoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 207
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$buttonBarAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    const/4 v3, 0x1

    .line 208
    iput-boolean v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showGeneric(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showGenericWithRecommendation(II)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    .line 213
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$explanationText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$recommendText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$secondaryLayoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iget-boolean v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 216
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$buttonBarAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iget-boolean v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 217
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showGenericWithRecommendation(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showGenericWithRecommendation(Ljava/lang/String;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 222
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$explanationText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$recommendText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$secondaryLayoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iget-boolean v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 225
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$buttonBarAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iget-boolean v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 226
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->layoutInitialized:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showGenericWithRecommendation(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finishAsCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 172
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 178
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->finishAsCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishAsSuppressed()V
    .locals 5

    move-object/16 v2, p0

    .line 183
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 188
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 189
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->finishAsSuppressed()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 194
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutEncryptInsecureBitsize(II)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    const/4 v4, 0x0

    .line 248
    invoke-static {v3, v4, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const v3, 0x7f1107e9

    .line 251
    invoke-virtual {v4, v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1107ea

    .line 250
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutEncryptInsecureBitsize(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutEncryptNotWhitelistedCurve(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 266
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const v4, 0x7f1107eb

    .line 267
    invoke-virtual {v0, v4, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1107f0

    .line 266
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(Ljava/lang/String;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutEncryptNotWhitelistedCurve(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutEncryptUnidentifiedKeyProblem()V
    .locals 5

    move-object/16 v2, p0

    const v0, 0x7f1107ec

    const v1, 0x7f1107f0

    .line 282
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutEncryptUnidentifiedKeyProblem()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutInsecureHashAlgorithm(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 242
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 243
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getHashAlgoName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const v4, 0x7f1107ed

    .line 242
    invoke-virtual {v0, v4, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGeneric(Ljava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutInsecureHashAlgorithm(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutInsecureSymmetric(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 236
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 237
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const v4, 0x7f1107f5

    .line 236
    invoke-virtual {v0, v4, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGeneric(Ljava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutInsecureSymmetric(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutMissingMdc()V
    .locals 5

    move-object/16 v2, p0

    const v0, 0x7f1107ee

    const v1, 0x7f1107ef

    .line 231
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutMissingMdc()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutSignInsecureBitsize(II)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    const/4 v4, 0x0

    .line 257
    invoke-static {v3, v4, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const v3, 0x7f1107f1

    .line 260
    invoke-virtual {v4, v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1107f2

    .line 259
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutSignInsecureBitsize(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutSignNotWhitelistedCurve(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 274
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const v4, 0x7f1107f3

    .line 275
    invoke-virtual {v0, v4, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1107f0

    .line 274
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(Ljava/lang/String;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutSignNotWhitelistedCurve(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLayoutSignUnidentifiedKeyProblem()V
    .locals 5

    move-object/16 v2, p0

    const v0, 0x7f1107f4

    const v1, 0x7f1107f0

    .line 290
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->showGenericWithRecommendation(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showLayoutSignUnidentifiedKeyProblem()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showOverrideButton()V
    .locals 5

    move-object/16 v2, p0

    .line 312
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showOverrideButton()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showOverrideMessage(I)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 298
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$secondaryLayoutAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 299
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$buttonBarAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    invoke-virtual {v0, v1, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(IZ)V

    .line 300
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->val$overrideText:Landroid/widget/TextView;

    iget-object v2, v6, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f11011a

    invoke-virtual {v2, v4, v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, v6, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    new-array v1, v1, [Ljava/lang/Object;

    .line 302
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    const v7, 0x7f110117

    invoke-virtual {v2, v7, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showOverrideMessage(I)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showOverrideUndoButton()V
    .locals 5

    move-object/16 v2, p0

    .line 318
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showOverrideUndoButton()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showViewKeyButton()V
    .locals 5

    move-object/16 v2, p0

    .line 307
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$1;--->showViewKeyButton()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
