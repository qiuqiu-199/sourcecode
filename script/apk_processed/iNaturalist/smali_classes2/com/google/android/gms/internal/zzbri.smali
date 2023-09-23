.class public Lcom/google/android/gms/internal/zzbri;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbrj;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final limit:I

.field private final zzciE:Lcom/google/android/gms/internal/zzbrk;

.field private final zzciF:Z

.field private final zzcia:Lcom/google/android/gms/internal/zzbrw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbrb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbrk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrk;-><init>(Lcom/google/android/gms/internal/zzbrb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbri;->limit:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaal()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbri;->zzciF:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbri;->zzciF:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzabe()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzabf()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsb;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzbri;->zzciF:Z

    invoke-interface {p4, v4, v1, v5}, Lcom/google/android/gms/internal/zzbrj$zza;->zza(Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzbsb;Z)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzbri;->zzciF:Z

    invoke-virtual {v4, v1, v0, v5}, Lcom/google/android/gms/internal/zzbrw;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;Z)I

    move-result v0

    :goto_2
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    if-eqz p5, :cond_5

    invoke-static {p2, p3, v3}, Lcom/google/android/gms/internal/zzbqw;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/zzbrg;->zza(Lcom/google/android/gms/internal/zzbqw;)V

    :cond_5
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz p5, :cond_7

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/zzbqw;->zzd(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/zzbrg;->zza(Lcom/google/android/gms/internal/zzbqw;)V

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsb;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    const/4 p4, 0x0

    :goto_4
    if-eqz p4, :cond_a

    if-eqz p5, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzbqw;->zzc(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/zzbrg;->zza(Lcom/google/android/gms/internal/zzbqw;)V

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    :goto_5
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    :cond_a
    return-object p1

    :cond_b
    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_c

    return-object p1

    :cond_c
    if-eqz v2, :cond_e

    iget-object p4, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbri;->zzciF:Z

    invoke-virtual {p4, v1, v0, v2}, Lcom/google/android/gms/internal/zzbrw;->zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;Z)I

    move-result p4

    if-ltz p4, :cond_e

    if-eqz p5, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/zzbqw;->zzd(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/zzbrg;->zza(Lcom/google/android/gms/internal/zzbqw;)V

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzbqw;->zzc(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/zzbrg;->zza(Lcom/google/android/gms/internal/zzbqw;)V

    :cond_d
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p3

    goto :goto_5

    :cond_e
    return-object p1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsb;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p3

    :cond_0
    move-object v3, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbsc;->getChildCount()I

    move-result p3

    iget v0, p0, Lcom/google/android/gms/internal/zzbri;->limit:I

    if-ge p3, v0, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbrk;->zzaaz()Lcom/google/android/gms/internal/zzbrj;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbri;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;
    .locals 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbrx;->zzo(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbri;->zzciF:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrx;->zzWV()Ljava/util/Iterator;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrk;->zzaaC()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrk;->zzaaB()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v3

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrx;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrk;->zzaaB()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrk;->zzaaC()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbsb;

    if-nez v6, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    iget v9, p0, Lcom/google/android/gms/internal/zzbri;->limit:I

    if-ge v7, v9, :cond_3

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-virtual {v9, v8, v3}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrk;->zzaaz()Lcom/google/android/gms/internal/zzbrj;

    move-result-object p2

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;
    .locals 0

    return-object p1
.end method

.method public zzaaA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzaaj()Lcom/google/android/gms/internal/zzbrw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbri;->zzcia:Lcom/google/android/gms/internal/zzbrw;

    return-object v0
.end method

.method public zzaaz()Lcom/google/android/gms/internal/zzbrj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbri;->zzciE:Lcom/google/android/gms/internal/zzbrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrk;->zzaaz()Lcom/google/android/gms/internal/zzbrj;

    move-result-object v0

    return-object v0
.end method
