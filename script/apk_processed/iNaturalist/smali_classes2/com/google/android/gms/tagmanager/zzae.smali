.class final Lcom/google/android/gms/tagmanager/zzae;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzbFY:Lcom/google/android/gms/dynamite/DynamiteModule;

.field private static volatile zzbFZ:Lcom/google/android/gms/tagmanager/zzbc;

.field private static final zzbGa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/CustomTagProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbGb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/CustomVariableProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbGa:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbGb:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzLO()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbGb:Ljava/util/Map;

    return-object v0
.end method

.method static zzQG()Lcom/google/android/gms/tagmanager/zzay;
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzae$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzae$2;-><init>()V

    return-object v0
.end method

.method static synthetic zzQH()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbGa:Ljava/util/Map;

    return-object v0
.end method

.method static zza(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzae;->zzbX(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbc;

    move-result-object v0

    const-class v6, Lcom/google/android/gms/tagmanager/zzae;

    monitor-enter v6

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzae;->zzbFY:Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzBS()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzae;->zzbZ(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbb;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzae;->zzQG()Lcom/google/android/gms/tagmanager/zzay;

    move-result-object v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzbc;->previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static zzbV(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzae;->zzbY(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.android.gms.tagmanager.TagManagerServiceProviderImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbd$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzbd;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzae;->zzbZ(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbb;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzae;->zzQG()Lcom/google/android/gms/tagmanager/zzay;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzbd;->getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzbbs;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbbs;->asBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zzbW(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzae;->zzbX(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbc;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/tagmanager/zzae;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzae;->zzbZ(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbb;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzae;->zzQG()Lcom/google/android/gms/tagmanager/zzay;

    move-result-object v3

    invoke-interface {v0, v2, p0, v3}, Lcom/google/android/gms/tagmanager/zzbc;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static zzbX(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbc;
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbFZ:Lcom/google/android/gms/tagmanager/zzbc;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/tagmanager/zzae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbFZ:Lcom/google/android/gms/tagmanager/zzbc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzae;->zzbY(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.android.gms.tagmanager.TagManagerApiImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbc$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzbc;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/tagmanager/zzae;->zzbFZ:Lcom/google/android/gms/tagmanager/zzbc;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static zzbY(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbFY:Lcom/google/android/gms/dynamite/DynamiteModule;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/tagmanager/zzae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzae;->zzbFY:Lcom/google/android/gms/dynamite/DynamiteModule;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzae;->zzbFY:Lcom/google/android/gms/dynamite/DynamiteModule;

    if-nez v2, :cond_0

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRX:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v2, "com.google.android.gms.tagmanager"

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/tagmanager/zzae;->zzbFY:Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object v0, p0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static zzbZ(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbb;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzae$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzae$1;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    return-object v0
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const-string v1, "GoogleTagManagerAPI"

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t implement "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " interface."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_3

    :cond_2
    :try_start_1
    new-array p1, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v0, p1

    goto :goto_3

    :catch_0
    :try_start_2
    const-string p1, "GoogleTagManagerAPI"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " doesn\'t have an accessible no-arg constructor"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string p1, "GoogleTagManagerAPI"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is an abstract class."

    goto :goto_2

    :catch_2
    const-string p1, "GoogleTagManagerAPI"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " construction threw an exception."

    goto :goto_2

    :catch_3
    const-string p1, "GoogleTagManagerAPI"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " doesn\'t have an accessible no-arg constructor"

    goto :goto_2

    :catch_4
    const-string p1, "GoogleTagManagerAPI"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " doesn\'t have a valid no-arg constructor"
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_2

    :catch_5
    const-string p1, "GoogleTagManagerAPI"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " can\'t be found in the application."

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method static synthetic zzd(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/tagmanager/zzae;->zzc(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
