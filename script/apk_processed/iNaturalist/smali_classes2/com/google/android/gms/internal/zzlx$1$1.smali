.class Lcom/google/android/gms/internal/zzlx$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlx$1;->zze(Lcom/google/android/gms/internal/zzjj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGW:Lcom/google/android/gms/internal/zzjj;

.field final synthetic zzQE:Lcom/google/android/gms/internal/zzlx$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlx$1;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzGW:Lcom/google/android/gms/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "success"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "failure"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzlx$1;->zzQA:Ljava/lang/String;

    const-string v3, "ads_id"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzGW:Lcom/google/android/gms/internal/zzjj;

    const-string v3, "/nativeAdPreProcess"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzlx$1;->zzQB:Lcom/google/android/gms/internal/zzlx$zzb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzlx$zzb;->zzQU:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    if-eqz v1, :cond_3

    const-string v1, "ads"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzlx$1;->zzQC:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzlx$1;->zzQD:Lcom/google/android/gms/internal/zzlx;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzlx;->zzU(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzlx$1;->zzQC:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p2

    const-string v1, "Malformed native JSON response."

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzlx$1;->zzQD:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzlx;->zzU(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzlx$1;->zzQD:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzlx;->zzjf()Z

    move-result p2

    const-string v0, "Unable to set the ad state error!"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlx$1$1;->zzQE:Lcom/google/android/gms/internal/zzlx$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzlx$1;->zzQC:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V

    return-void
.end method
