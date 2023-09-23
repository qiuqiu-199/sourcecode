.class Lcom/google/android/gms/internal/zzzf$1;
.super Lcom/google/android/gms/internal/zzzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxi:Lcom/google/android/gms/internal/zzzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf$1;->zzaxi:Lcom/google/android/gms/internal/zzzf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzzj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcp(I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzzf;->zzuR()Lcom/google/android/gms/internal/zzyz;

    move-result-object p1

    const-string v0, "onRemoteDisplayEnded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzf$1;->zzaxi:Lcom/google/android/gms/internal/zzzf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zza(Lcom/google/android/gms/internal/zzzf;)V

    return-void
.end method
