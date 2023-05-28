.class public Lcom/amplitude/api/Revenue;
.super Ljava/lang/Object;
.source "Revenue.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.Revenue"

.field private static logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field protected price:Ljava/lang/Double;

.field protected productId:Ljava/lang/String;

.field protected properties:Lorg/json/JSONObject;

.field protected quantity:I

.field protected receipt:Ljava/lang/String;

.field protected receiptSig:Ljava/lang/String;

.field protected revenueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 44
    iput v1, p0, Lcom/amplitude/api/Revenue;->quantity:I

    .line 48
    iput-object v0, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 201
    :cond_1
    check-cast p1, Lcom/amplitude/api/Revenue;

    .line 203
    iget v2, p0, Lcom/amplitude/api/Revenue;->quantity:I

    iget v3, p1, Lcom/amplitude/api/Revenue;->quantity:I

    if-eq v2, v3, :cond_2

    return v1

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    iget-object v3, p1, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 207
    :cond_6
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 209
    :cond_8
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 211
    :cond_a
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_4
    return v1

    .line 213
    :cond_c
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lcom/amplitude/api/Utils;->compareJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_d
    iget-object p1, p1, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v0, 0x0

    :cond_f
    :goto_6
    return v0

    :cond_10
    :goto_7
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget v2, p0, Lcom/amplitude/api/Revenue;->quantity:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method protected isValidRevenue()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "Invalid revenue, need to set price"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setEventProperties(Lorg/json/JSONObject;)Lcom/amplitude/api/Revenue;
    .locals 0

    .line 162
    invoke-static {p1}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setPrice(D)Lcom/amplitude/api/Revenue;
    .locals 0

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/amplitude/api/Revenue;
    .locals 2

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object p1, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.Revenue"

    const-string v1, "Invalid empty productId"

    invoke-virtual {p1, v0, v1}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public setQuantity(I)Lcom/amplitude/api/Revenue;
    .locals 0

    .line 102
    iput p1, p0, Lcom/amplitude/api/Revenue;->quantity:I

    return-object p0
.end method

.method public setReceipt(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/Revenue;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    return-object p0
.end method

.method public setRevenueProperties(Lorg/json/JSONObject;)Lcom/amplitude/api/Revenue;
    .locals 3

    .line 149
    sget-object v0, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "setRevenueProperties is deprecated, please use setEventProperties instead"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, p1}, Lcom/amplitude/api/Revenue;->setEventProperties(Lorg/json/JSONObject;)Lcom/amplitude/api/Revenue;

    move-result-object p1

    return-object p1
.end method

.method public setRevenueType(Ljava/lang/String;)Lcom/amplitude/api/Revenue;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    return-object p0
.end method

.method protected toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/Revenue;->properties:Lorg/json/JSONObject;

    :goto_0
    :try_start_0
    const-string v1, "$productId"

    .line 174
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$quantity"

    .line 175
    iget v2, p0, Lcom/amplitude/api/Revenue;->quantity:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "$price"

    .line 176
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->price:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$revenueType"

    .line 177
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->revenueType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$receipt"

    .line 178
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receipt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$receiptSig"

    .line 179
    iget-object v2, p0, Lcom/amplitude/api/Revenue;->receiptSig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 181
    sget-object v2, Lcom/amplitude/api/Revenue;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.Revenue"

    const-string v4, "Failed to convert revenue object to JSON: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 182
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v2, v3, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method
