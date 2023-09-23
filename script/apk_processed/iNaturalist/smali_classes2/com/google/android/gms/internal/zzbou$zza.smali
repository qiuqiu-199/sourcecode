.class public Lcom/google/android/gms/internal/zzbou$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private zzcdp:J

.field private zzcdr:D

.field private zzcds:D

.field private final zzcdy:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzcdz:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdp:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdr:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdz:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcds:D

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdy:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/internal/zzbrn;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrn;-><init>(Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-void
.end method


# virtual methods
.method public zzYi()Lcom/google/android/gms/internal/zzbou;
    .locals 13

    new-instance v12, Lcom/google/android/gms/internal/zzbou;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdy:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdp:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdz:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcds:D

    iget-wide v9, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdr:D

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzbou;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbrn;JJDDLcom/google/android/gms/internal/zzbou$1;)V

    return-object v12
.end method

.method public zzaL(J)Lcom/google/android/gms/internal/zzbou$zza;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdp:J

    return-object p0
.end method

.method public zzaM(J)Lcom/google/android/gms/internal/zzbou$zza;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdz:J

    return-object p0
.end method

.method public zzj(D)Lcom/google/android/gms/internal/zzbou$zza;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcds:D

    return-object p0
.end method

.method public zzk(D)Lcom/google/android/gms/internal/zzbou$zza;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbou$zza;->zzcdr:D

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Argument out of range: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
