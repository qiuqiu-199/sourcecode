.class public Lcom/google/android/gms/internal/zzayf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzayf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzbAx:I

.field final zzbAy:[B

.field final zzbAz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzayg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzayg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[BZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzayf;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzayf;->zzbAx:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayf;->zzbAy:[B

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzayf;->zzbAz:Z

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzayf;-><init>(II[BZ)V

    return-void
.end method

.method public static zza(Ljava/util/UUID;Ljava/lang/Short;Ljava/lang/Short;)Lcom/google/android/gms/internal/zzayf;
    .locals 1
    .param p1    # Ljava/lang/Short;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Short;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzl;-><init>(Ljava/util/UUID;Ljava/lang/Short;Ljava/lang/Short;)V

    new-instance p0, Lcom/google/android/gms/internal/zzayf;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/internal/zzl;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzayf;-><init>(I[B)V

    return-object p0
.end method

.method public static zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzayf;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    new-instance p1, Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/zzayf;

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzayf;-><init>(I[B)V

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzayg;->zza(Lcom/google/android/gms/internal/zzayf;Landroid/os/Parcel;I)V

    return-void
.end method