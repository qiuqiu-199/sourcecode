.class public Lcom/google/android/gms/internal/zzbrd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbrd$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzchZ:Lcom/google/android/gms/internal/zzbrc;

.field private final zzciq:Lcom/google/android/gms/internal/zzbrf;

.field private zzcir:Lcom/google/android/gms/internal/zzbre;

.field private final zzcis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcit:Lcom/google/android/gms/internal/zzbqz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbre;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrd;->zzchZ:Lcom/google/android/gms/internal/zzbrc;

    new-instance v0, Lcom/google/android/gms/internal/zzbrh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrh;-><init>(Lcom/google/android/gms/internal/zzbrw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrb;->zzaap()Lcom/google/android/gms/internal/zzbrj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbrf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzbrf;-><init>(Lcom/google/android/gms/internal/zzbrj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzciq:Lcom/google/android/gms/internal/zzbrf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzbrh;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v6

    invoke-interface {v1, v3, v6, v5}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrh;->zzaaA()Z

    move-result v0

    invoke-direct {v5, v4, v2, v0}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbrj;->zzaaA()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    new-instance p2, Lcom/google/android/gms/internal/zzbre;

    invoke-direct {p2, v0, v5}, Lcom/google/android/gms/internal/zzbre;-><init>(Lcom/google/android/gms/internal/zzbqu;Lcom/google/android/gms/internal/zzbqu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/zzbqz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzbqz;-><init>(Lcom/google/android/gms/internal/zzbrc;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrd;->zzcit:Lcom/google/android/gms/internal/zzbqz;

    return-void
.end method

.method private zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;",
            "Lcom/google/android/gms/internal/zzbrx;",
            "Lcom/google/android/gms/internal/zzbpc;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbpc;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcit:Lcom/google/android/gms/internal/zzbqz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqz;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpc;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrd;->zzchZ:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbpc;

    new-instance v4, Lcom/google/android/gms/internal/zzbqv;

    invoke-direct {v4, v3, p2, v1}, Lcom/google/android/gms/internal/zzbqv;-><init>(Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzbph;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_5

    const/4 p2, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzbpc;->zzc(Lcom/google/android/gms/internal/zzbpc;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpc;->zzYL()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_2
    if-eq p2, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbpc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYK()V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbpc;->zzYK()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    :goto_4
    return-object v0
.end method

.method public zzaar()Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzchZ:Lcom/google/android/gms/internal/zzbrc;

    return-object v0
.end method

.method public zzaas()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzaat()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrd$zza;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqe;->zzZz()Lcom/google/android/gms/internal/zzbqe$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbqe$zza;->zzcgN:Lcom/google/android/gms/internal/zzbqe$zza;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqe;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqf;->zzZD()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrd;->zzciq:Lcom/google/android/gms/internal/zzbrf;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrf$zza;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/zzbrf$zza;->zzcir:Lcom/google/android/gms/internal/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzbrf$zza;->zzciv:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/gms/internal/zzbrf$zza;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/zzbrd;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/zzbrd$zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbrf$zza;->zzciv:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/zzbrd$zza;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzl(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpc;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbqx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbqw;->zzc(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbqw;->zza(Lcom/google/android/gms/internal/zzbrx;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzbrd;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public zzs(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaax()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrd;->zzchZ:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzaan()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
