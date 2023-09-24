.class final Lcom/google/android/gms/ads/internal/zzp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzgw;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztR:Ljava/lang/String;

.field final synthetic zztS:Lcom/google/android/gms/internal/zzqw;

.field final synthetic zztT:Lcom/google/android/gms/internal/zzgw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw;Ljava/lang/String;Lcom/google/android/gms/internal/zzqw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztS:Lcom/google/android/gms/internal/zzqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Z)V
    .locals 2

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "headline"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "body"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "call_to_action"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "advertiser"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "logo"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->zzfV()Lcom/google/android/gms/internal/zzhf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzp;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzhf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "images"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "extras"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztT:Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgw;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "assets"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "template_id"

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$2;->zztS:Lcom/google/android/gms/internal/zzqw;

    const-string v0, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzqw;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Exception occurred when loading assets"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
