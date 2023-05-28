.class Lcom/google/android/gms/internal/zzbog$zza$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbog$zza$zza;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/zzbog$zza$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field private zzcbk:I

.field final synthetic zzcbl:Lcom/google/android/gms/internal/zzbog$zza$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbog$zza$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbl:Lcom/google/android/gms/internal/zzbog$zza$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbl:Lcom/google/android/gms/internal/zzbog$zza$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbog$zza$zza;->zza(Lcom/google/android/gms/internal/zzbog$zza$zza;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbk:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbk:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzXo()Lcom/google/android/gms/internal/zzbog$zza$zzb;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method

.method public zzXo()Lcom/google/android/gms/internal/zzbog$zza$zzb;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbl:Lcom/google/android/gms/internal/zzbog$zza$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbog$zza$zza;->zzb(Lcom/google/android/gms/internal/zzbog$zza$zza;)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbk:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v4, v2

    and-long/2addr v0, v4

    new-instance v2, Lcom/google/android/gms/internal/zzbog$zza$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbog$zza$zzb;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbm:Z

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbk:I

    int-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbn:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbk:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/zzbog$zza$zza$1;->zzcbk:I

    return-object v2
.end method
