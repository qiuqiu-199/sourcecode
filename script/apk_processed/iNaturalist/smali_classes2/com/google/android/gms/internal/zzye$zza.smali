.class public abstract Lcom/google/android/gms/internal/zzye$zza;
.super Lcom/google/android/gms/internal/zzye$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzye$zzb<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzavm:Lcom/google/android/gms/internal/zzye;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzye;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$zza;->zzavm:Lcom/google/android/gms/internal/zzye;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzye$zzb;-><init>(Lcom/google/android/gms/internal/zzye;)V

    new-instance v0, Lcom/google/android/gms/internal/zzye$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzye$zza$1;-><init>(Lcom/google/android/gms/internal/zzye$zza;Lcom/google/android/gms/internal/zzye;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzye$zza;->zzapH:Lcom/google/android/gms/internal/zzzc;

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzye$zza;->zzs(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p1

    return-object p1
.end method

.method public zzs(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzye$zze;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzye$zze;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v6
.end method
