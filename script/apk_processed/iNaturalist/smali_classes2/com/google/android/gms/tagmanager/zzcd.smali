.class abstract Lcom/google/android/gms/tagmanager/zzcd;
.super Lcom/google/android/gms/tagmanager/zzci;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzci;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzak$zza;Lcom/google/android/gms/internal/zzak$zza;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzak$zza;",
            "Lcom/google/android/gms/internal/zzak$zza;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdl;->zzf(Lcom/google/android/gms/internal/zzak$zza;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzdl;->zzf(Lcom/google/android/gms/internal/zzak$zza;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRP()Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRP()Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzcd;->zza(Lcom/google/android/gms/tagmanager/zzdk;Lcom/google/android/gms/tagmanager/zzdk;Ljava/util/Map;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected abstract zza(Lcom/google/android/gms/tagmanager/zzdk;Lcom/google/android/gms/tagmanager/zzdk;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdk;",
            "Lcom/google/android/gms/tagmanager/zzdk;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)Z"
        }
    .end annotation
.end method
