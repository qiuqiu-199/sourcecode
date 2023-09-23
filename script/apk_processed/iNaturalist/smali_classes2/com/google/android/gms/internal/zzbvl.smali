.class public final Lcom/google/android/gms/internal/zzbvl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvd;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final zzcpV:Lcom/google/android/gms/internal/zzbvl;


# instance fields
.field private zzcpW:D

.field private zzcpX:I

.field private zzcpY:Z

.field private zzcpZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbug;",
            ">;"
        }
    .end annotation
.end field

.field private zzcqa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbug;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbvl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbvl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbvl;->zzcpV:Lcom/google/android/gms/internal/zzbvl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpW:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpY:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpZ:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcqa:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbvg;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbvg;->zzadx()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpW:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbvg;Lcom/google/android/gms/internal/zzbvh;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbvl;->zza(Lcom/google/android/gms/internal/zzbvg;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvl;->zza(Lcom/google/android/gms/internal/zzbvh;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbvh;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbvh;->zzadx()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpW:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private zzl(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private zzm(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbvl;->zzn(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private zzn(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvl;->zzadz()Lcom/google/android/gms/internal/zzbvl;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbvc<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbwg;->zzadQ()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbvl;->zza(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbvl;->zza(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbvl$1;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbvl$1;-><init>(Lcom/google/android/gms/internal/zzbvl;ZZLcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbug;ZZ)Lcom/google/android/gms/internal/zzbvl;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvl;->zzadz()Lcom/google/android/gms/internal/zzbvl;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpZ:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbvl;->zzcpZ:Ljava/util/List;

    iget-object p2, v0, Lcom/google/android/gms/internal/zzbvl;->zzcpZ:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbvl;->zzcqa:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbvl;->zzcqa:Ljava/util/List;

    iget-object p2, v0, Lcom/google/android/gms/internal/zzbvl;->zzcqa:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public zza(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpW:D

    const/4 v2, 0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    const-class v0, Lcom/google/android/gms/internal/zzbvg;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbvg;

    const-class v1, Lcom/google/android/gms/internal/zzbvh;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbvh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbvl;->zza(Lcom/google/android/gms/internal/zzbvg;Lcom/google/android/gms/internal/zzbvh;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpY:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbvl;->zzm(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbvl;->zzl(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpZ:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcqa:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbug;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbug;->zzg(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public zza(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpX:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpW:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzbvg;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbvg;

    const-class v2, Lcom/google/android/gms/internal/zzbvh;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbvh;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbvl;->zza(Lcom/google/android/gms/internal/zzbvg;Lcom/google/android/gms/internal/zzbvh;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpY:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvl;->zzm(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvl;->zzl(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcpZ:Ljava/util/List;

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbvl;->zzcqa:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzbuh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbuh;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbug;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbug;->zza(Lcom/google/android/gms/internal/zzbuh;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method protected zzadz()Lcom/google/android/gms/internal/zzbvl;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbvl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public varargs zzg([I)Lcom/google/android/gms/internal/zzbvl;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvl;->zzadz()Lcom/google/android/gms/internal/zzbvl;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/zzbvl;->zzcpX:I

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    iget v4, v0, Lcom/google/android/gms/internal/zzbvl;->zzcpX:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/zzbvl;->zzcpX:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
