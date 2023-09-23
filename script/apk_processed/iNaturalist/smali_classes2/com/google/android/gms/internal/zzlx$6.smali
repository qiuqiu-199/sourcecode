.class Lcom/google/android/gms/internal/zzlx$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpv$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzpv$zza<",
        "Lcom/google/android/gms/internal/zzgu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzMo:Ljava/lang/String;

.field final synthetic zzQD:Lcom/google/android/gms/internal/zzlx;

.field final synthetic zzQR:Z

.field final synthetic zzQS:D

.field final synthetic zzQT:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlx;ZDZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQD:Lcom/google/android/gms/internal/zzlx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQR:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQS:D

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQT:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlx$6;->zzMo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzg(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzgu;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQS:D

    const-wide/high16 v3, 0x4064000000000000L    # 160.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQT:Z

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error grabbing image."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQD:Lcom/google/android/gms/internal/zzlx;

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQR:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzlx;->zza(IZ)V

    return-object v3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzpk;->zzkI()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    sub-long/2addr v3, v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x6c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Decoded image w: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " on ui thread: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzgu;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzMo:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQS:D

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzgu;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v0
.end method

.method public synthetic zzh(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlx$6;->zzg(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzgu;

    move-result-object p1

    return-object p1
.end method

.method public zzjh()Lcom/google/android/gms/internal/zzgu;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQD:Lcom/google/android/gms/internal/zzlx;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlx$6;->zzQR:Z

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzlx;->zza(IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic zzji()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlx$6;->zzjh()Lcom/google/android/gms/internal/zzgu;

    move-result-object v0

    return-object v0
.end method
