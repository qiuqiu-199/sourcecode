.class public Lcom/google/android/gms/internal/zzcg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzrr:Lcom/google/android/gms/internal/zzbwv$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbwv$zzb;->zzae([B)Lcom/google/android/gms/internal/zzbwv$zzb;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InterestRecordStub"

    const-string v1, "Could not deserialize interest bytes."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcg;->zzrr:Lcom/google/android/gms/internal/zzbwv$zzb;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzch;->zza(Lcom/google/android/gms/internal/zzcg;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzbn()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzrr:Lcom/google/android/gms/internal/zzbwv$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    return-object v0
.end method
