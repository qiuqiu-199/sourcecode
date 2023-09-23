.class Lcom/google/android/gms/tagmanager/zzcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzaw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcg$zzb;,
        Lcom/google/android/gms/tagmanager/zzcg$zza;
    }
.end annotation


# static fields
.field private static final zzaeu:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbGS:Lcom/google/android/gms/tagmanager/zzcg$zzb;

.field private volatile zzbGT:Lcom/google/android/gms/tagmanager/zzad;

.field private final zzbGU:Lcom/google/android/gms/tagmanager/zzax;

.field private final zzbGV:Ljava/lang/String;

.field private zzbGW:J

.field private final zzbGX:I

.field private zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "gtm_hits"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "hit_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "hit_time"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "hit_url"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "hit_first_send_time"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcg;->zzaeu:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzax;Landroid/content/Context;)V
    .locals 2

    const-string v0, "gtm_urls.db"

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Lcom/google/android/gms/tagmanager/zzax;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzax;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcg;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGV:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGU:Lcom/google/android/gms/tagmanager/zzax;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzuP:Lcom/google/android/gms/common/util/zze;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzcg$zzb;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzcg;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGV:Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/tagmanager/zzcg$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzcg;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGS:Lcom/google/android/gms/tagmanager/zzcg$zzb;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzde;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzcg;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/tagmanager/zzcg$zza;

    invoke-direct {p3, p0}, Lcom/google/android/gms/tagmanager/zzcg$zza;-><init>(Lcom/google/android/gms/tagmanager/zzcg;)V

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzde;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzde$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGT:Lcom/google/android/gms/tagmanager/zzad;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGW:J

    iput p4, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGX:I

    return-void
.end method

.method private zzRa()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcg;->zzRb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGX:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zznG(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Store full, deleting "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hits to make room."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzh([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic zzRd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcg;->zzaeu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcg;)Lcom/google/android/gms/common/util/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcg;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcg;->zzv(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcg;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzcg;->zzj(JJ)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzcg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGV:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzcg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcg;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private zzh(JLjava/lang/String;)V
    .locals 3

    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "hit_url"

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hit_first_send_time"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string p1, "gtm_hits"

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGU:Lcom/google/android/gms/tagmanager/zzax;

    invoke-interface {p1, p2}, Lcom/google/android/gms/tagmanager/zzax;->zzaS(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Error storing hit"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGS:Lcom/google/android/gms/tagmanager/zzcg$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcg$zzb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private zzj(JJ)V
    .locals 5

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_first_send_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string p3, "gtm_hits"

    const-string p4, "hit_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p3, v1, p4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p3, 0x45

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcg;->zzv(J)V

    :goto_0
    return-void
.end method

.method private zzv(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzh([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    const-string v0, "GTM Dispatch running..."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGT:Lcom/google/android/gms/tagmanager/zzad;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzad;->zzQF()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zznH(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "...nothing to dispatch"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGU:Lcom/google/android/gms/tagmanager/zzax;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzax;->zzaS(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGT:Lcom/google/android/gms/tagmanager/zzad;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzad;->zzP(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcg;->zzRc()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdc;->zzRy()Lcom/google/android/gms/tagmanager/zzdc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdc;->dispatch()V

    :cond_2
    return-void
.end method

.method zzRb()I
    .locals 4

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT COUNT(*) from gtm_hits"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v1, v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string v0, "Error getting numStoredHits"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method zzRc()I
    .locals 10

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    const-string v2, "gtm_hits"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "hit_id"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-string v5, "hit_first_send_time"

    aput-object v5, v3, v4

    const-string v4, "hit_first_send_time=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catch_0
    move-object v9, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string v1, "Error getting num untried hits"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v0

    :goto_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public zzg(JLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcg;->zzot()I

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcg;->zzRa()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzcg;->zzh(JLjava/lang/String;)V

    return-void
.end method

.method zzh([Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Error opening database for deleteHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "HIT_ID in (%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ","

    array-length v5, p1

    const-string v6, "?"

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v3, "gtm_hits"

    invoke-virtual {v0, v3, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGU:Lcom/google/android/gms/tagmanager/zzax;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcg;->zzRb()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1, v2}, Lcom/google/android/gms/tagmanager/zzax;->zzaS(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error deleting hits"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method zznG(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    const-string p1, "Invalid maxHits specified. Skipping"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "Error opening database for peekHitIds."

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "gtm_hits"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "hit_id"

    const/4 v11, 0x0

    aput-object v6, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "%s ASC"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v12, "hit_id"

    aput-object v12, v4, v11

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v13, v1

    move-object v1, p1

    move-object p1, v13

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string v2, "Error in peekHits fetching hitIds: "

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    return-object v0

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public zznH(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tagmanager/zzas;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Error opening database for peekHits"

    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v12, 0x0

    :try_start_0
    const-string v4, "gtm_hits"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const-string v3, "hit_id"

    const/4 v13, 0x0

    aput-object v3, v5, v13

    const-string v3, "hit_time"

    const/4 v14, 0x1

    aput-object v3, v5, v14

    const-string v3, "hit_first_send_time"

    const/4 v15, 0x2

    aput-object v3, v5, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "%s ASC"

    new-array v10, v14, [Ljava/lang/Object;

    const-string v11, "hit_id"

    aput-object v11, v10, v13

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v1, :cond_2

    :cond_1
    :try_start_3
    new-instance v1, Lcom/google/android/gms/tagmanager/zzas;

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/tagmanager/zzas;-><init>(JJJ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v11

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v1, v12

    move-object v12, v11

    goto/16 :goto_8

    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    :try_start_4
    const-string v4, "gtm_hits"

    new-array v5, v15, [Ljava/lang/String;

    const-string v1, "hit_id"

    aput-object v1, v5, v13

    const-string v1, "hit_url"

    aput-object v1, v5, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v1, "%s ASC"

    new-array v3, v14, [Ljava/lang/Object;

    const-string v10, "hit_id"

    aput-object v10, v3, v13

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v0

    move-object v15, v11

    move-object v11, v1

    :try_start_5
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :cond_4
    move-object v1, v11

    check-cast v1, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzas;

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tagmanager/zzas;->zzhi(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "HitString for hitId %d too large.  Hit will be deleted."

    new-array v3, v14, [Ljava/lang/Object;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tagmanager/zzas;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzas;->zzQN()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v1, :cond_4

    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v12

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, v15

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v11, v15

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v15, v11

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v15, v11

    :goto_2
    :try_start_7
    const-string v1, "Error in peekHits fetching hit url: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tagmanager/zzas;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzas;->zzQP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v13, :cond_9

    goto :goto_5

    :cond_9
    const/4 v13, 0x1

    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :cond_b
    :goto_5
    if-eqz v11, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v0

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v11, :cond_d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    :catch_4
    move-exception v0

    move-object v15, v11

    move-object v1, v12

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v15, v11

    move-object v12, v15

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v15, v11

    :goto_7
    move-object v12, v15

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    :goto_8
    :try_start_8
    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object v1

    :goto_a
    if-eqz v12, :cond_10

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0
.end method

.method zzot()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGW:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGW:J

    const-string v0, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcg;->zzhe(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v1, v5

    const-string v3, "gtm_hits"

    const-string v5, "HIT_TIME < ?"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-virtual {v0, v3, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcg;->zzbGU:Lcom/google/android/gms/tagmanager/zzax;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcg;->zzRb()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-interface {v1, v4}, Lcom/google/android/gms/tagmanager/zzax;->zzaS(Z)V

    return v0
.end method
