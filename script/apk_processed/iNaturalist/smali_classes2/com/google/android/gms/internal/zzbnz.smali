.class public Lcom/google/android/gms/internal/zzbnz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final zzcaU:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/zzbof<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final zzcaV:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbod;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbod<",
            "TK;TV;>;TK;",
            "Ljava/util/Comparator<",
            "TK;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaV:Z

    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbod;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbod;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gez v0, :cond_4

    if-eqz p4, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbod;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbod;->zzXd()Lcom/google/android/gms/internal/zzbod;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    check-cast p1, Lcom/google/android/gms/internal/zzbof;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/zzbof;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbnz;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbof;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbof;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaV:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbof;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/zzbof;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXd()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbof;->zzXd()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnz;->zzcaU:Ljava/util/Stack;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/zzbof;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-object v1

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method