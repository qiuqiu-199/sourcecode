.class Lcom/google/android/gms/fitness/data/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanw<",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaSz:Lcom/google/android/gms/fitness/data/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzg;->zzaSz:Lcom/google/android/gms/fitness/data/zzg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    return-object p1
.end method


# virtual methods
.method public synthetic zzD(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzg;->zzb(Lcom/google/android/gms/fitness/data/DataType;)I

    move-result p1

    return p1
.end method

.method public synthetic zzE(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/zzg;->zza(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/fitness/data/DataType;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataType;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public zzb(Lcom/google/android/gms/fitness/data/DataType;I)Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Field;->isOptional()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zzc(Lcom/google/android/gms/fitness/data/DataType;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zzd(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result p1

    return p1
.end method

.method public zzdW(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzl;->zzdX(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic zze(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zzc(Lcom/google/android/gms/fitness/data/DataType;I)I

    move-result p1

    return p1
.end method

.method public synthetic zzf(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zzb(Lcom/google/android/gms/fitness/data/DataType;I)Z

    move-result p1

    return p1
.end method

.method public synthetic zzg(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zza(Lcom/google/android/gms/fitness/data/DataType;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
