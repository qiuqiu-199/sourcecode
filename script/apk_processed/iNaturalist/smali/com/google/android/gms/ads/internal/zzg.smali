.class public Lcom/google/android/gms/ads/internal/zzg;
.super Lcom/google/android/gms/ads/internal/zzc;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzg$zza;
    }
.end annotation


# instance fields
.field private zzsS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzpb$zza;)Lcom/google/android/gms/internal/zzeg;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->zzzC:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "[xX]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeg;->zzeF()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/zzeg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    return-object p1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/zzpb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzpb;->zzSn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzp;->zzg(Lcom/google/android/gms/internal/zzpb;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzx$zza;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzqw;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzx$zza;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzp;->zzh(Lcom/google/android/gms/internal/zzpb;)Z

    move-result p2

    if-nez p2, :cond_4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzg;->zzb(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzWe:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzpb;->zzWe:Lcom/google/android/gms/internal/zzeg;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/internal/zzeg;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzx$zza;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzpb;->zzWe:Lcom/google/android/gms/internal/zzeg;

    iget v2, v2, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzx$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzpb;->zzWe:Lcom/google/android/gms/internal/zzeg;

    iget v2, v2, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzx$zza;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzg;->zzb(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzx$zza;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzx$zza;->showNext()V

    :cond_5
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx$zza;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzqw;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/zzqw;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg;->zzsn:Lcom/google/android/gms/internal/zzgl;

    invoke-interface {p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzqw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzgl;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzx$zza;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx;->zzdp()V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzx$zza;->setVisibility(I)V

    return v0
.end method

.method private zze(Lcom/google/android/gms/internal/zzpb;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzg()Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzx;->zzdq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb;->zzWa:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzsu:Lcom/google/android/gms/internal/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcy;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzow;->zzjR()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzov;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzvl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzov;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzcy$zzb;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpb;->zzdD()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzcy$zzb;)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzg$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/ads/internal/zzg$3;-><init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzcy;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zzc;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvN:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb;->zzWa:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzsu:Lcom/google/android/gms/internal/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvN:Landroid/view/View;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzg;->zzf(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzg;->zzf(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzsS:Z

    return-void
.end method

.method public showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzot;)Lcom/google/android/gms/internal/zzqw;
    .locals 2
    .param p2    # Lcom/google/android/gms/ads/internal/zzf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zzb(Lcom/google/android/gms/internal/zzpb$zza;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzot;)Lcom/google/android/gms/internal/zzqw;

    move-result-object p1

    return-object p1
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpb;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzpb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzpb;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzp;->zzh(Lcom/google/android/gms/internal/zzpb;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/gms/ads/internal/zzg$zza;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzg$zza;-><init>(Lcom/google/android/gms/ads/internal/zzg;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/ads/internal/zzg$zza;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzpb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzx;->zzdq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzg;->zzb(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzg;->zzh(I)V

    return v1

    :cond_1
    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzpb;->zzSF:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzg;->zzf(Lcom/google/android/gms/internal/zzpb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzpb;->zzWb:Z

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/android/gms/ads/internal/zzg$1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/zzg$1;-><init>(Lcom/google/android/gms/ads/internal/zzg;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_5

    new-instance v2, Lcom/google/android/gms/ads/internal/zzg$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzg$2;-><init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzpb;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zze;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx;->zzdr()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzEh:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzg;->zza(Lcom/google/android/gms/internal/zzpb;Z)V

    :cond_5
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v0

    iget-object p1, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqx;->zzlT()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvG:Lcom/google/android/gms/internal/zzft;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvG:Lcom/google/android/gms/internal/zzft;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzft;->zzAU:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrb;->zzQ(Z)V

    :cond_7
    invoke-direct {p0, p2}, Lcom/google/android/gms/ads/internal/zzg;->zze(Lcom/google/android/gms/internal/zzpb;)V

    const/4 p1, 0x1

    return p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzec;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zze(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zzc;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    move-result p1

    return p1
.end method

.method public zzbF()Lcom/google/android/gms/internal/zzfa;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlG()Lcom/google/android/gms/internal/zzrb;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzbM()Z
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzpo;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpo;->zzJ(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzx$zza;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method zze(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzg;->zzsS:Z

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzec;

    iget v5, v1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    iget-object v8, v1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    iget v9, v1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    iget-object v10, v1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    iget v12, v1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzg;->zzsS:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    move/from16 v23, v1

    move-object v4, v2

    invoke-direct/range {v4 .. v23}, Lcom/google/android/gms/internal/zzec;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzfp;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method zzf(Lcom/google/android/gms/internal/zzpb;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzpb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzpb;->zzWb:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzx$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zze;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzg;->zza(Lcom/google/android/gms/internal/zzpb;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzpb;->zzWb:Z

    :cond_4
    :goto_0
    return-void
.end method
