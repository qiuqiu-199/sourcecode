.class public final Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;,
        Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzajC:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field public static final zzajD:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# instance fields
.field final zzaiI:I

.field final zzajE:Ljava/lang/String;

.field final zzajF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzajG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzajH:I

.field final zzajI:I

.field private final zzajJ:[I

.field private final zzzW:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzm(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v3, "abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzcs(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v3, "abcdefghijkmnopqrstxyz"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v3, "ABCDEFGHJKLMNPQRSTXY"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v3, "3456789"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzqZ()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajC:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzm(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzcs(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "1234567890"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzqZ()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajD:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajE:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajF:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajG:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajH:I

    iput p6, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajI:I

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzqY()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajJ:[I

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzzW:Ljava/util/Random;

    return-void
.end method

.method private zza(C)I
    .locals 0

    add-int/lit8 p1, p1, -0x20

    return p1
.end method

.method private static zzb(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static synthetic zzc(Ljava/util/Collection;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzb(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(III)Z
    .locals 0

    if-lt p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic zzd(III)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(III)Z

    move-result p0

    return p0
.end method

.method private zzqY()[I
    .locals 8

    const/16 v0, 0x5f

    new-array v0, v0, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzajF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-char v7, v4, v6

    invoke-direct {p0, v7}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zza(C)I

    move-result v7

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzf;->zza(Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;Landroid/os/Parcel;I)V

    return-void
.end method
