.class public Lcom/google/android/gms/fitness/request/zzav;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzav;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzaTj:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaUo:J

.field private final zzaUp:I

.field private final zzaVt:Lcom/google/android/gms/internal/zzapf;

.field private zzaWo:Lcom/google/android/gms/fitness/data/zzs;

.field zzaWp:I

.field zzaWq:I

.field private final zzaWr:J

.field private final zzaWs:J

.field private final zzaWt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWu:J

.field private final zzaWv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzarw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzav;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;JLandroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Landroid/os/IBinder;",
            "IIJJ",
            "Landroid/app/PendingIntent;",
            "JI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;J",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaiI:I

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/fitness/data/zzs$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzs;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    const-wide/16 v1, 0x0

    cmp-long v5, p7, v1

    if-nez v5, :cond_1

    move v5, p5

    int-to-long v3, v5

    goto :goto_1

    :cond_1
    move-wide v3, p7

    :goto_1
    iput-wide v3, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    move-wide/from16 v3, p12

    iput-wide v3, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    cmp-long v5, p9, v1

    if-nez v5, :cond_2

    move v1, p6

    int-to-long v1, v1

    goto :goto_2

    :cond_2
    move-wide v1, p9

    :goto_2
    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWt:Ljava/util/List;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->mPendingIntent:Landroid/app/PendingIntent;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaUp:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWv:Ljava/util/List;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWu:J

    invoke-static/range {p18 .. p18}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzapf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Lcom/google/android/gms/fitness/data/zzs;",
            "Landroid/app/PendingIntent;",
            "JJJI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzarw;",
            ">;J",
            "Lcom/google/android/gms/internal/zzapf;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaiI:I

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->mPendingIntent:Landroid/app/PendingIntent;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaUp:I

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWt:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWv:Ljava/util/List;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaWu:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzav;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzapf;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v17, p4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/fitness/request/SensorRequest;->getFastestRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/fitness/request/SensorRequest;->getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getAccuracyMode()I

    move-result v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->zzDi()J

    move-result-wide v15

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/fitness/request/zzav;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzapf;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/zzav;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUp:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaUp:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWt:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/zzav;->zzaWt:Ljava/util/List;

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/zzav;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/fitness/request/zzav;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/zzav;->zzb(Lcom/google/android/gms/fitness/request/zzav;)Z

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

.method public getAccuracyMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUp:I

    return v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaiI:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWt:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzaw;->zza(Lcom/google/android/gms/fitness/request/zzav;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCz()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaUo:J

    return-wide v0
.end method

.method public zzDd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWs:J

    return-wide v0
.end method

.method public zzDe()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWr:J

    return-wide v0
.end method

.method public zzDf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWt:Ljava/util/List;

    return-object v0
.end method

.method public zzDg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWu:J

    return-wide v0
.end method

.method zzDh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzav;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/zzs;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method
