.class Lorg/sufficientlysecure/donations/DonationsFragment$2;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/donations/DonationsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/donations/DonationsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$2;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$2;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-boolean v0, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Donations Library"

    const-string v1, "Setup finished."

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/google/util/IabResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 249
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$2;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    const v0, 0x1080027

    sget v1, Lorg/sufficientlysecure/donations/R$string;->donations__google_android_market_not_supported_title:I

    iget-object v2, p0, Lorg/sufficientlysecure/donations/DonationsFragment$2;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    sget v3, Lorg/sufficientlysecure/donations/R$string;->donations__google_android_market_not_supported:I

    .line 250
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/donations/DonationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {p1, v0, v1, v2}, Lorg/sufficientlysecure/donations/DonationsFragment;->openDialog(IILjava/lang/String;)V

    return-void

    .line 255
    :cond_1
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$2;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-static {p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->access$000(Lorg/sufficientlysecure/donations/DonationsFragment;)Lorg/sufficientlysecure/donations/google/util/IabHelper;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    return-void
.end method
