.class public final Lcom/google/android/gms/fitness/data/DataPoint;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzaSA:J

.field private zzaSB:J

.field private final zzaSC:[Lcom/google/android/gms/fitness/data/Value;

.field private zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzaSE:J

.field private zzaSF:J

.field private final zzaSh:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSE:J

    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSF:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->versionCode:I

    const-string v0, "Data source cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/Value;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/Field;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    new-instance v3, Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v1

    invoke-direct {v3, v1}, Lcom/google/android/gms/fitness/data/Value;-><init>(I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 17

    move-object/from16 v0, p3

    iget-wide v1, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v7

    iget-wide v4, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUd:[Lcom/google/android/gms/fitness/data/Value;

    iget-wide v4, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUg:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v13

    iget-wide v0, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUh:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v15

    const/4 v5, 0x4

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ")V"
        }
    .end annotation

    iget v0, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUe:I

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->zzc(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaUf:I

    invoke-static {p1, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzc(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/RawDataPoint;)V

    return-void
.end method

.method public static create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v0
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.EXTRA_DATA_POINT"

    sget-object v1, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fitness/data/DataPoint;

    return-object p0
.end method

.method private zzBZ()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static zza(Ljava/lang/Long;J)J
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private static zzc(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;I)",
            "Lcom/google/android/gms/fitness/data/DataSource;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fitness/data/DataSource;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private zzc(Lcom/google/android/gms/fitness/data/DataPoint;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private zzgz(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Attempting to insert %s values, but needed %s: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    const/4 p1, 0x2

    aput-object v0, v6, p1

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzc(Lcom/google/android/gms/fitness/data/DataPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    :goto_0
    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    return-wide v0
.end method

.method public getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->indexOf(Lcom/google/android/gms/fitness/data/Field;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs setFloatValues([F)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->zzgz(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setIntValues([I)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->zzgz(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 0

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    return-object p0
.end method

.method public setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->zzBZ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/zzant;->zza(Ljava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Fitness"

    const-string p2, "Storing location at more than millisecond granularity is not supported. Extra precision is lost as the value is converted to milliseconds."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzant;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSF:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSh:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "N/A"

    :goto_0
    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzh;->zza(Lcom/google/android/gms/fitness/data/DataPoint;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCa()[Lcom/google/android/gms/fitness/data/Value;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    return-object v0
.end method

.method public zzCb()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSD:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public zzCc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSE:J

    return-wide v0
.end method

.method public zzCd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSF:J

    return-wide v0
.end method

.method public zzCe()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Conflicting data types found %s vs %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Data point does not have the timestamp set: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSA:J

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Data point with start time greater than end time found: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public zzCf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSB:J

    return-wide v0
.end method

.method public zzgy(I)Lcom/google/android/gms/fitness/data/Value;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzaSC:[Lcom/google/android/gms/fitness/data/Value;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "fieldIndex %s is out of range for %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
