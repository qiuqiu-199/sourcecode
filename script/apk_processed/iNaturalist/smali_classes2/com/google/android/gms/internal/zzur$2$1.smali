.class Lcom/google/android/gms/internal/zzur$2$1;
.super Lcom/google/android/gms/internal/zzur$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur$2;->zza(Lcom/google/android/gms/internal/zzus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiQ:Lcom/google/android/gms/internal/zzur$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$2$1;->zzaiQ:Lcom/google/android/gms/internal/zzur$2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzur$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Landroid/accounts/Account;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$2$1;->zzaiQ:Lcom/google/android/gms/internal/zzur$2;

    new-instance v1, Lcom/google/android/gms/internal/zzur$zzb;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzur;->zzqS()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/zzur$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzur$2;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
