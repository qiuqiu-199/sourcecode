.class public Lcom/google/android/gms/internal/zzss;
.super Lcom/google/android/gms/internal/zzsa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsa;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    return-void
.end method


# virtual methods
.method protected zzmS()V
    .locals 0

    return-void
.end method

.method public zzpB()Lcom/google/android/gms/internal/zzrp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzss;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzss;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzmQ()Lcom/google/android/gms/internal/zzrp;

    move-result-object v0

    return-object v0
.end method

.method public zzpC()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzss;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzss;->zzpB()Lcom/google/android/gms/internal/zzrp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrp;->zznl()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrp;->zznm()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
