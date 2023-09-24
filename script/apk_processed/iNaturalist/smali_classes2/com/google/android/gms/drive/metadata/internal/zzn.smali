.class public Lcom/google/android/gms/drive/metadata/internal/zzn;
.super Lcom/google/android/gms/drive/metadata/internal/zzk;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzk<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaOW:Lcom/google/android/gms/drive/metadata/internal/zzf$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzn$1;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzaOW:Lcom/google/android/gms/drive/metadata/internal/zzf$zza;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const-string v0, "parents"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "parentsExtra"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "dbInstanceId"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "parentsExtraHolder"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 14

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parentsExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {p1, v5}, Lcom/google/android/gms/common/data/DataHolder;->zzcI(I)I

    move-result v6

    new-instance v7, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    invoke-direct {v7}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "sqlId"

    invoke-virtual {p1, v8, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "childSqlIdColumn"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "parentSqlIdColumn"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "parentResIdColumn"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v7

    :goto_1
    if-ge v4, v7, :cond_2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/data/DataHolder;->zzcI(I)I

    move-result v8

    invoke-virtual {v0, v5, v4, v8}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    new-instance v10, Lcom/google/android/gms/drive/metadata/internal/zzo;

    invoke-virtual {v0, v1, v4, v8}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v6, v4, v8}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v12

    const/4 v8, 0x1

    invoke-direct {v10, v11, v12, v13, v8}, Lcom/google/android/gms/drive/metadata/internal/zzo;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->zza(Lcom/google/android/gms/drive/metadata/internal/zzo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "parentsExtra"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parentsExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "parentsExtraHolder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static zzd(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v1, "parentsExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v1, "parentsExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzxf()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "parentsExtra"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "parentsExtraHolder"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    const-string p1, "parentsExtra"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string p1, "dbInstanceId"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->zzL(J)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zzt(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzy(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected zzy(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzy(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
