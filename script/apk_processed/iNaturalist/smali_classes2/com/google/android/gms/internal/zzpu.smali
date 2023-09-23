.class public Lcom/google/android/gms/internal/zzpu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpu$zza;,
        Lcom/google/android/gms/internal/zzpu$zzb;
    }
.end annotation


# instance fields
.field private final zzYb:[Ljava/lang/String;

.field private final zzYc:[D

.field private final zzYd:[D

.field private final zzYe:[I

.field private zzYf:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpu$zzb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Lcom/google/android/gms/internal/zzpu$zzb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpu$zzb;->zzb(Lcom/google/android/gms/internal/zzpu$zzb;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYb:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Lcom/google/android/gms/internal/zzpu$zzb;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzpu;->zzn(Ljava/util/List;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYc:[D

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpu$zzb;->zzc(Lcom/google/android/gms/internal/zzpu$zzb;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpu;->zzn(Ljava/util/List;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpu;->zzYd:[D

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpu;->zzYe:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzpu;->zzYf:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpu$zzb;Lcom/google/android/gms/internal/zzpu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpu;-><init>(Lcom/google/android/gms/internal/zzpu$zzb;)V

    return-void
.end method

.method private zzn(Ljava/util/List;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBuckets()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzpu$zza;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYb:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpu;->zzYb:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzpu$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu;->zzYb:[Ljava/lang/String;

    aget-object v4, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu;->zzYd:[D

    aget-wide v5, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu;->zzYc:[D

    aget-wide v7, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu;->zzYe:[I

    aget v3, v3, v1

    int-to-double v9, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzpu;->zzYf:I

    int-to-double v11, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu;->zzYe:[I

    aget v11, v3, v1

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzpu$zza;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public zza(D)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzpu;->zzYf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpu;->zzYf:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYd:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYd:[D

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYc:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYe:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpu;->zzYd:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
