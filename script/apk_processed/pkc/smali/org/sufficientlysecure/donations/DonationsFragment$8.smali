.class Lorg/sufficientlysecure/donations/DonationsFragment$8;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;


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

    .line 380
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$8;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lorg/sufficientlysecure/donations/google/util/Purchase;Lorg/sufficientlysecure/donations/google/util/IabResult;)V
    .locals 3

    .line 382
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$8;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-boolean v0, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Donations Library"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption finished. Purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$8;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-static {p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->access$000(Lorg/sufficientlysecure/donations/DonationsFragment;)Lorg/sufficientlysecure/donations/google/util/IabHelper;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 388
    :cond_1
    invoke-virtual {p2}, Lorg/sufficientlysecure/donations/google/util/IabResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 389
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$8;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-boolean p1, p1, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz p1, :cond_2

    const-string p1, "Donations Library"

    const-string p2, "Consumption successful. Provisioning."

    .line 390
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$8;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-boolean p1, p1, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz p1, :cond_3

    const-string p1, "Donations Library"

    const-string p2, "End consumption flow."

    .line 393
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method