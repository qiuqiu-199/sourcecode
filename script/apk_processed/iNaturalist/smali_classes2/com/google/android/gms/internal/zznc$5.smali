.class Lcom/google/android/gms/internal/zznc$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTA:Lcom/google/android/gms/internal/zzmk;

.field final synthetic zzTH:Lcom/google/android/gms/internal/zzmu;

.field final synthetic zzTI:Lcom/google/android/gms/internal/zznc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznc;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc$5;->zzTI:Lcom/google/android/gms/internal/zznc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc$5;->zzTA:Lcom/google/android/gms/internal/zzmk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc$5;->zzTH:Lcom/google/android/gms/internal/zzmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznc$5;->zzTI:Lcom/google/android/gms/internal/zznc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$5;->zzTA:Lcom/google/android/gms/internal/zzmk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznc;->zzd(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    const-string v2, "AdRequestServiceImpl.loadAdAsync"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not fetch ad response due to an Exception."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$5;->zzTH:Lcom/google/android/gms/internal/zzmu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zzmn;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
