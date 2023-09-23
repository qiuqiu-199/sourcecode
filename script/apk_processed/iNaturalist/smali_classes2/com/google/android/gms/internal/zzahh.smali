.class public Lcom/google/android/gms/internal/zzahh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzahh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKF:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzahi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzahi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzahh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzahh;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzahh;->zzaiI:I

    const/high16 p1, 0x20000000

    if-eq p2, p1, :cond_1

    const/high16 p1, 0x30000000

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Cannot create a new read-only contents!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/zzahh;->zzaKF:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzahi;->zza(Lcom/google/android/gms/internal/zzahh;Landroid/os/Parcel;I)V

    return-void
.end method
