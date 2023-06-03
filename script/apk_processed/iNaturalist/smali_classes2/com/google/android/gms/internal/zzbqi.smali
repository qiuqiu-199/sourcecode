.class public Lcom/google/android/gms/internal/zzbqi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbql;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzchb:Lcom/google/android/gms/internal/zzbqm;

.field private final zzchc:Lcom/google/android/gms/internal/zzbqp;

.field private final zzchd:Lcom/google/android/gms/internal/zzbqh;

.field private zzche:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbqm;Lcom/google/android/gms/internal/zzbqh;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbsx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsx;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzbqi;-><init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbqm;Lcom/google/android/gms/internal/zzbqh;Lcom/google/android/gms/internal/zzbsw;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbqm;Lcom/google/android/gms/internal/zzbqh;Lcom/google/android/gms/internal/zzbsw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzche:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    const-string p2, "Persistence"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    new-instance p1, Lcom/google/android/gms/internal/zzbqp;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-direct {p1, p2, v0, p4}, Lcom/google/android/gms/internal/zzbqp;-><init>(Lcom/google/android/gms/internal/zzbqm;Lcom/google/android/gms/internal/zzbrn;Lcom/google/android/gms/internal/zzbsw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqi;->zzchd:Lcom/google/android/gms/internal/zzbqh;

    return-void
.end method

.method private zzZH()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzche:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzche:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchd:Lcom/google/android/gms/internal/zzbqh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbqi;->zzche:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqh;->zzaQ(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Reached prune check threshold."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbqi;->zzche:J

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbqm;->zzWP()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const/16 v5, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cache size: "

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqi;->zzchd:Lcom/google/android/gms/internal/zzbqh;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbqp;->zzZL()J

    move-result-wide v5

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/google/android/gms/internal/zzbqh;->zzk(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqi;->zzchd:Lcom/google/android/gms/internal/zzbqh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqh;)Lcom/google/android/gms/internal/zzbqn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqn;->zzZI()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqn;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbqm;->zzWP()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqi;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const/16 v5, 0x2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cache size after prune: "

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public zzWO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->zzWO()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzWR()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->zzWR()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;J)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;J)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzbqm;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbqi;->zzi(Lcom/google/android/gms/internal/zzbrc;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqi;->zzZH()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzbqo;->id:J

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/internal/zzbqm;->zza(JLjava/util/Set;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzbqo;->id:J

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/zzbqm;->zza(JLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public zzaD(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbqm;->zzaD(J)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzbqi;->zzk(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqi;->zzZH()V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqu;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzo(Lcom/google/android/gms/internal/zzbrc;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzl(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzbqo;->zzcho:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzbqo;->id:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/zzbqm;->zzaG(J)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzbqp;->zzB(Lcom/google/android/gms/internal/zzbph;)Ljava/util/Set;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    invoke-direct {v0, p1, v3, v2}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    return-object v0
.end method

.method public zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbqm;->endTransaction()V

    throw p1
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzg(Lcom/google/android/gms/internal/zzbrc;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzh(Lcom/google/android/gms/internal/zzbrc;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzA(Lcom/google/android/gms/internal/zzbph;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzn(Lcom/google/android/gms/internal/zzbrc;)V

    :goto_0
    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqp;->zzD(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqi;->zzchb:Lcom/google/android/gms/internal/zzbqm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbqm;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbqi;->zzchc:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbqp;->zzC(Lcom/google/android/gms/internal/zzbph;)V

    :cond_0
    return-void
.end method
