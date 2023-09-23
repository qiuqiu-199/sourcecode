.class Lorg/sufficientlysecure/donations/DonationsFragment$7;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/donations/DonationsFragment;
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

    .line 357
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V
    .locals 3

    .line 359
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-boolean v0, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Donations Library"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/donations/DonationsFragment;->access$000(Lorg/sufficientlysecure/donations/DonationsFragment;)Lorg/sufficientlysecure/donations/google/util/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/google/util/IabResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 366
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-boolean p1, p1, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz p1, :cond_2

    const-string p1, "Donations Library"

    const-string v0, "Purchase successful."

    .line 367
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-static {p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->access$000(Lorg/sufficientlysecure/donations/DonationsFragment;)Lorg/sufficientlysecure/donations/google/util/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mConsumeFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {p1, p2, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->consumeAsync(Lorg/sufficientlysecure/donations/google/util/Purchase;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;)V

    .line 373
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    const p2, 0x108009b

    sget v0, Lorg/sufficientlysecure/donations/R$string;->donations__thanks_dialog_title:I

    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$7;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    sget v2, Lorg/sufficientlysecure/donations/R$string;->donations__thanks_dialog:I

    .line 374
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/donations/DonationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p1, p2, v0, v1}, Lorg/sufficientlysecure/donations/DonationsFragment;->openDialog(IILjava/lang/String;)V

    :cond_3
    return-void
.end method
