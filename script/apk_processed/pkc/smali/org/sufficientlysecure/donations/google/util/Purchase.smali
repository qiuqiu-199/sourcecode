.class public Lorg/sufficientlysecure/donations/google/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mItemType:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 39
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "orderId"

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mOrderId:Ljava/lang/String;

    const-string p2, "packageName"

    .line 41
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mPackageName:Ljava/lang/String;

    const-string p2, "productId"

    .line 42
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mSku:Ljava/lang/String;

    const-string p2, "purchaseTime"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mPurchaseTime:J

    const-string p2, "purchaseState"

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mPurchaseState:I

    const-string p2, "developerPayload"

    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const-string p2, "token"

    const-string v0, "purchaseToken"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mToken:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mSignature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSku()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sufficientlysecure/donations/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
