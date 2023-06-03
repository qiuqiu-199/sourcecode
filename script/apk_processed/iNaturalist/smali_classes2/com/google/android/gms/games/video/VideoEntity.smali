.class public final Lcom/google/android/gms/games/video/VideoEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/games/video/Video;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/video/VideoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzLp:J

.field private final zzRg:Ljava/lang/String;

.field private final zzaEG:I

.field private final zzbgd:Ljava/lang/String;

.field private final zzbge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/video/VideoEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/VideoEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzaEG:I

    iput-object p2, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbgd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbge:J

    iput-wide p5, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzLp:J

    iput-object p7, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzRg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/video/Video;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzaEG:I

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->zzGE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbgd:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbge:J

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzLp:J

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzRg:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbgd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzt(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzRg:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzt(Ljava/lang/Object;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/video/Video;)I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzGE()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/video/Video;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/games/video/Video;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/video/Video;

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->zzGE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzGE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Duration"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "File path"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzGE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "File size"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Start time"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Package name"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/games/video/VideoEntity;->zza(Lcom/google/android/gms/games/video/Video;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzGJ()Lcom/google/android/gms/games/video/Video;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzaEG:I

    return v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbge:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzRg:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzLp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zza(Lcom/google/android/gms/games/video/Video;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/video/VideoEntityCreator;->zza(Lcom/google/android/gms/games/video/VideoEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbgd:Ljava/lang/String;

    return-object v0
.end method

.method public zzGJ()Lcom/google/android/gms/games/video/Video;
    .locals 0

    return-object p0
.end method
