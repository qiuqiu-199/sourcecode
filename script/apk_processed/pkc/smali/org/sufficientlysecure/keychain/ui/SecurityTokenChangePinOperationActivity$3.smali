.class Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;
.super Ljava/lang/Object;
.source "SecurityTokenChangePinOperationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 116
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;---><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 119
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "token_info"

    .line 120
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
