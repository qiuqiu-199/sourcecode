.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;
.super Ljava/lang/Object;
.source "RemoteSelectAuthenticationKeyActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->createMvpView(Landroid/view/View;Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

.field final synthetic val$iconClientApp:Landroid/widget/ImageView;

.field final synthetic val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;Landroid/widget/ImageView;Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 204
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;Landroid/widget/ImageView;Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finish(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 207
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    check-cast v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;J)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;--->finish(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishAsCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 217
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 223
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;--->finishAsCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setActiveItem(Ljava/lang/Integer;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 246
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->setActiveItem(Ljava/lang/Integer;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;--->setActiveItem(Ljava/lang/Integer;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEnableSelectButton(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 251
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;--->setEnableSelectButton(Z)V"

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

    .line 241
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->setData(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;--->setKeyListData(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 228
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .line 232
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 233
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0600f2

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 236
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;->val$keyChoiceAdapter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-virtual {v0, v1, v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->setSelectionDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment$1;--->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
