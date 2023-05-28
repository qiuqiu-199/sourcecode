.class public Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;
.super Lcom/google/firebase/database/connection/idl/zzk$zza;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzcdg:Lcom/google/android/gms/internal/zzbop;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzk$zza;-><init>()V

    return-void
.end method

.method public static loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzbok;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/firebase/database/connection/idl/zzk;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRX:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v1, "com.google.android.gms.firebase_database"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.firebase.database.connection.idl.IPersistentConnectionImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/zzk$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzk;

    move-result-object p0

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/android/gms/internal/zzbok;)Lcom/google/firebase/database/connection/idl/zzh;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/firebase/database/connection/idl/zzl;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/idl/zzk;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzh;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzl;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Long;)J
    .locals 5

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag parameter clashed with NO_TAG value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-wide v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzh;)Lcom/google/android/gms/internal/zzbok;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;-><init>(Lcom/google/firebase/database/connection/idl/zzh;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzl;)Lcom/google/android/gms/internal/zzbop$zza;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$4;-><init>(Lcom/google/firebase/database/connection/idl/zzl;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$2;-><init>(Lcom/google/firebase/database/connection/idl/zzm;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbok;)Lcom/google/firebase/database/connection/idl/zzh;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;-><init>(Lcom/google/android/gms/internal/zzbok;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/firebase/database/connection/idl/zzl;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$3;-><init>(Lcom/google/android/gms/internal/zzbop$zza;)V

    return-object v0
.end method

.method private static zzaJ(J)Ljava/lang/Long;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic zzaK(J)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzaJ(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Ljava/lang/Long;)J
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop;->initialize()V

    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbop;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbop;->isInterrupted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzj;JLcom/google/firebase/database/connection/idl/zzm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzj;",
            "J",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzaJ(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$1;

    invoke-direct {v3, p0, p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$1;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzj;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p6}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzboo;Ljava/lang/Long;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbop;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbop;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop;->purgeOutstandingWrites()V

    return-void
.end method

.method public put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzm;)Lcom/google/android/gms/internal/zzbos;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop;->refreshAuthToken()V

    return-void
.end method

.method public refreshAuthToken2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbop;->zziN(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbop;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzh;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzl;)V
    .locals 8

    iget-object v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzccY:Lcom/google/firebase/database/connection/idl/zzf;

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/firebase/database/connection/idl/zzf;)Lcom/google/android/gms/internal/zzbon;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzl;)Lcom/google/android/gms/internal/zzbop$zza;

    move-result-object p3

    new-instance v2, Lcom/google/android/gms/internal/zzbrl;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/idl/zzc;->zzYe()Lcom/google/android/gms/internal/zzbro$zza;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/idl/zzc;->zzYf()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, p4, v1}, Lcom/google/android/gms/internal/zzbrl;-><init>(Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)V

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzh;)Lcom/google/android/gms/internal/zzbok;

    move-result-object v3

    new-instance p2, Lcom/google/android/gms/internal/zzbol;

    iget-boolean v5, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcbF:Z

    iget-object v6, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcdb:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcbH:Ljava/lang/String;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbol;-><init>(Lcom/google/android/gms/internal/zzbro;Lcom/google/android/gms/internal/zzbok;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzboq;

    invoke-direct {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzboq;-><init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop;->shutdown()V

    return-void
.end method

.method public unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
