.class public Lcom/google/android/gms/internal/zzael;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJi:Lcom/google/android/gms/internal/zzbwo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbwo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwo;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzael;->zzaJi:Lcom/google/android/gms/internal/zzbwo;

    return-void
.end method

.method private static zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzbwo;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbwo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwo;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbwo;->zzcsS:I

    if-eqz p1, :cond_0

    array-length p0, p1

    if-eqz p0, :cond_0

    array-length p0, p1

    new-array p0, p0, [Lcom/google/android/gms/internal/zzbwo$zza;

    iput-object p0, v0, Lcom/google/android/gms/internal/zzbwo;->zzctb:[Lcom/google/android/gms/internal/zzbwo$zza;

    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v3, p1, v1

    check-cast v3, Lcom/google/android/gms/internal/zzvx$zzb;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzbwo;->zzctb:[Lcom/google/android/gms/internal/zzbwo$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzvx$zzb;->zzrK()Lcom/google/android/gms/internal/zzbwo$zza;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-wide p2, v0, Lcom/google/android/gms/internal/zzbwo;->zzcsT:J

    return-object v0
.end method

.method public static zzb([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/internal/zzael;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzael;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzael;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzbwo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzael;-><init>(Lcom/google/android/gms/internal/zzbwo;)V

    return-object v0
.end method

.method public static zzc([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/internal/zzael;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzael;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzael;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzbwo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzael;-><init>(Lcom/google/android/gms/internal/zzbwo;)V

    return-object v0
.end method

.method public static zzd([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/internal/zzael;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzael;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzael;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzbwo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzael;-><init>(Lcom/google/android/gms/internal/zzbwo;)V

    return-object v0
.end method


# virtual methods
.method public zzzZ()Lcom/google/android/gms/internal/zzbwo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzael;->zzaJi:Lcom/google/android/gms/internal/zzbwo;

    return-object v0
.end method
