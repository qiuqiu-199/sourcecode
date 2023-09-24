.class public Lorg/sufficientlysecure/donations/google/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;,
        Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    .line 76
    iput-object v1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 79
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSetupDone:Z

    .line 82
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDisposed:Z

    .line 85
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSubscriptionsSupported:Z

    .line 89
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncInProgress:Z

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    .line 167
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 304
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 770
    array-length v0, v1

    if-ge v2, v0, :cond_0

    aget-object p0, v1, v2

    return-object p0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 773
    array-length v1, v0

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 776
    :cond_2
    aget-object p0, v0, p0

    return-object p0

    .line 774
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 782
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method consume(Lorg/sufficientlysecure/donations/google/util/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/donations/google/util/IabException;
        }
    .end annotation

    .line 659
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 660
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 662
    iget-object v0, p1, Lorg/sufficientlysecure/donations/google/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lorg/sufficientlysecure/donations/google/util/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/sufficientlysecure/donations/google/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/sufficientlysecure/donations/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/google/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v2, ""

    .line 670
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 676
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 682
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 683
    new-instance v2, Lorg/sufficientlysecure/donations/google/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/donations/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 671
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 672
    new-instance v0, Lorg/sufficientlysecure/donations/google/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/donations/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Lorg/sufficientlysecure/donations/google/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lorg/sufficientlysecure/donations/google/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public consumeAsync(Lorg/sufficientlysecure/donations/google/util/Purchase;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 1

    .line 727
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 728
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 731
    invoke-virtual {p0, v0, p2, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/donations/google/util/Purchase;",
            ">;",
            "Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;",
            "Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 948
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    .line 949
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 950
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lorg/sufficientlysecure/donations/google/util/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/donations/google/util/IabHelper$3;-><init>(Lorg/sufficientlysecure/donations/google/util/IabHelper;Ljava/util/List;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 979
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkNotDisposed()V

    .line 181
    iput-boolean p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDebugLog:Z

    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const-string v0, ""

    .line 830
    iput-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 831
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    .line 821
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is in progress."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    iput-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mAsyncInProgress:Z

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 790
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 792
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 795
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 796
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 798
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 806
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 808
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 811
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 812
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 814
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    .line 441
    iget v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mRequestCode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 443
    :cond_0
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkNotDisposed()V

    const-string p1, "handleActivityResult"

    .line 444
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 450
    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 451
    new-instance p2, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 452
    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_1
    return v0

    .line 456
    :cond_2
    invoke-virtual {p0, p3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 457
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 458
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    if-nez v3, :cond_9

    const-string p2, "Successful resultcode from purchase activity."

    .line 461
    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 464
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected item type: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 477
    :cond_3
    :try_start_0
    new-instance p2, Lorg/sufficientlysecure/donations/google/util/Purchase;

    iget-object p3, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lorg/sufficientlysecure/donations/google/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Lorg/sufficientlysecure/donations/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 481
    iget-object v3, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lorg/sufficientlysecure/donations/google/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 483
    new-instance v1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 484
    iget-object p3, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, v1, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_4
    return v0

    :cond_5
    const-string p3, "Purchase signature successfully verified."

    .line 487
    invoke-virtual {p0, p3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 498
    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance p3, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const-string v2, "Success"

    invoke-direct {p3, v1, v2}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 490
    invoke-virtual {p0, p3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 491
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 492
    new-instance p2, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const-string p3, "Failed to parse purchase data."

    invoke-direct {p2, p1, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 493
    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_6
    return v0

    :cond_7
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 468
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Extras: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 470
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 471
    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_8
    return v0

    :cond_9
    if-ne p2, v6, :cond_a

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 505
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 506
    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 511
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 512
    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    goto :goto_1

    .line 515
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {v3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 517
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 518
    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_c
    :goto_1
    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 9

    .line 373
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkNotDisposed()V

    const-string v0, "launchPurchaseFlow"

    .line 374
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    .line 375
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const-string v0, "subs"

    .line 378
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    .line 379
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 p2, -0x3f1

    const-string p3, "Subscriptions are not available."

    invoke-direct {p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagEndAsync()V

    if-eqz p5, :cond_0

    .line 382
    invoke-interface {p5, p1, v1}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_0
    return-void

    .line 387
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p6

    .line 389
    invoke-virtual {p0, p6}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to buy item, Error response: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagEndAsync()V

    .line 393
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const-string p3, "Unable to buy item"

    invoke-direct {p1, v0, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_2

    .line 394
    invoke-interface {p5, p1, v1}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "BUY_INTENT"

    .line 398
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p6

    check-cast p6, Landroid/app/PendingIntent;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Request code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 400
    iput p4, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mRequestCode:I

    .line 401
    iput-object p5, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchaseListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 402
    iput-object p3, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 403
    invoke-virtual {p6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 p3, 0x0

    .line 405
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p1

    move v4, p4

    .line 403
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 417
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteException while launching purchase flow for sku "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 419
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagEndAsync()V

    .line 421
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 p2, -0x3e9

    const-string p3, "Remote exception while starting purchase flow"

    invoke-direct {p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_4

    .line 422
    invoke-interface {p5, p1, v1}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 409
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 411
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->flagEndAsync()V

    .line 413
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/16 p2, -0x3ec

    const-string p3, "Failed to send intent."

    invoke-direct {p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_4

    .line 414
    invoke-interface {p5, p1, v1}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;Lorg/sufficientlysecure/donations/google/util/Purchase;)V

    :cond_4
    :goto_0
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    .line 983
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    .line 987
    iget-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSetup(Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->checkNotDisposed()V

    .line 207
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "Starting in-app billing setup."

    .line 210
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lorg/sufficientlysecure/donations/google/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lorg/sufficientlysecure/donations/google/util/IabHelper$1;-><init>(Lorg/sufficientlysecure/donations/google/util/IabHelper;Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    iget-object p1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/sufficientlysecure/donations/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 276
    new-instance v0, Lorg/sufficientlysecure/donations/google/util/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/donations/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lorg/sufficientlysecure/donations/google/util/IabResult;)V

    :cond_2
    :goto_0
    return-void
.end method
