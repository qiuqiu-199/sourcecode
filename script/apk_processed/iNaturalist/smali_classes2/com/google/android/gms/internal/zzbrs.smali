.class public Lcom/google/android/gms/internal/zzbrs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbrs$zza;,
        Lcom/google/android/gms/internal/zzbrs$zzb;,
        Lcom/google/android/gms/internal/zzbrs$zzc;
    }
.end annotation


# instance fields
.field private final zzcbp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbph;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcbq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbph;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrs;->zzcbp:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrs;->zzcbq:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrs$zzc;)Lcom/google/android/gms/internal/zzbrs;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzbrs;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbrs;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbrs$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrs$zza;-><init>(Lcom/google/android/gms/internal/zzbrs$zzc;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbrs;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrs$zza;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrs$zza;->zza(Lcom/google/android/gms/internal/zzbrs$zza;)V

    new-instance p0, Lcom/google/android/gms/internal/zzbrs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrs$zza;->zzb(Lcom/google/android/gms/internal/zzbrs$zza;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrs$zza;->zzc(Lcom/google/android/gms/internal/zzbrs$zza;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbrs;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrs$zza;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/zzbrz;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzbrs$zza;->zza(Lcom/google/android/gms/internal/zzbrs$zza;Lcom/google/android/gms/internal/zzbrz;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbrr;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/zzbrr;

    new-instance v0, Lcom/google/android/gms/internal/zzbrs$1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbrs$1;-><init>(Lcom/google/android/gms/internal/zzbrs$zza;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzbrr;->zza(Lcom/google/android/gms/internal/zzbrr$zza;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected children node, but got: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t calculate hash on empty node!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrs$zza;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbrs;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrs$zza;)V

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbrs$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbrs$zzb;-><init>(Lcom/google/android/gms/internal/zzbsc;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbrs;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrs$zzc;)Lcom/google/android/gms/internal/zzbrs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public zzXp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrs;->zzcbp:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzXq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrs;->zzcbq:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
