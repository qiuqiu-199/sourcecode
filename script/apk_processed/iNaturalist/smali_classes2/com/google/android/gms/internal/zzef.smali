.class public Lcom/google/android/gms/internal/zzef;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final zzzx:Lcom/google/android/gms/internal/zzef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzef;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzef;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzef;->zzzx:Lcom/google/android/gms/internal/zzef;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzeD()Lcom/google/android/gms/internal/zzef;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzef;->zzzx:Lcom/google/android/gms/internal/zzef;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;)Lcom/google/android/gms/internal/zzec;
    .locals 23

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :goto_0
    move-wide v5, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getContentUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getGender()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_1
    move-object/from16 v1, p1

    move-object v9, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfe;->isTestDevice(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->zzff()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getLocation()Landroid/location/Location;

    move-result-object v15

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfe;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getManualImpressionsEnabled()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->zzfc()Lcom/google/android/gms/ads/search/SearchAdRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/zzfp;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/zzfp;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    move-object v14, v4

    goto :goto_3

    :cond_2
    move-object v14, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzqe;->zza([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_4

    :cond_3
    move-object/from16 v21, v3

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->isDesignedForFamilies()Z

    move-result v22

    new-instance v1, Lcom/google/android/gms/internal/zzec;

    move-object v3, v1

    const/4 v4, 0x7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->zzfe()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->zzfg()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzfe;->zzfb()Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x7

    invoke-direct/range {v3 .. v22}, Lcom/google/android/gms/internal/zzec;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzfp;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;Ljava/lang/String;)Lcom/google/android/gms/internal/zzoa;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;)Lcom/google/android/gms/internal/zzec;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzoa;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/zzoa;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V

    return-object p2
.end method
