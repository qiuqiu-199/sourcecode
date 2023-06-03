.class public final Lcom/google/android/gms/ads/internal/purchase/zzg;
.super Lcom/google/android/gms/internal/zzlh$zza;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResultCode:I

.field private zzPD:Lcom/google/android/gms/ads/internal/purchase/zzf;

.field private zzPJ:Z

.field private zzPK:Landroid/content/Intent;

.field zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

.field private zzPz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlh$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPJ:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPz:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mResultCode:I

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPK:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPJ:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPD:Lcom/google/android/gms/ads/internal/purchase/zzf;

    return-void
.end method


# virtual methods
.method public finishPurchase()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPK:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mResultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPz:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPK:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mResultCode:I

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPJ:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "In-app billing service connected."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzV(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPK:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zze(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzaF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzu(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPD:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "In-app billing service disconnected."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method