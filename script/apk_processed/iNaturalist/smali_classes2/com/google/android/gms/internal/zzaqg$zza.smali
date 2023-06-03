.class Lcom/google/android/gms/internal/zzaqg$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf$zzb;
.implements Lcom/google/android/gms/common/internal/zzf$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaqg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field protected zzbgf:Lcom/google/android/gms/internal/zzaqh;

.field private final zzbgg:Ljava/lang/String;

.field private final zzbgh:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbgi:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqg$zza;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgg:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgi:Landroid/os/HandlerThread;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgi:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/google/android/gms/internal/zzaqh;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgi:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0, p0}, Lcom/google/android/gms/internal/zzaqh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgh:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqg$zza;->connect()V

    return-void
.end method


# virtual methods
.method protected connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqh;->zzxz()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqg$zza;->zzGK()Lcom/google/android/gms/internal/zzaqm;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzaqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqg$zza;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaqi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzaqm;->zza(Lcom/google/android/gms/internal/zzaqi;)Lcom/google/android/gms/internal/zzaqk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqk;->zzGN()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgh:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqg$zza;->zzjn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqg$zza;->zzjn()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgi:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgh:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgh:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected zzGK()Lcom/google/android/gms/internal/zzaqm;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqh;->zzGL()Lcom/google/android/gms/internal/zzaqm;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public zzaR()Lcom/google/android/gms/internal/zzag$zza;
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaqg$zza;->zzjx(I)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzjn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqh;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgf:Lcom/google/android/gms/internal/zzaqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqh;->disconnect()V

    :cond_1
    return-void
.end method

.method public zzjx(I)Lcom/google/android/gms/internal/zzag$zza;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg$zza;->zzbgh:Ljava/util/concurrent/LinkedBlockingQueue;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzag$zza;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    :cond_0
    return-object p1
.end method
