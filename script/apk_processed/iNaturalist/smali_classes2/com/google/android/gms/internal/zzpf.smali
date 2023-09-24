.class public Lcom/google/android/gms/internal/zzpf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field final zzWD:Ljava/lang/String;

.field zzWW:I

.field zzWY:J

.field zzWZ:J

.field zzXa:I

.field zzXb:J

.field zzXc:I

.field zzXd:I

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    iput v0, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWD:Ljava/lang/String;

    return-void
.end method

.method public static zzI(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Translucent"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    const-string p0, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p0, "Fail to fetch AdActivity theme"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public zzai(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzec;J)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpe;->zzks()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    sub-long v1, v3, v1

    sget-object v5, Lcom/google/android/gms/internal/zzgd;->zzCR:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzpf;->zzai(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpe;->zzku()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzpf;->zzai(I)V

    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    iget-wide p2, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    :cond_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    iget-object p2, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    const-string p2, "gw"

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    iget p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    iget p1, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    if-nez p1, :cond_3

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/zzpe;->zzp(J)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpe;->zzkt()J

    move-result-wide p1

    const/4 p3, 0x0

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzjV()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzjW()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkE()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    return-wide v0
.end method

.method public zzku()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    return v0
.end method

.method public zzo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpf;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpf;->zzWD:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzpf;->zzWZ:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzpf;->zzWY:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "preqs"

    iget v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXa:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preqs_in_session"

    iget v2, p0, Lcom/google/android/gms/internal/zzpf;->zzWW:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "time_in_session"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXb:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "pclick"

    iget v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXc:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pimp"

    iget v2, p0, Lcom/google/android/gms/internal/zzpf;->zzXd:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "support_transparent_background"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpf;->zzI(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
