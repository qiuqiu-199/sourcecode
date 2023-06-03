.class Lcom/google/android/gms/internal/zzbog$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbog$zza$zza;,
        Lcom/google/android/gms/internal/zzbog$zza$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TB;TC;>;"
        }
    .end annotation
.end field

.field private final zzcbg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final zzcbh:Lcom/google/android/gms/internal/zzbny$zza$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbny$zza$zza<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private zzcbi:Lcom/google/android/gms/internal/zzbof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbof<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field private zzcbj:Lcom/google/android/gms/internal/zzbof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbof<",
            "TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/android/gms/internal/zzbny$zza$zza<",
            "TA;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbg:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbog$zza;->values:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbh:Lcom/google/android/gms/internal/zzbny$zza$zza;

    return-void
.end method

.method private zzF(II)Lcom/google/android/gms/internal/zzbod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/zzbod<",
            "TA;TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbg:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzbob;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbog$zza;->zzap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, v1}, Lcom/google/android/gms/internal/zzbob;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    return-object p2

    :cond_1
    div-int/lit8 p2, p2, 0x2

    add-int v0, p1, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbog$zza;->zzF(II)Lcom/google/android/gms/internal/zzbod;

    move-result-object p1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/zzbog$zza;->zzF(II)Lcom/google/android/gms/internal/zzbod;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbg:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbob;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbog$zza;->zzap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzbob;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    return-object v1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbod$zza;II)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzbog$zza;->zzF(II)Lcom/google/android/gms/internal/zzbod;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbg:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzboe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbog$zza;->zzap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lcom/google/android/gms/internal/zzboe;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbob;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbog$zza;->zzap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lcom/google/android/gms/internal/zzbob;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbi:Lcom/google/android/gms/internal/zzbof;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbi:Lcom/google/android/gms/internal/zzbof;

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbj:Lcom/google/android/gms/internal/zzbof;

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbj:Lcom/google/android/gms/internal/zzbof;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbof;->zzb(Lcom/google/android/gms/internal/zzbod;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method private zzap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbog$zza;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbh:Lcom/google/android/gms/internal/zzbny$zza$zza;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzbny$zza$zza;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/android/gms/internal/zzbny$zza$zza<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/android/gms/internal/zzbog<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbog$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbog$zza;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;)V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lcom/google/android/gms/internal/zzbog$zza$zza;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbog$zza$zza;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbog$zza$zza;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbog$zza$zzb;

    iget v1, p2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbn:I

    sub-int/2addr p0, v1

    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbm:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzbod$zza;->zzcba:Lcom/google/android/gms/internal/zzbod$zza;

    :goto_1
    iget p2, p2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbn:I

    invoke-direct {v0, v1, p2, p0}, Lcom/google/android/gms/internal/zzbog$zza;->zza(Lcom/google/android/gms/internal/zzbod$zza;II)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzbod$zza;->zzcba:Lcom/google/android/gms/internal/zzbod$zza;

    iget v2, p2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbn:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/zzbog$zza;->zza(Lcom/google/android/gms/internal/zzbod$zza;II)V

    iget v1, p2, Lcom/google/android/gms/internal/zzbog$zza$zzb;->zzcbn:I

    sub-int/2addr p0, v1

    sget-object v1, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/zzbog;

    iget-object p1, v0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbi:Lcom/google/android/gms/internal/zzbof;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/zzbog$zza;->zzcbi:Lcom/google/android/gms/internal/zzbof;

    :goto_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/gms/internal/zzbog;-><init>(Lcom/google/android/gms/internal/zzbod;Ljava/util/Comparator;Lcom/google/android/gms/internal/zzbog$1;)V

    return-object p0
.end method
