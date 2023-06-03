.class Lcom/google/android/gms/internal/zzbpr$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
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
        "Lcom/google/android/gms/internal/zzbqy;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic zzceT:Lcom/google/android/gms/internal/zzbrc;

.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcfY:Lcom/google/android/gms/internal/zzbpc;

.field final synthetic zzcfZ:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpr;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfZ:Lcom/google/firebase/database/DatabaseError;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpr$4;->zzMN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzMN()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpq;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrc;->isDefault()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbpq;->zzc(Lcom/google/android/gms/internal/zzbrc;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfY:Lcom/google/android/gms/internal/zzbpc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfZ:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbpq;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/DatabaseError;)Lcom/google/android/gms/internal/zzbtb;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbqq;->zzJ(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtb;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtb;->zzabJ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbrc;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-interface {v8, v9}, Lcom/google/android/gms/internal/zzbql;->zzh(Lcom/google/android/gms/internal/zzbrc;)V

    if-nez v5, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    if-nez v6, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbpq;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbpq;->zzZh()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_9
    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpr;->zzd(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbrd;

    new-instance v4, Lcom/google/android/gms/internal/zzbpr$zzc;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {v4, v7, v3}, Lcom/google/android/gms/internal/zzbpr$zzc;-><init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrd;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbpr$zzc;->zza(Lcom/google/android/gms/internal/zzbpr$zzc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v8

    invoke-interface {v7, v3, v8, v4, v4}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzbpr$zza;)V

    goto :goto_4

    :cond_a
    if-nez v6, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfZ:Lcom/google/firebase/database/DatabaseError;

    if-nez v0, :cond_c

    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V

    goto :goto_6

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbrc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbpr$zzd;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Lcom/google/android/gms/internal/zzbpr$zzd;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V

    goto :goto_5

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$4;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Ljava/util/List;)V

    :cond_d
    return-object v2
.end method
