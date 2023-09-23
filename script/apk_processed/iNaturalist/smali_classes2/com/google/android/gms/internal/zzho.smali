.class public Lcom/google/android/gms/internal/zzho;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzAl:Lcom/google/android/gms/ads/VideoController;

.field private final zzHw:Lcom/google/android/gms/internal/zzhn;

.field private final zzHx:Lcom/google/android/gms/ads/formats/MediaView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzAl:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzhn;->zzfW()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to inflate MediaView."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzho;->zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/formats/MediaView;

    move-result-object p1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzhn;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Unable to render video in MediaView."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHx:Lcom/google/android/gms/ads/formats/MediaView;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getAvailableAssetNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->getAvailableAssetNames()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get available asset names."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get custom template id."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhn;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhf;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzhg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhg;-><init>(Lcom/google/android/gms/internal/zzhf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Failed to get image."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhn;->zzY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to get string."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->zzbF()Lcom/google/android/gms/internal/zzfa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzho;->zzAl:Lcom/google/android/gms/ads/VideoController;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzfa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzAl:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public getVideoMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHx:Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0
.end method

.method public performClick(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzhn;->performClick(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to perform click."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public recordImpression()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzho;->zzHw:Lcom/google/android/gms/internal/zzhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhn;->recordImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/formats/MediaView;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
