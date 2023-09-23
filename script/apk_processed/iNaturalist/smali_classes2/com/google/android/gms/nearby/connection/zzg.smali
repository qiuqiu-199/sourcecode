.class public Lcom/google/android/gms/nearby/connection/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/zzg$zzb;,
        Lcom/google/android/gms/nearby/connection/zzg$zza;
    }
.end annotation


# instance fields
.field private final id:J

.field private final type:I

.field private final zzbxZ:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbya:Lcom/google/android/gms/nearby/connection/zzg$zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbyb:Lcom/google/android/gms/nearby/connection/zzg$zzb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JI[BLcom/google/android/gms/nearby/connection/zzg$zza;Lcom/google/android/gms/nearby/connection/zzg$zzb;)V
    .locals 0
    .param p4    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/nearby/connection/zzg$zza;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/nearby/connection/zzg$zzb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/zzg;->id:J

    iput p3, p0, Lcom/google/android/gms/nearby/connection/zzg;->type:I

    iput-object p4, p0, Lcom/google/android/gms/nearby/connection/zzg;->zzbxZ:[B

    iput-object p5, p0, Lcom/google/android/gms/nearby/connection/zzg;->zzbya:Lcom/google/android/gms/nearby/connection/zzg$zza;

    iput-object p6, p0, Lcom/google/android/gms/nearby/connection/zzg;->zzbyb:Lcom/google/android/gms/nearby/connection/zzg$zzb;

    return-void
.end method

.method public static zzB([B)Lcom/google/android/gms/nearby/connection/zzg;
    .locals 2

    const-string v0, "Cannot create a Payload from null bytes."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/nearby/connection/zzg;->zzNU()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/zzg;->zzb([BJ)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object p0

    return-object p0
.end method

.method public static zzNU()J
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zza(Lcom/google/android/gms/nearby/connection/zzg$zza;J)Lcom/google/android/gms/nearby/connection/zzg;
    .locals 8

    new-instance v7, Lcom/google/android/gms/nearby/connection/zzg;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/connection/zzg;-><init>(JI[BLcom/google/android/gms/nearby/connection/zzg$zza;Lcom/google/android/gms/nearby/connection/zzg$zzb;)V

    return-object v7
.end method

.method public static zza(Lcom/google/android/gms/nearby/connection/zzg$zzb;J)Lcom/google/android/gms/nearby/connection/zzg;
    .locals 8

    new-instance v7, Lcom/google/android/gms/nearby/connection/zzg;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-wide v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/connection/zzg;-><init>(JI[BLcom/google/android/gms/nearby/connection/zzg$zza;Lcom/google/android/gms/nearby/connection/zzg$zzb;)V

    return-object v7
.end method

.method public static zzb([BJ)Lcom/google/android/gms/nearby/connection/zzg;
    .locals 8

    new-instance v7, Lcom/google/android/gms/nearby/connection/zzg;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/connection/zzg;-><init>(JI[BLcom/google/android/gms/nearby/connection/zzg$zza;Lcom/google/android/gms/nearby/connection/zzg$zzb;)V

    return-object v7
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/zzg;->id:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/zzg;->type:I

    return v0
.end method

.method public zzNV()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/zzg;->zzbxZ:[B

    return-object v0
.end method

.method public zzNW()Lcom/google/android/gms/nearby/connection/zzg$zza;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/zzg;->zzbya:Lcom/google/android/gms/nearby/connection/zzg$zza;

    return-object v0
.end method

.method public zzNX()Lcom/google/android/gms/nearby/connection/zzg$zzb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/zzg;->zzbyb:Lcom/google/android/gms/nearby/connection/zzg$zzb;

    return-object v0
.end method
