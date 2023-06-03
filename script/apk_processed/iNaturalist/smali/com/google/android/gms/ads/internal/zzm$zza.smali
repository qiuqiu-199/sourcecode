.class Lcom/google/android/gms/ads/internal/zzm$zza;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zztG:Lcom/google/android/gms/ads/internal/zzm;

.field private final zztH:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzm;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztH:I

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzco()V
    .locals 10

    new-instance v8, Lcom/google/android/gms/ads/internal/zzn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zztK:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzcl()Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/ads/internal/zzm;)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/ads/internal/zzm;)F

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zztK:Z

    const/4 v6, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztH:I

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzn;-><init>(ZZZFI)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget v0, v0, Lcom/google/android/gms/internal/zzpb;->orientation:I

    :cond_1
    move v5, v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzpb;->zzSs:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ILcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzn;)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzm$zza$1;

    invoke-direct {v1, p0, v9}, Lcom/google/android/gms/ads/internal/zzm$zza$1;-><init>(Lcom/google/android/gms/ads/internal/zzm$zza;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
