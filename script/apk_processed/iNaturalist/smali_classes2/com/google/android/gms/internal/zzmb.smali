.class public Lcom/google/android/gms/internal/zzmb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlx$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlx$zza<",
        "Lcom/google/android/gms/internal/zzgx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzRc:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmb;->zzRc:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx;",
            "Lorg/json/JSONObject;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_value"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmb;->zzRc:Z

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zza(Lorg/json/JSONObject;Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string_value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzc(Landroid/support/v4/util/SimpleArrayMap;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "TK;",
            "Ljava/util/concurrent/Future<",
            "TV;>;>;)",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzha$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzmb;->zzd(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgx;

    move-result-object p1

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgx;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    new-instance v4, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzlx;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/zzlx;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v2

    const-string v3, "custom_assets"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v6, v4}, Lcom/google/android/gms/internal/zzmb;->zza(Lorg/json/JSONObject;Landroid/support/v4/util/SimpleArrayMap;)V

    goto :goto_2

    :cond_0
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p1, v6, v0}, Lcom/google/android/gms/internal/zzmb;->zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;Landroid/support/v4/util/SimpleArrayMap;)V

    goto :goto_2

    :cond_1
    const-string v6, "Unknown custom asset type: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    invoke-static {v6}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqw;

    move-result-object p1

    new-instance v8, Lcom/google/android/gms/internal/zzgx;

    const-string v2, "custom_template_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmb;->zzc(Landroid/support/v4/util/SimpleArrayMap;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/internal/zzgs;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, p2

    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    goto :goto_4

    :cond_5
    move-object v7, p2

    :goto_4
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzgx;-><init>(Ljava/lang/String;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V

    return-object v8
.end method
