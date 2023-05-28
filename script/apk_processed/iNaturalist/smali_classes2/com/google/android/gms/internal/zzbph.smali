.class public Lcom/google/android/gms/internal/zzbph;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzbph;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/zzbrq;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzcel:Lcom/google/android/gms/internal/zzbph;


# instance fields
.field private final end:I

.field private final start:I

.field private final zzcek:[Lcom/google/android/gms/internal/zzbrq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbph;->zzcel:Lcom/google/android/gms/internal/zzbph;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Lcom/google/android/gms/internal/zzbrq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    aput-object v4, v5, v3

    move v3, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbrq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/zzbrq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbrq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    array-length v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>([Lcom/google/android/gms/internal/zzbrq;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iput p2, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    return-void
.end method

.method public static zzYP()Lcom/google/android/gms/internal/zzbph;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbph;->zzcel:Lcom/google/android/gms/internal/zzbph;

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "INTERNAL ERROR: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not contained in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzbph;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    return p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzbph;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzbph;)[Lcom/google/android/gms/internal/zzbrq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    return-object p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbph;->zzj(Lcom/google/android/gms/internal/zzbph;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbph;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbph;->start:I

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v2, v4, :cond_4

    iget v4, p1, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v4, v4, v2

    iget-object v5, p1, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbph$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbph$1;-><init>(Lcom/google/android/gms/internal/zzbph;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v1, v2, :cond_1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzYQ()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    if-le v1, v2, :cond_1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzYR()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public zzYS()Lcom/google/android/gms/internal/zzbrq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v1, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public zzYT()Lcom/google/android/gms/internal/zzbph;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v3, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;II)V

    return-object v1
.end method

.method public zzYU()Lcom/google/android/gms/internal/zzbph;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iget v3, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;II)V

    return-object v0
.end method

.method public zzYV()Lcom/google/android/gms/internal/zzbrq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v1, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [Lcom/google/android/gms/internal/zzbrq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v4, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v0

    new-instance p1, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {p1, v2, v5, v1}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;II)V

    return-object p1
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [Lcom/google/android/gms/internal/zzbrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v3, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    iget v3, p1, Lcom/google/android/gms/internal/zzbph;->start:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result p1

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {p1, v1, v5, v0}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;II)V

    return-object p1
.end method

.method public zzi(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iget v1, p1, Lcom/google/android/gms/internal/zzbph;->start:I

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public zzj(Lcom/google/android/gms/internal/zzbph;)I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbph;->start:I

    iget v1, p1, Lcom/google/android/gms/internal/zzbph;->start:I

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v0, v2, :cond_1

    iget v2, p1, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbph;->zzcek:[Lcom/google/android/gms/internal/zzbrq;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ne v0, v2, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/zzbph;->end:I

    if-ne v0, p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
