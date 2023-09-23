.class public Lcom/google/android/gms/internal/zzqv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzIs:Lcom/google/android/gms/internal/zzqw;

.field private zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private final zzZu:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzqw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzqv;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqv;->zzZu:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzZu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->pause()V

    :cond_0
    return-void
.end method

.method public zza(IIIIIZ)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlF()Lcom/google/android/gms/internal/zzgk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->zzlE()Lcom/google/android/gms/internal/zzgj;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "vpr2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzqv;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->zzlF()Lcom/google/android/gms/internal/zzgk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzgk;->zzfA()Lcom/google/android/gms/internal/zzgl;

    move-result-object v11

    move-object v6, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/ads/internal/overlay/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqw;IZLcom/google/android/gms/internal/zzgl;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqv;->zzZu:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p4

    invoke-virtual {v1, p1, p2, p3, v6}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzd(IIII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqv;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzqx;->zzO(Z)V

    return-void
.end method

.method public zze(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzd(IIII)V

    :cond_0
    return-void
.end method

.method public zzlo()Lcom/google/android/gms/ads/internal/overlay/zzl;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-object v0
.end method
