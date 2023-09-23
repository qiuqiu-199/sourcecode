.class Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;
.super Ljava/lang/Object;
.source "RemoteSecurityProblemDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->setupListenersForPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 325
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 328
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->onClickGotIt()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
