.class public Lcom/google/android/gms/internal/zzwv;
.super Ljava/lang/Object;


# static fields
.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "CastDynamiteModule"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public static zza(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/media/zzc;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwv;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/media/zzc;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string p2, "Unable to call %s on %s."

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "newMediaNotificationServiceImpl"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/gms/internal/zzwy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzwz;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            "Lcom/google/android/gms/internal/zzwz;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)",
            "Lcom/google/android/gms/cast/framework/zzg;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzwv;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzwz;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzg;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string p2, "Unable to call %s on %s."

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "newCastContextImpl"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/gms/internal/zzwy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzf;)Lcom/google/android/gms/cast/framework/zzh;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzwv;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwy;->zza(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzf;)Lcom/google/android/gms/cast/framework/zzh;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string p2, "Unable to call %s on %s."

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "newCastSessionImpl"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/gms/internal/zzwy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzl;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwv;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzwy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzl;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string p2, "Unable to call %s on %s."

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "newReconnectionServiceImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/zzwy;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, p2, v0}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzq;)Lcom/google/android/gms/cast/framework/zzm;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzwv;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwy;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzq;)Lcom/google/android/gms/cast/framework/zzm;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string p2, "Unable to call %s on %s."

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "newSessionImpl"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/gms/internal/zzwy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Landroid/os/AsyncTask;Lcom/google/android/gms/internal/zzxi;IIZJIII)Lcom/google/android/gms/internal/zzxh;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/AsyncTask<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/gms/internal/zzxi;",
            "IIZJIII)",
            "Lcom/google/android/gms/internal/zzxh;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwv;->zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/google/android/gms/internal/zzwy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzxi;IIZJIII)Lcom/google/android/gms/internal/zzxh;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzwv;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "newFetchBitmapTaskImpl"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/internal/zzwy;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzaw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzwy;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRU:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzwy$zza;->zzaZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzwy;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
