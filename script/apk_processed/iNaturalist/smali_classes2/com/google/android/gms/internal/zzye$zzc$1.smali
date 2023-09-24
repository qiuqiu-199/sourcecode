.class Lcom/google/android/gms/internal/zzye$zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzye$zzc;-><init>(Lcom/google/android/gms/internal/zzye;Lcom/google/android/gms/cast/games/GameManagerClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzavs:Lcom/google/android/gms/internal/zzye;

.field final synthetic zzavv:Lcom/google/android/gms/internal/zzye$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzye$zzc;Lcom/google/android/gms/internal/zzye;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavs:Lcom/google/android/gms/internal/zzye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzD(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x837

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzye$zzc;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzye$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zza(JILjava/lang/Object;)V
    .locals 5

    const/4 p1, 0x0

    if-nez p4, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    new-instance p4, Lcom/google/android/gms/internal/zzye$zzd;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p3, p1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzye$zzc;->zza(Lcom/google/android/gms/internal/zzye$zzc;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p1

    invoke-direct {p4, v0, p1}, Lcom/google/android/gms/internal/zzye$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/zzye$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzyg;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzyg;->zzux()Lcom/google/android/gms/internal/zzyf;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "1.0.0"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzyf;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    iget-object p3, p3, Lcom/google/android/gms/internal/zzye$zzc;->zzavm:Lcom/google/android/gms/internal/zzye;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzye;->zza(Lcom/google/android/gms/internal/zzye;Lcom/google/android/gms/internal/zzyf;)Lcom/google/android/gms/internal/zzyf;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    new-instance p4, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x866

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzyf;->getVersion()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x1

    const-string v4, "1.0.0"

    aput-object v4, v3, p2

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, v0, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/zzye$zzc;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzye$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzye$zzd;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzyg;->zzut()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p3, p4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzye$zzc;->zza(Lcom/google/android/gms/internal/zzye$zzc;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzye$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzye$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzye$zzc$1;->zzavv:Lcom/google/android/gms/internal/zzye$zzc;

    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/16 p4, 0xd

    invoke-direct {p3, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzye$zzc;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzye$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void
.end method
