.class Lcom/google/android/gms/internal/zzbpr$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzg(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/zzbqy;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcfY:Lcom/google/android/gms/internal/zzbpc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpr;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbpc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$3;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzbpq;

    if-eqz v7, :cond_3

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :cond_2
    :goto_2
    move v5, v8

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v7

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbpq;

    if-nez v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzbpq;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzbpq;-><init>(Lcom/google/android/gms/internal/zzbql;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    goto :goto_6

    :cond_6
    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    :goto_6
    iget-object v6, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzbql;->zzg(Lcom/google/android/gms/internal/zzbrc;)V

    if-eqz v4, :cond_a

    new-instance v6, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    invoke-direct {v6, v4, v8, v3}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    goto/16 :goto_9

    :cond_a
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzbql;->zzf(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzbpq;

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzbpq;->zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v4, v8, v9}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    goto :goto_7

    :cond_d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Lcom/google/android/gms/internal/zzbsc;->zze(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    goto :goto_8

    :cond_f
    new-instance v6, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    invoke-direct {v6, v4, v3, v3}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    :goto_9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbpq;->zzc(Lcom/google/android/gms/internal/zzbrc;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbpr;->zzf(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zze(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzg(Lcom/google/android/gms/internal/zzbpr;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbpr;->zzc(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzbpy;->zzu(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbpz;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v2, v4, v1, v6}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbpc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbqu;)Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_11

    if-nez v5, :cond_11

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbpq;->zzb(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$3;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbrd;)V

    :cond_11
    return-object v1
.end method
