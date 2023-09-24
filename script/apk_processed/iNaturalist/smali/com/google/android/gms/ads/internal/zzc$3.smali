.class Lcom/google/android/gms/ads/internal/zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsH:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzsI:Lcom/google/android/gms/internal/zzpb$zza;

.field final synthetic zzsJ:Lcom/google/android/gms/internal/zzot;

.field final synthetic zzsK:Lcom/google/android/gms/internal/zzgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/internal/zzgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsJ:Lcom/google/android/gms/internal/zzot;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsK:Lcom/google/android/gms/internal/zzgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->zzSw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvI:Lcom/google/android/gms/internal/zzgp;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpo;->zzaX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzgm;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvO:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsq:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvI:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgp;->zza(Lcom/google/android/gms/internal/zzgo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsq:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsJ:Lcom/google/android/gms/internal/zzot;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzot;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/ads/internal/zzc$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$1;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zzf;)V

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/zzqw;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzc$3$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$2;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zzf;)V

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/zzqw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvO:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcL()Lcom/google/android/gms/internal/zzlq;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v11, v1, Lcom/google/android/gms/ads/internal/zzc;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v13, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzsK:Lcom/google/android/gms/internal/zzgl;

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/internal/zzlq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvq:Lcom/google/android/gms/internal/zzpq;

    return-void
.end method
