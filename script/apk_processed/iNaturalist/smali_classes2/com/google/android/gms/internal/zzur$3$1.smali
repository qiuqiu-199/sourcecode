.class Lcom/google/android/gms/internal/zzur$3$1;
.super Lcom/google/android/gms/internal/zzur$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur$3;->zza(Lcom/google/android/gms/internal/zzus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiR:Lcom/google/android/gms/internal/zzur$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur$3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$3$1;->zzaiR:Lcom/google/android/gms/internal/zzur$3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzur$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzac(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$3$1;->zzaiR:Lcom/google/android/gms/internal/zzur$3;

    new-instance v1, Lcom/google/android/gms/internal/zzur$zzc;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzur;->zzqS()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzur$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzur$3;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method