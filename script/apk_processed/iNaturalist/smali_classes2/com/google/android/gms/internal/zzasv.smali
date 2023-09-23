.class public Lcom/google/android/gms/internal/zzasv;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzasv;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbni:Lcom/google/android/gms/internal/zzasv;

.field public static final zzbnj:Lcom/google/android/gms/internal/zzasv;


# instance fields
.field final zzaiI:I

.field private final zzbnk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzasw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzasw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzasv;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/internal/zzasv;

    const-string v1, "Home"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzasv;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzasv;->zzbni:Lcom/google/android/gms/internal/zzasv;

    new-instance v0, Lcom/google/android/gms/internal/zzasv;

    const-string v1, "Work"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzasv;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzasv;->zzbnj:Lcom/google/android/gms/internal/zzasv;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzasv;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzasv;->zzbnk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzasv;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzasv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasv;->zzbnk:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzasv;->zzbnk:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasv;->zzbnk:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "alias"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasv;->zzbnk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzasw;->zza(Lcom/google/android/gms/internal/zzasv;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzJh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasv;->zzbnk:Ljava/lang/String;

    return-object v0
.end method
