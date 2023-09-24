.class public Lcom/google/android/gms/fitness/request/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field public final zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

.field public final zzaUc:J

.field public final zzaVF:I

.field public final zzaVL:J

.field public final zzaVM:I

.field public final zzait:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJJII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzj;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/zzj;->zzait:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaUc:J

    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVL:J

    iput p9, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVF:I

    iput p10, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVM:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "{%1$s, %2$tF %2$tT - %3$tF %3$tT (%4$s %5$s)}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaUc:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVL:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzk;->zza(Lcom/google/android/gms/fitness/request/zzj;Landroid/os/Parcel;I)V

    return-void
.end method
