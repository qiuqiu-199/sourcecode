.class Lcom/google/android/gms/internal/zzly$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzly$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzRa:Lcom/google/android/gms/internal/zzly$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzly$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly$1$2;->zzRa:Lcom/google/android/gms/internal/zzly$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Z)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzly$1$2;->zzRa:Lcom/google/android/gms/internal/zzly$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/internal/zzly;)Lcom/google/android/gms/ads/internal/zzs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzs;->zzcw()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzly$1$2;->zzRa:Lcom/google/android/gms/internal/zzly$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzly$1;->zzQY:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V

    return-void
.end method
