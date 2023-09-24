.class public Lcom/google/android/gms/internal/zzbqq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbqq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/android/gms/internal/zzbph;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final zzchy:Lcom/google/android/gms/internal/zzbny;

.field private static final zzchz:Lcom/google/android/gms/internal/zzbqq;


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzchx:Lcom/google/android/gms/internal/zzbny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbny<",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzbrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboh;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzboh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbny$zza;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbqq;->zzchy:Lcom/google/android/gms/internal/zzbny;

    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqq;->zzchy:Lcom/google/android/gms/internal/zzbny;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqq;->zzchz:Lcom/google/android/gms/internal/zzbqq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbqq;->zzchy:Lcom/google/android/gms/internal/zzbny;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/zzbny<",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    return-void
.end method

.method public static zzZN()Lcom/google/android/gms/internal/zzbqq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbqq;->zzchz:Lcom/google/android/gms/internal/zzbqq;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq$zza;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqq$zza<",
            "-TT;TR;>;TR;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbqq;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-direct {v2, v1, p2, p3}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/zzbqq$zza;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    return-object p3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbqq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbny;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbny;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/android/gms/internal/zzbph;",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzbqq$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbqq$2;-><init>(Lcom/google/android/gms/internal/zzbqq;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbqq$zza;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableTree { value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzbqq$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbqq$1;-><init>(Lcom/google/android/gms/internal/zzbqq;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbqq$zza;)V

    return-object v0
.end method

.method public zzG(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqr;->zzchC:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    return-object p1
.end method

.method public zzH(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbqr;->zzchC:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbqq;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    return-object p1
.end method

.method public zzJ(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbny;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbqq;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbqq;->zzJ(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbny;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzbny;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbny;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    return-object v0

    :cond_4
    return-object p0
.end method

.method public zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public zzZO()Lcom/google/android/gms/internal/zzbny;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbny<",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Lcom/google/android/gms/internal/zzbph;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqr<",
            "-TT;>;)",
            "Lcom/google/android/gms/internal/zzbph;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbqq;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/zzbph;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbny;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbny;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/zzbqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    return-object p2
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqq$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqq$zza<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq$zza;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "TT;)",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzbqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbqq;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbny;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzbqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbny;)V

    return-object p2
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqr<",
            "-TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbrq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    return-object p1

    :cond_3
    return-object v2
.end method

.method public zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/google/android/gms/internal/zzbqq$zza<",
            "-TT;TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbqr;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqr<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbqr;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqr<",
            "-TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    move-object v0, p0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqq;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbqq;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrq;",
            ")",
            "Lcom/google/android/gms/internal/zzbqq<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq;->zzchx:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbny;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbqq;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object p1

    return-object p1
.end method
