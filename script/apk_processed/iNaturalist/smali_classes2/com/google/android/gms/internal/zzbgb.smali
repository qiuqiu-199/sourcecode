.class public Lcom/google/android/gms/internal/zzbgb;
.super Lcom/google/android/gms/internal/zzbcs;


# instance fields
.field private final zzbKn:Lcom/google/android/gms/internal/zzbcb$zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbcb$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbgb;->zzbKn:Lcom/google/android/gms/internal/zzbcb$zzc;

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
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

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbgb;->zzbKn:Lcom/google/android/gms/internal/zzbcb$zzc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbcb$zzc;->zzSp()Lcom/google/android/gms/internal/zzbbi;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbbi;->zzaU(Z)V

    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1
.end method
