.class public Lcom/google/android/gms/internal/zzbjq;
.super Lcom/google/android/gms/internal/zzbjz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbjz<",
        "Lcom/google/android/gms/internal/zzbjv;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbOX:Lcom/google/android/gms/internal/zzbjt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjt;)V
    .locals 1

    const-string v0, "FaceNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbjz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjq;->zzbOX:Lcom/google/android/gms/internal/zzbjt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzTS()Ljava/lang/Object;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbjr;)Lcom/google/android/gms/vision/face/Face;
    .locals 12

    new-instance v11, Lcom/google/android/gms/vision/face/Face;

    iget v1, p1, Lcom/google/android/gms/internal/zzbjr;->id:I

    new-instance v2, Landroid/graphics/PointF;

    iget v0, p1, Lcom/google/android/gms/internal/zzbjr;->centerX:F

    iget v3, p1, Lcom/google/android/gms/internal/zzbjr;->centerY:F

    invoke-direct {v2, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, p1, Lcom/google/android/gms/internal/zzbjr;->width:F

    iget v4, p1, Lcom/google/android/gms/internal/zzbjr;->height:F

    iget v5, p1, Lcom/google/android/gms/internal/zzbjr;->zzbOY:F

    iget v6, p1, Lcom/google/android/gms/internal/zzbjr;->zzbOZ:F

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbjq;->zzb(Lcom/google/android/gms/internal/zzbjr;)[Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v7

    iget v8, p1, Lcom/google/android/gms/internal/zzbjr;->zzbPb:F

    iget v9, p1, Lcom/google/android/gms/internal/zzbjr;->zzbPc:F

    iget v10, p1, Lcom/google/android/gms/internal/zzbjr;->zzbPd:F

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/vision/face/Face;-><init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V

    return-object v11
.end method

.method private zza(Lcom/google/android/gms/internal/zzbjx;)Lcom/google/android/gms/vision/face/Landmark;
    .locals 4

    new-instance v0, Lcom/google/android/gms/vision/face/Landmark;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/google/android/gms/internal/zzbjx;->x:F

    iget v3, p1, Lcom/google/android/gms/internal/zzbjx;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget p1, p1, Lcom/google/android/gms/internal/zzbjx;->type:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/vision/face/Landmark;-><init>(Landroid/graphics/PointF;I)V

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbjr;)[Lcom/google/android/gms/vision/face/Landmark;
    .locals 3

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbjr;->zzbPa:[Lcom/google/android/gms/internal/zzbjx;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lcom/google/android/gms/vision/face/Landmark;

    goto :goto_1

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzbjq;->zza(Lcom/google/android/gms/internal/zzbjx;)Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected zzTP()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzTS()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbjv;->zzTQ()V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjq;->zzc(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Lcom/google/android/gms/internal/zzbjv;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/zzbka;)[Lcom/google/android/gms/vision/face/Face;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/vision/face/Face;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzTS()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjv;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbjv;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbka;)[Lcom/google/android/gms/internal/zzbjr;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/vision/face/Face;

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbjq;->zza(Lcom/google/android/gms/internal/zzbjr;)Lcom/google/android/gms/vision/face/Face;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "FaceNativeHandle"

    const-string v0, "Could not call native face detector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lcom/google/android/gms/vision/face/Face;

    return-object p1
.end method

.method protected zzc(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Lcom/google/android/gms/internal/zzbjv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbjw$zza;->zzfq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbjw;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjq;->zzbOX:Lcom/google/android/gms/internal/zzbjt;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzbjw;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbjt;)Lcom/google/android/gms/internal/zzbjv;

    move-result-object p1

    return-object p1
.end method

.method public zzoh(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzTS()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbjv;->zzoh(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "FaceNativeHandle"

    const-string v2, "Could not call native face detector"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
