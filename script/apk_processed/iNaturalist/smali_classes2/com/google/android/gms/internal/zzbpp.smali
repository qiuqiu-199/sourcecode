.class Lcom/google/android/gms/internal/zzbpp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbpp$zza;,
        Lcom/google/android/gms/internal/zzbpp$zzb;
    }
.end annotation


# instance fields
.field private zzcfD:Lcom/google/android/gms/internal/zzbsc;

.field private zzcfE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbpp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzbpp$zzb;->zzf(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbpp$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbpp$2;-><init>(Lcom/google/android/gms/internal/zzbpp;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbpp$zza;)V

    :goto_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpp$zza;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpp;

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/zzbpp$zza;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbpp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzbpp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbpp;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbpp;->zzh(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    :goto_0
    return-void
.end method

.method public zzr(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    check-cast v0, Lcom/google/android/gms/internal/zzbrr;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfD:Lcom/google/android/gms/internal/zzbsc;

    new-instance v1, Lcom/google/android/gms/internal/zzbpp$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbpp$1;-><init>(Lcom/google/android/gms/internal/zzbpp;Lcom/google/android/gms/internal/zzbph;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrr;->zza(Lcom/google/android/gms/internal/zzbrr$zza;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbpp;->zzr(Lcom/google/android/gms/internal/zzbph;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbpp;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/zzbpp;->zzr(Lcom/google/android/gms/internal/zzbph;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbpp;->zzcfE:Ljava/util/Map;

    return v1

    :cond_4
    return v3

    :cond_5
    return v1
.end method
