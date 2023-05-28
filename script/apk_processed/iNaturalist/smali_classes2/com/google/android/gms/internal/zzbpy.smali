.class public Lcom/google/android/gms/internal/zzbpy;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzcgz:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcgw:Lcom/google/android/gms/internal/zzboy;

.field private zzcgx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;"
        }
    .end annotation
.end field

.field private zzcgy:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbpy$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpy$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbpy;->zzcgz:Lcom/google/android/gms/internal/zzbqr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgy:Ljava/lang/Long;

    return-void
.end method

.method private zzZt()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzbpy;->zzcgz:Lcom/google/android/gms/internal/zzbqr;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpy;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqr;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgy:Ljava/lang/Long;

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqr;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;",
            "Lcom/google/android/gms/internal/zzbqr<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Lcom/google/android/gms/internal/zzboy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpv;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzZp()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzZn()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzZn()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbpv;Lcom/google/android/gms/internal/zzbph;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpv;->zzZp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public zzZs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsb;ZLcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbsb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p5, p2, p3, p4}, Lcom/google/android/gms/internal/zzbrw;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;Z)I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {p5, p2, v1, p4}, Lcom/google/android/gms/internal/zzbrw;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;Z)I

    move-result v0

    if-gez v0, :cond_1

    :cond_2
    move-object v1, p2

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqu;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzbsc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    if-nez p4, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object p2

    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzbpy$1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/google/android/gms/internal/zzbpy$1;-><init>(Lcom/google/android/gms/internal/zzbpy;ZLjava/util/List;Lcom/google/android/gms/internal/zzbph;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/zzbpy;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqr;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/zzbpv;-><init>(JLcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgy:Ljava/lang/Long;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Ljava/lang/Long;Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbpv;-><init>(JLcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgy:Ljava/lang/Long;

    return-void
.end method

.method public zzaO(J)Lcom/google/android/gms/internal/zzbpv;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public zzaP(J)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->isVisible()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v4, 0x0

    :goto_2
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgx:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbpv;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    if-lt p2, v2, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/internal/zzbpy;->zza(Lcom/google/android/gms/internal/zzbpv;Lcom/google/android/gms/internal/zzbph;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    return v1

    :cond_5
    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpy;->zzZt()V

    return v0

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZp()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzboy;->zzd(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbph;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzboy;->zzd(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    goto :goto_4

    :cond_8
    :goto_5
    return v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbsb;

    new-instance v2, Lcom/google/android/gms/internal/zzbph;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzboy;->zzg(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboy;->zzYq()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public zzu(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbpz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbpz;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzbpz;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpy;)V

    return-object v0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpy;->zzcgw:Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboy;->zzf(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1
.end method
