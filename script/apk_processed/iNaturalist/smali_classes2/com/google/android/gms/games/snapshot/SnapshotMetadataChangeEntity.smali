.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzade:Ljava/lang/String;

.field private final zzbfm:Ljava/lang/Long;

.field private final zzbfo:Landroid/net/Uri;

.field private final zzbfp:Ljava/lang/Long;

.field private zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzade:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfp:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfo:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfm:Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfo:Landroid/net/Uri;

    if-nez p1, :cond_0

    :goto_0
    const/4 p2, 0x1

    :cond_0
    const-string p1, "Cannot set both a URI and an image"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfo:Landroid/net/Uri;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getCoverImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzxg()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCoverImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfo:Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzade:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfp:Ljava/lang/Long;

    return-object v0
.end method

.method public getProgressValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfm:Ljava/lang/Long;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->zza(Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGz()Lcom/google/android/gms/common/data/BitmapTeleporter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzbfq:Lcom/google/android/gms/common/data/BitmapTeleporter;

    return-object v0
.end method
