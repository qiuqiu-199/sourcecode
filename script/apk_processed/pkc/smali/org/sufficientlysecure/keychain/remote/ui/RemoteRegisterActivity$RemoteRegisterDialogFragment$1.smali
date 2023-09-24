.class Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;
.super Ljava/lang/Object;
.source "RemoteRegisterActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;

.field final synthetic val$iconClientApp:Landroid/widget/ImageView;

.field final synthetic val$titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 138
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->val$titleText:Landroid/widget/TextView;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;Landroid/widget/TextView;Landroid/widget/ImageView;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finishAsCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 152
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 158
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;--->finishAsCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishWithResult(Landroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 141
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 146
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;--->finishWithResult(Landroid/content/Intent;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 168
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;--->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 163
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;->val$titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment$1;--->setTitleText(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
