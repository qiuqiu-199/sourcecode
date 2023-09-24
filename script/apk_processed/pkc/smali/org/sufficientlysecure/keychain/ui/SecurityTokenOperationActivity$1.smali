.class Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;
.super Ljava/lang/Object;
.source "SecurityTokenOperationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 116
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 119
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V

    .line 121
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V

    .line 122
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 124
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    invoke-virtual {v2, v0}, Lnordpol/android/NfcGuideView;->setVisibility(I)V

    .line 125
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v2, v0}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
