.class public Lcom/google/android/gms/instantapps/LaunchSettings;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/instantapps/LaunchSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/instantapps/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/LaunchSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/instantapps/zzb;->zza(Lcom/google/android/gms/instantapps/LaunchSettings;Landroid/os/Parcel;I)V

    return-void
.end method
