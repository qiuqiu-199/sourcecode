.class Lcom/google/android/gms/internal/zzadn$zzc$1;
.super Lcom/google/android/gms/internal/zzadn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadn$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadn$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadn$zzc$1;->zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzadn$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzadw;)V
    .locals 7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1966

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result p1

    const/16 v0, 0x196b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzadn$zzc$1;->zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzadn$zzd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzadn;->zzdw(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzc(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzb(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzadn$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzadn$zzc$1;->zzaIM:Lcom/google/android/gms/internal/zzadn$zzc;

    new-instance v6, Lcom/google/android/gms/internal/zzadn$zzd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadn;->zzdw(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzc(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzadw;->getThrottleEndTimeMillis()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzadn;->zzb(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;JLjava/util/List;)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/zzadn$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_1
    return-void
.end method
