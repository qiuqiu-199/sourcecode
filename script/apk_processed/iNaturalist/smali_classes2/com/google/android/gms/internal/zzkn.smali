.class public final Lcom/google/android/gms/internal/zzkn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerListener;",
        "Lcom/google/ads/mediation/MediationInterstitialListener;"
    }
.end annotation


# instance fields
.field private final zzLE:Lcom/google/android/gms/internal/zzkc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkn;)Lcom/google/android/gms/internal/zzkc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    return-object p0
.end method


# virtual methods
.method public onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onClick."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onClick must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$1;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onDismissScreen."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onDismissScreen must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$4;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onDismissScreen."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onDismissScreen must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$9;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$9;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$5;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/zzkn$5;-><init>(Lcom/google/android/gms/internal/zzkn;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzkc;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$10;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/zzkn$10;-><init>(Lcom/google/android/gms/internal/zzkn;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzko;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzkc;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onLeaveApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onLeaveApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$6;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onLeaveApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onLeaveApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$11;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$11;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onPresentScreen."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onPresentScreen must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$7;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onPresentScreen."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onPresentScreen must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$2;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onReceivedAd."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onReceivedAd must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$8;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLoaded."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onReceivedAd."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onReceivedAd must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkn$3;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzLE:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkc;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLoaded."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
