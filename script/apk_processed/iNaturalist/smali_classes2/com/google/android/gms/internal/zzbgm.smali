.class public Lcom/google/android/gms/internal/zzbgm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcq;


# instance fields
.field private zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbgm;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/util/zze;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgm;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-void
.end method

.method public varargs zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "[",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance p1, Lcom/google/android/gms/internal/zzbiv;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbgm;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
