.class public Lcom/google/android/gms/internal/zzgz;
.super Lcom/google/android/gms/internal/zzhb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzGH:Lcom/google/android/gms/internal/zzke;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzGI:Lcom/google/android/gms/internal/zzkf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzGJ:Lcom/google/android/gms/ads/internal/zzs;

.field private zzGK:Lcom/google/android/gms/internal/zzha;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzGL:Z

.field private zzrJ:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzha$zza;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzhb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzlw;Lcom/google/android/gms/internal/zzaw;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGL:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzha$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/zzgz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzha$zza;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzkf;Lcom/google/android/gms/internal/zzha$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/zzgz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzha$zza;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    return-void
.end method


# virtual methods
.method public zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzke;->zzhh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzkf;->zzhh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "Failed to call getAdChoicesContent"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    monitor-exit v0

    return-object p1

    :cond_3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x1

    :try_start_0
    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzgz;->zzGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/zzke;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/zzkf;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "Failed to call prepareAd"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGL:Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzha;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzke;->getOverrideClickHandling()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/zzke;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzs;->onAdClicked()V

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzkf;->getOverrideClickHandling()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzkf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->onAdClicked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Failed to call performClick"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public zzb(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzgz;->zzq(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzha;->zzb(Landroid/view/View;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->recordImpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzke;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzke;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->recordImpression()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkf;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkf;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Failed to call recordImpression"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public zzc(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzGH:Lcom/google/android/gms/internal/zzke;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzke;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzGI:Lcom/google/android/gms/internal/zzkf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkf;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Failed to call untrackView"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzha;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzha;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzfY()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzha;->zzfY()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGJ:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzs;->zzcx()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzfZ()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGL:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzga()Lcom/google/android/gms/internal/zzha;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGK:Lcom/google/android/gms/internal/zzha;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgb()Lcom/google/android/gms/internal/zzqw;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
