.class Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;
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

    .line 97
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 100
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V

    .line 102
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 104
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    invoke-virtual {v2, v0}, Lnordpol/android/NfcGuideView;->setVisibility(I)V

    .line 105
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v2, v0}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
