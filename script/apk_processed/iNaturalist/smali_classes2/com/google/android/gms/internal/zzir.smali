.class public Lcom/google/android/gms/internal/zzir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/zziq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzIz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zziq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIz:Ljava/util/List;

    return-void
.end method

.method private zzg(Lcom/google/android/gms/internal/zzqw;)Lcom/google/android/gms/internal/zziq;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzir;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zziq;

    iget-object v2, v1, Lcom/google/android/gms/internal/zziq;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zziq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zziq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zziq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzqw;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzir;->zzg(Lcom/google/android/gms/internal/zzqw;)Lcom/google/android/gms/internal/zziq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zziq;->zzIw:Lcom/google/android/gms/internal/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzis;->abort()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzf(Lcom/google/android/gms/internal/zzqw;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzir;->zzg(Lcom/google/android/gms/internal/zzqw;)Lcom/google/android/gms/internal/zziq;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public zzgr()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzIz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
