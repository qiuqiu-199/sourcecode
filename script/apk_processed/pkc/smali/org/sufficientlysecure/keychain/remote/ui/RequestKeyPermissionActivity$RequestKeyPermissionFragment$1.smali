.class Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;
.super Ljava/lang/Object;
.source "RequestKeyPermissionActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->createMvpView(Landroid/view/View;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

.field final synthetic val$iconClientApp:Landroid/widget/ImageView;

.field final synthetic val$keyCreationDateView:Landroid/widget/TextView;

.field final synthetic val$keyEmailView:Landroid/widget/TextView;

.field final synthetic val$keyNameView:Landroid/widget/TextView;

.field final synthetic val$keyUnavailableWarning:Landroid/view/View;

.field final synthetic val$titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 142
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyUnavailableWarning:Landroid/view/View;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyNameView:Landroid/widget/TextView;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyEmailView:Landroid/widget/TextView;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyCreationDateView:Landroid/widget/TextView;

    iput-object p3, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$titleText:Landroid/widget/TextView;

    iput-object p4, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public displayKeyInfo(Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 157
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyNameView:Landroid/widget/TextView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyEmailView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatUserId(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 158
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyCreationDateView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatCreationDate(Landroid/widget/TextView;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->displayKeyInfo(Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finish()V
    .locals 6

    move-object/16 v3, p0

    .line 163
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/4 v2, -0x1

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->finish()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishAsCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 176
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 182
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->finishAsCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 192
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$iconClientApp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 187
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->setTitleText(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public switchToLayoutNoSecret()V
    .locals 5

    move-object/16 v2, p0

    .line 151
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyUnavailableWarning:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->switchToLayoutNoSecret()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public switchToLayoutRequestKeyChoice()V
    .locals 5

    move-object/16 v2, p0

    .line 145
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->val$keyUnavailableWarning:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->access$100(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$1;--->switchToLayoutRequestKeyChoice()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
