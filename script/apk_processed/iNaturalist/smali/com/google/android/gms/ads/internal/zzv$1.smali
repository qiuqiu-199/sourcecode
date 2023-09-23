.class Lcom/google/android/gms/ads/internal/zzv$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzv;->zzcz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzuy:Lcom/google/android/gms/ads/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzep;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzv;->zzcB()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzEO:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzep;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzj(I)V

    return v1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzEP:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzep;->onAdFailedToLoad(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzj(I)V

    return v1

    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzEQ:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzep;->onAdLoaded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string v0, "Could not call AdListener.onAdLoaded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzv;->zzA(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzv;->zzj(I)V

    return v1

    :cond_6
    const-string p1, "gmsg://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    if-eqz p1, :cond_8

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzep;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzep;->onAdLeftApplication()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    const-string v0, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzv;->zza(Lcom/google/android/gms/ads/internal/zzv;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzv$1;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/zzv;->zzb(Lcom/google/android/gms/ads/internal/zzv;Ljava/lang/String;)V

    return v1
.end method
