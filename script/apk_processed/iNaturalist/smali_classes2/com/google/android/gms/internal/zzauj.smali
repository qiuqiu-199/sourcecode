.class public Lcom/google/android/gms/internal/zzauj;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzauj$zza;
    }
.end annotation


# instance fields
.field protected zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

.field private zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private final zzbuX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzbuY:Z

.field private zzbuZ:Ljava/lang/String;

.field private zzbva:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuX:Ljava/util/Set;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbva:Ljava/lang/String;

    return-void
.end method

.method private zzMS()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzauj;->zzMT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzauj;->zzf(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private zzMT()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj;->zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj;->zzaM(Z)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaut;->zzfX(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "Invalid conditional user property name"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzm(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v2, "Invalid conditional user property value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v2, "Unable to normalize conditional user property value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLa()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzati;->zzLb()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_5

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzauj$2;-><init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v3, "Invalid conditional user property time to live"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v3, "Invalid conditional user property timeout"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Setting user property (FE)"

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    move-object v2, v0

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaul;->zzb(Lcom/google/android/gms/internal/zzauq;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzauj$3;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/zzauj$3;-><init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zzaM(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaua;->setMeasurementEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaul;->zzMW()V

    return-void
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzauj$5;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzauj$5;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p1, 0x1388

    :try_start_1
    invoke-virtual {v7, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string p3, "Interrupted waiting for get user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Timed out waiting for get user properties"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzauq;

    iget-object p4, p3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj;->zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Conditional property not sent since Firebase Analytics is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v15, Lcom/google/android/gms/internal/zzatg;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v18, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v19, v9

    const/4 v0, 0x0

    move v9, v0

    move-object/from16 v10, v18

    move-object v0, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaul;->zzf(Lcom/google/android/gms/internal/zzatg;)V

    :catch_0
    return-void
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v4, p5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Event not sent since app measurement is disabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzauj;->zzbuY:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzauj;->zzbuY:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzauj;->zzMS()V

    :cond_1
    const-string v1, "am"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v1

    if-eqz p6, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Passing event to registered event handler (FE)"

    invoke-virtual {v1, v2, p2, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzaut;->zzfV(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKM()I

    move-result v4

    invoke-virtual {v3, p2, v4, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    const-string v5, "_ev"

    invoke-virtual {v4, v1, v5, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5
    const-string v1, "_o"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_o"

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzf;->zzx(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    move/from16 v5, p8

    invoke-virtual {v3, p2, v4, v1, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "_sc"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzauk;->zzMU()Lcom/google/android/gms/internal/zzauk$zza;

    move-result-object v3

    if-eqz v3, :cond_6

    iput-boolean v2, v3, Lcom/google/android/gms/internal/zzauk$zza;->zzbvz:Z

    :cond_6
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzauk;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Landroid/os/Bundle;)V

    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzaut;->zzM(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_8
    move-object v10, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Logging event (FE)"

    invoke-virtual {v1, v2, p2, v10}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/internal/zzatq;

    new-instance v3, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v3, v10}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    move-object v1, v11

    move-object v2, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v1

    move-object/from16 v2, p9

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    if-nez v9, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/zzauj;->zzbuX:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/AppMeasurement$zzc;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/AppMeasurement$zzc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method private zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Conditional property not cleared since Firebase Analytics is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v15, Lcom/google/android/gms/internal/zzatg;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-boolean v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v14, 0x0

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v20, v11

    const/4 v0, 0x0

    move-object v11, v0

    move-wide/from16 v12, v18

    move-object v0, v15

    move-wide/from16 v15, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaul;->zzf(Lcom/google/android/gms/internal/zzatg;)V

    :catch_0
    return-void
.end method

.method private zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzauj$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauj$4;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Interrupted waiting for get conditional user properties"

    invoke-virtual {v0, v1, p1, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzatg;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    iput-boolean v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_1
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbrb:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzauq;->zzbwc:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbrd:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzMr()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzauj$11;-><init>(Lcom/google/android/gms/internal/zzauj;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzauj;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzati;->zzKY()I

    move-result p1

    return p1
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public setMeasurementEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzauj$1;-><init>(Lcom/google/android/gms/internal/zzauj;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzauj$6;-><init>(Lcom/google/android/gms/internal/zzauj;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzauj$7;-><init>(Lcom/google/android/gms/internal/zzauj;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic zzJV()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJV()V

    return-void
.end method

.method public bridge synthetic zzJW()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJW()V

    return-void
.end method

.method public bridge synthetic zzJX()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJX()V

    return-void
.end method

.method public bridge synthetic zzJY()Lcom/google/android/gms/internal/zzatb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJZ()Lcom/google/android/gms/internal/zzatf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKa()Lcom/google/android/gms/internal/zzauj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKb()Lcom/google/android/gms/internal/zzatu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKc()Lcom/google/android/gms/internal/zzatl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKd()Lcom/google/android/gms/internal/zzaul;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKe()Lcom/google/android/gms/internal/zzauk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKf()Lcom/google/android/gms/internal/zzatv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKg()Lcom/google/android/gms/internal/zzatj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKh()Lcom/google/android/gms/internal/zzaut;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKi()Lcom/google/android/gms/internal/zzauc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKj()Lcom/google/android/gms/internal/zzaun;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKk()Lcom/google/android/gms/internal/zzaud;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKl()Lcom/google/android/gms/internal/zzatx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKm()Lcom/google/android/gms/internal/zzaua;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKn()Lcom/google/android/gms/internal/zzati;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method public zzMQ()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzauj$zza;-><init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/internal/zzauj$1;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public zzMR()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzMR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl;->zzLS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    return-void
.end method

.method public zza(Lcom/google/android/gms/measurement/AppMeasurement$zzc;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    move-object/from16 v0, p5

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$8;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/zzauj$8;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/zzauj$9;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzauj$9;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public zzaN(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzauj$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/zzauj$10;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "Timed out waiting for get user properties"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public zzar(J)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzMq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Cannot retrieve app instance id from analytics worker thread"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzbc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Cannot retrieve app instance id from main thread"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzauj$12;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzauj$12;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Interrupted waiting for app instance id"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaut;->zzfX(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result p3

    invoke-virtual {p1, p2, p3, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p2

    const-string p3, "_ev"

    invoke-virtual {p2, v0, p3, p1, v1}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzaut;->zzm(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v3

    invoke-virtual {p1, p2, v3, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    instance-of p2, p3, Ljava/lang/String;

    if-nez p2, :cond_2

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzaut;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public zzf(Ljava/lang/Class;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "initialize"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized zzfQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbva:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x7530

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzauj;->zzar(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbva:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic zzmR()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzmR()V

    return-void
.end method

.method protected zzmS()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method
