.class Lcom/google/android/gms/internal/zzdd$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdd$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;

.field private zztZ:Z

.field private zzxJ:Z

.field private zzxK:Z

.field private zzxL:Ljava/lang/Runnable;

.field private zzxM:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxJ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxK:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdd$zza;->mListeners:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zztZ:Z

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->mActivity:Landroid/app/Activity;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdd$zza;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzrJ:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdd$zza;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxJ:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdd$zza;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxJ:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdd$zza;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxK:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdd$zza;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdd$zza;->mListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdd$zza;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdd$zza;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->mActivity:Landroid/app/Activity;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdd$zza;->setActivity(Landroid/app/Activity;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxK:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxL:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxL:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzdd$zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdd$zza$1;-><init>(Lcom/google/android/gms/internal/zzdd$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxL:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxM:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdd$zza;->setActivity(Landroid/app/Activity;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxK:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxJ:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxJ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxL:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxL:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdd$zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzdd$zzb;->zzk(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "OnForegroundStateChangedListener threw exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "App is still foreground."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdd$zza;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public zza(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->zztZ:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdd$zza;->setActivity(Landroid/app/Activity;)V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzdd$zza;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCQ:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zzxM:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdd$zza;->zztZ:Z

    :cond_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdd$zzb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
