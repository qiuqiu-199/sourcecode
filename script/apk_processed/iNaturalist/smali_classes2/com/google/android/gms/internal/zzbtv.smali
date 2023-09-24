.class public Lcom/google/android/gms/internal/zzbtv;
.super Ljava/lang/Object;


# static fields
.field static zzajZ:Lcom/google/android/gms/common/util/zze;

.field private static zzbSW:Ljava/util/Random;

.field static zzcoG:Lcom/google/android/gms/internal/zzbtx;


# instance fields
.field private volatile zzK:Z

.field private zzcli:Lcom/google/firebase/FirebaseApp;

.field private zzcoH:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbty;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbty;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbtv;->zzcoG:Lcom/google/android/gms/internal/zzbtx;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbtv;->zzajZ:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbtv;->zzbSW:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbtv;->zzcoH:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbtv;->zzK:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbtv;->zzK:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbue;Z)V
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/zzbue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzbtv;->zzajZ:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbtv;->zzcoH:J

    add-long/2addr v0, v2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbua;->zzi(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbue;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbua;->zzi(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbue;->zzjN(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x3e8

    const/16 v3, 0x3e8

    :goto_1
    sget-object v4, Lcom/google/android/gms/internal/zzbtv;->zzajZ:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gtz v6, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbue;->zzadc()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbue;->getResultCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzbtv;->zzqR(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/zzbtv;->zzcoG:Lcom/google/android/gms/internal/zzbtx;

    sget-object v5, Lcom/google/android/gms/internal/zzbtv;->zzbSW:Ljava/util/Random;

    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzbtx;->zzqS(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x7530

    if-ge v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbue;->getResultCode()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    mul-int/lit8 v3, v3, 0x2

    const-string v4, "ExponenentialBackoff"

    const-string v5, "network error occurred, backing off/sleeping."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v3, "ExponenentialBackoff"

    const-string v4, "network unavailable, sleeping."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzbtv;->zzK:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbue;->reset()V

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbua;->zzi(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/zzbue;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbtv;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbua;->zzi(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzbue;->zzjN(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    const-string p1, "ExponenentialBackoff"

    const-string p2, "thread interrupted during exponential backoff."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzbue;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzbue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbtv;->zza(Lcom/google/android/gms/internal/zzbue;Z)V

    return-void
.end method

.method public zzqR(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x258

    if-lt p1, v0, :cond_2

    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_2

    const/16 v0, 0x198

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
