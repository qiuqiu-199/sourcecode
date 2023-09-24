.class public Lcom/google/android/gms/internal/zzaib;
.super Lcom/google/android/gms/internal/zzaie;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaib$zzb;,
        Lcom/google/android/gms/internal/zzaib$zze;,
        Lcom/google/android/gms/internal/zzaib$zzf;,
        Lcom/google/android/gms/internal/zzaib$zza;,
        Lcom/google/android/gms/internal/zzaib$zzc;,
        Lcom/google/android/gms/internal/zzaib$zzd;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaie;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzj;)I
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzBB()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzAq()Lcom/google/android/gms/drive/zzc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result p2

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzAr()V

    move p1, p2

    :goto_0
    return p1
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;ILcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "I",
            "Lcom/google/android/gms/drive/zzk;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzdK(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzBB()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzaib$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaib$1;-><init>(Lcom/google/android/gms/internal/zzaib;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzk;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/drive/MetadataChangeSet;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalu;->zzaPH:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object p1

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/drive/query/Query;
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/query/Query$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/Query$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaib;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/drive/query/Filters;->in(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/query/Query$Builder;->setPageToken(Ljava/lang/String;)Lcom/google/android/gms/drive/query/Query$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getSortOrder()Lcom/google/android/gms/drive/query/SortOrder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/query/Query$Builder;->setSortOrder(Lcom/google/android/gms/drive/query/SortOrder;)Lcom/google/android/gms/drive/query/Query$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/drive/query/Query$Builder;->build()Lcom/google/android/gms/drive/query/Query;

    move-result-object p1

    return-object p1
.end method

.method private zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzk;)V
    .locals 0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzdK(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzj;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/metadata/internal/zzj;->isFolder()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "May not create folders using this method. Use DriveFolder.createFolder() instead of mime type application/vnd.google-apps.folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p4, p1}, Lcom/google/android/gms/drive/zzk;->zzh(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    if-nez p3, :cond_2

    return-void

    :cond_2
    instance-of p1, p3, Lcom/google/android/gms/internal/zzahy;

    if-eqz p1, :cond_5

    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->zzAs()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DriveContents are already closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetadataChangeSet must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzdK(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzj;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzBA()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "May not create shortcut files using this method. Use DriveFolder.createShortcutFile() instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetadataChangeSet must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaib;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaib;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-static {p4}, Lcom/google/android/gms/drive/zzk;->zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzk;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The mimetype must be of type application/vnd.google-apps.folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzaib$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaib$2;-><init>(Lcom/google/android/gms/internal/zzaib;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetadataChangeSet must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaib;->queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzahv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzahv;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/drive/query/Query;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzahv;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/zzk;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/drive/zzk$zza;

    invoke-direct {p4}, Lcom/google/android/gms/drive/zzk$zza;-><init>()V

    invoke-virtual {p4}, Lcom/google/android/gms/drive/zzk$zza;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/drive/zzk;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaib;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzk;)V

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzdK(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzj;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzj;)I

    move-result p3

    invoke-virtual {p4}, Lcom/google/android/gms/drive/zzk;->zzAz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/drive/MetadataChangeSet;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;ILcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method
