.class public Lcom/google/android/gms/internal/zzcw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzwG:Lcom/google/android/gms/internal/zzct;

.field private final zzwI:Lcom/google/android/gms/internal/zzid;

.field private final zzwJ:Lcom/google/android/gms/internal/zzid;

.field private final zzwK:Lcom/google/android/gms/internal/zzid;

.field private zzwM:Lcom/google/android/gms/internal/zzji$zzc;

.field private zzwN:Z

.field private final zzwO:Lcom/google/android/gms/internal/zzid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzji;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcw$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$5;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwI:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$6;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwJ:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$7;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwK:Lcom/google/android/gms/internal/zzid;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$8;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwO:Lcom/google/android/gms/internal/zzid;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcw;->zzwG:Lcom/google/android/gms/internal/zzct;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzji;->zzgO()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    new-instance p2, Lcom/google/android/gms/internal/zzcw$1;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzcw$1;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcw$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcw$2;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    const-string p1, "Core JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcw;->zzwG:Lcom/google/android/gms/internal/zzct;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzct;->zzdR()Lcom/google/android/gms/internal/zzcr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcr;->zzdC()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcw;)Lcom/google/android/gms/internal/zzct;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcw;->zzwG:Lcom/google/android/gms/internal/zzct;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcw;->zzwN:Z

    return p1
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwI:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwJ:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwK:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwO:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    return-void
.end method

.method public zzc(Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzcw$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcw$3;-><init>(Lcom/google/android/gms/internal/zzcw;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwK:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwJ:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwI:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw;->zzwO:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    return-void
.end method

.method public zzdV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwN:Z

    return v0
.end method

.method public zzdW()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcw$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcw$4;-><init>(Lcom/google/android/gms/internal/zzcw;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw;->zzwM:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->release()V

    return-void
.end method
