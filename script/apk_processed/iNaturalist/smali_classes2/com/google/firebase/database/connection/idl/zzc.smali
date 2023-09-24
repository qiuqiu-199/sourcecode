.class public Lcom/google/firebase/database/connection/idl/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/database/connection/idl/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzcbF:Z

.field final zzcbH:Ljava/lang/String;

.field final zzccY:Lcom/google/firebase/database/connection/idl/zzf;

.field final zzccZ:I

.field final zzcda:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzcdb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzd;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zzd;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/firebase/database/connection/idl/zzf;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/firebase/database/connection/idl/zzf;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->versionCode:I

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzccY:Lcom/google/firebase/database/connection/idl/zzf;

    iput p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzccZ:I

    iput-object p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcda:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbF:Z

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcdb:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbon;",
            "Lcom/google/android/gms/internal/zzbro$zza;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x1

    :goto_0
    iput v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->versionCode:I

    invoke-static {p1}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/zzbon;)Lcom/google/firebase/database/connection/idl/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzccY:Lcom/google/firebase/database/connection/idl/zzf;

    iput p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzccZ:I

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcda:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbF:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcdb:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbH:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/connection/idl/zzd;->zza(Lcom/google/firebase/database/connection/idl/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzYe()Lcom/google/android/gms/internal/zzbro$zza;
    .locals 1

    iget v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzccZ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciQ:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciP:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciO:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciN:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciM:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciQ:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzYf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcda:Ljava/util/List;

    return-object v0
.end method
