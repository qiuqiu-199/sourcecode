.class public Lcom/google/firebase/appindexing/internal/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/appindexing/internal/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzE:Ljava/lang/String;

.field private final zzbXD:[Ljava/lang/String;

.field private final zzbXE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/internal/zzr;

    invoke-direct {v0}, Lcom/google/firebase/appindexing/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/internal/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzE:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzbXD:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzbXE:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzE:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/appindexing/internal/zzr;->zza(Lcom/google/firebase/appindexing/internal/zzq;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzVA()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzbXD:[Ljava/lang/String;

    return-object v0
.end method

.method public zzVB()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzq;->zzbXE:[Ljava/lang/String;

    return-object v0
.end method
