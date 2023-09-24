.class Lcom/google/android/gms/tagmanager/zzdp;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/tagmanager/zzce;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzce;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zze(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdp;->zzhD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzce;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzce;->zzQZ()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/tagmanager/zzce;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Escape URI: unsupported encoding"

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/tagmanager/zzce;I)Lcom/google/android/gms/tagmanager/zzce;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;I)",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzce;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdp;->zzl(Lcom/google/android/gms/internal/zzak$zza;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Escaping can only be applied to strings."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported Value Escaping: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdp;->zza(Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/tagmanager/zzce;

    move-result-object p0

    return-object p0
.end method

.method static varargs zza(Lcom/google/android/gms/tagmanager/zzce;[I)Lcom/google/android/gms/tagmanager/zzce;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;[I)",
            "Lcom/google/android/gms/tagmanager/zzce<",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/google/android/gms/tagmanager/zzdp;->zza(Lcom/google/android/gms/tagmanager/zzce;I)Lcom/google/android/gms/tagmanager/zzce;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static zzhD(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\+"

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/zzak$zza;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzj(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/String;

    return p0
.end method
