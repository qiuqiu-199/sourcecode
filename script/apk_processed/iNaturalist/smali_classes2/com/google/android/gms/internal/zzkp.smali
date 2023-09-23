.class public Lcom/google/android/gms/internal/zzkp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field private zzLO:Landroid/app/Activity;

.field private zzLP:Lcom/google/android/gms/internal/zzgr;

.field private zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkp;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/internal/zzgr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    return-object p0
.end method

.method public static zzr(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzgr;->zzo(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgr;->zzd(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez p2, :cond_0

    const-string p1, "Listener not set for mediation. Returning."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzkp;->zzr(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_2
    const-string p2, "tab_url"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_3
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp;->mUri:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/zzgr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzgr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    new-instance p1, Lcom/google/android/gms/internal/zzkp$1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzkp$1;-><init>(Lcom/google/android/gms/internal/zzkp;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzgr;->zza(Lcom/google/android/gms/internal/zzgr$zza;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzgr;->zze(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 9

    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgr;->zzfH()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkp;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v6, Lcom/google/android/gms/internal/zzkp$2;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/zzkp$2;-><init>(Lcom/google/android/gms/internal/zzkp;)V

    new-instance v8, Lcom/google/android/gms/internal/zzqh;

    const/4 v1, 0x0

    invoke-direct {v8, v1, v1, v1}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZ)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqh;)V

    sget-object v2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzkp$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzkp$3;-><init>(Lcom/google/android/gms/internal/zzkp;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpe;->zzH(Z)V

    return-void
.end method
