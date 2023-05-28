.class public Lorg/apache/commons/collections4/map/LRUMap;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.source "LRUMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/BoundedMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/BoundedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_MAX_SIZE:I = 0x64

.field private static final serialVersionUID:J = -0x87eab066ef95b52L


# instance fields
.field private transient maxSize:I

.field private scanUntilRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x64

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 87
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, p1

    .line 127
    :goto_0
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IF)V

    if-lt p1, v0, :cond_1

    .line 131
    iput p1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    .line 132
    iput-boolean p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return-void

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LRUMap max size must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 99
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    .line 161
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 424
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 416
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    .line 249
    iget-boolean v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    if-eqz v2, :cond_3

    .line 250
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 255
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Entry.after=null, header.after"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " header.before"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " value="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " size="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " maxSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " Please check that your keys are immutable, and that you have used synchronization properly."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    :goto_2
    move-object v3, v0

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 276
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 270
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reuse=null, header.after="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " header.before"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " value="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " size="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " maxSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " Please check that your keys are immutable, and that you have used synchronization properly."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 281
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/LRUMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/LRUMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 408
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LRUMap;

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 448
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    .line 449
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 436
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    .line 181
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isFull()Z
    .locals 2

    .line 377
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScanUntilRemovable()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    .line 386
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    return v0
.end method

.method protected moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_1

    .line 194
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    .line 196
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 202
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 204
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 205
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry.before is null. Please check that your keys are immutable, and that you have used synchronization properly. If so, then please report this to dev@commons.apache.org as a bug."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v0, :cond_2

    :goto_0
    return-void

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t move header to MRU (please report this to dev@commons.apache.org)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 302
    :try_start_0
    iget v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->hashCode:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/LRUMap;->hashIndex(II)I

    move-result v1

    .line 303
    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 304
    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_0
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    if-eq v3, p1, :cond_0

    if-eqz v3, :cond_0

    .line 308
    iget-object v2, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 319
    iget v3, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    .line 320
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/collections4/map/LRUMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 321
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/LRUMap;->addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V

    return-void

    .line 311
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry.next=null, data[removeIndex]="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v1, v3, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " previous="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " key="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxSize="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Please check that your keys are immutable, and that you have used synchronization properly."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 324
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NPE, entry="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " entryIsHeader="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " key="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " maxSize="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Please check that your keys are immutable, and that you have used synchronization properly."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 225
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    .line 226
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
