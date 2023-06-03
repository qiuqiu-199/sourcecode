.class Lcom/google/android/gms/internal/zzbdj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbdj;->zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzbit<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbLs:Lcom/google/android/gms/internal/zzbiw;

.field final synthetic zzbLt:Lcom/google/android/gms/internal/zzbcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdj;Lcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/internal/zzbcd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLs:Lcom/google/android/gms/internal/zzbiw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLt:Lcom/google/android/gms/internal/zzbcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbit;

    check-cast p2, Lcom/google/android/gms/internal/zzbit;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbdj$zza;->zze(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)I

    move-result p1

    return p1
.end method

.method public zze(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLs:Lcom/google/android/gms/internal/zzbiw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbiw;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbcq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLt:Lcom/google/android/gms/internal/zzbcd;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/zzbit;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzbcq;->zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    check-cast p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method
