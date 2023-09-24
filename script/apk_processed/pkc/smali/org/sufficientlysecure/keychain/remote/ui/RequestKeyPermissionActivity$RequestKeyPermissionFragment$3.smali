.class Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;
.super Ljava/lang/Object;
.source "RequestKeyPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->setupListenersForPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 205
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 208
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->access$200(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->onClickCancel()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
