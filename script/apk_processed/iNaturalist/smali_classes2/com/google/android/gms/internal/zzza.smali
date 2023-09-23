.class public Lcom/google/android/gms/internal/zzza;
.super Lcom/google/android/gms/internal/zzyo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzza$zzb;,
        Lcom/google/android/gms/internal/zzza$zza;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final zzavb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzawJ:J

.field private zzawK:Lcom/google/android/gms/cast/MediaStatus;

.field private zzawL:Lcom/google/android/gms/internal/zzza$zza;

.field private final zzawM:Lcom/google/android/gms/internal/zzzd;

.field private final zzawN:Lcom/google/android/gms/internal/zzzd;

.field private final zzawO:Lcom/google/android/gms/internal/zzzd;

.field private final zzawP:Lcom/google/android/gms/internal/zzzd;

.field private final zzawQ:Lcom/google/android/gms/internal/zzzd;

.field private final zzawR:Lcom/google/android/gms/internal/zzzd;

.field private final zzawS:Lcom/google/android/gms/internal/zzzd;

.field private final zzawT:Lcom/google/android/gms/internal/zzzd;

.field private final zzawU:Lcom/google/android/gms/internal/zzzd;

.field private final zzawV:Lcom/google/android/gms/internal/zzzd;

.field private final zzawW:Lcom/google/android/gms/internal/zzzd;

.field private final zzawX:Lcom/google/android/gms/internal/zzzd;

.field private final zzawY:Lcom/google/android/gms/internal/zzzd;

.field private final zzawZ:Lcom/google/android/gms/internal/zzzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyr;->zzcR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzza;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    sget-object v1, Lcom/google/android/gms/internal/zzza;->NAMESPACE:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    const-string v3, "MediaControlChannel"

    const-wide/16 v5, 0x3e8

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzyo;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    const-wide/32 v1, 0x5265c00

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawN:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawO:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawP:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawU:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawV:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawW:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawX:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawY:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Lcom/google/android/gms/internal/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawZ:Lcom/google/android/gms/internal/zzzd;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawN:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawO:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawP:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawU:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawV:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawW:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawX:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawY:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawZ:Lcom/google/android/gms/internal/zzzd;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->zzuN()V

    return-void
.end method

.method private onAdBreakStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onAdBreakStatusUpdated()V

    :cond_0
    return-void
.end method

.method private onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private onPreloadStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private onQueueStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private onStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzza$zza;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private zza(DJJ)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p1, p3

    cmp-long p3, p5, v2

    if-lez p3, :cond_2

    cmp-long p3, p1, p5

    if-lez p3, :cond_2

    move-wide p1, p5

    goto :goto_0

    :cond_2
    cmp-long p3, p1, v2

    if-gez p3, :cond_3

    move-wide p1, v2

    :cond_3
    :goto_0
    return-wide p1
.end method

.method private zza(JLorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzzd;->test(J)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x1

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result p3

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    const/16 p3, 0x7f

    :goto_4
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    :cond_8
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    :cond_9
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onMetadataUpdated()V

    :cond_a
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onQueueStatusUpdated()V

    :cond_b
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onPreloadStatusUpdated()V

    :cond_c
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onAdBreakStatusUpdated()V

    :cond_d
    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/internal/zzza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    :cond_e
    iget-object p3, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v0, p1, p2, v3}, Lcom/google/android/gms/internal/zzzd;->zzc(JI)Z

    goto :goto_5

    :cond_f
    return-void
.end method

.method private zzuN()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzzd;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getApproximateStreamPosition()J
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzza;->zzawJ:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return-wide v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzza;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    return-wide v5
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public getStreamDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method protected zzF(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzd;

    const/16 v2, 0x836

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzzd;->zzd(JI)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sget-object p2, Lcom/google/android/gms/internal/zzzd;->zzqS:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzzd;->zzuP()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    :cond_2
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "GET_STATUS"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_0

    const-string p1, "mediaSessionId"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;DLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawR:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    invoke-virtual {p1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzza;->zzawX:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_UPDATE"

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v5

    invoke-virtual {v2, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string p1, "currentItemId"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    const-string p1, "jump"

    invoke-virtual {v2, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p5, :cond_5

    array-length p1, p5

    if-lez p1, :cond_5

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_1
    array-length p6, p5

    if-ge p2, p6, :cond_4

    aget-object p6, p5, p2

    invoke-virtual {p6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "items"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    :goto_2
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_1
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_SINGLE"

    goto :goto_2

    :pswitch_2
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL"

    goto :goto_2

    :pswitch_3
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_OFF"

    goto :goto_2

    :cond_6
    :goto_3
    cmp-long p1, p3, v0

    if-eqz p1, :cond_7

    const-string p1, "currentTime"

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p8, :cond_8

    const-string p1, "customData"

    invoke-virtual {v2, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;JILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawQ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "currentTime"

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide p2

    invoke-virtual {v0, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, p1, :cond_0

    const-string p1, "resumeState"

    const-string p2, "PLAYBACK_START"

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const-string p1, "resumeState"

    const-string p2, "PLAYBACK_PAUSE"

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "LOAD"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "autoplay"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length p3, p6

    if-ge p2, p3, :cond_0

    aget-wide p3, p6, p2

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p7, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawV:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawN:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PAUSE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;ZLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawS:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "muted"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[IILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    array-length v0, p2

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawZ:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REORDER"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p1, "insertBefore"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[ILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawY:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REMOVE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p1, "customData"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToRemove must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawU:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-wide v4, p2, v3

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    if-eqz v1, :cond_c

    array-length v8, v1

    if-eqz v8, :cond_c

    const/4 v8, -0x1

    if-eqz v3, :cond_1

    if-ne v4, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can not set both currentItemId and currentItemIndexInItemsToInsert"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v4, v8, :cond_3

    if-ltz v4, :cond_2

    array-length v11, v1

    if-ge v4, v11, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v10

    const-string v1, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const-wide/16 v11, -0x1

    cmp-long v13, v5, v11

    if-eqz v13, :cond_5

    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-ltz v15, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v14

    iget-object v9, v0, Lcom/google/android/gms/internal/zzza;->zzawW:Lcom/google/android/gms/internal/zzzd;

    move-object/from16 v11, p1

    invoke-virtual {v9, v14, v15, v11}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string v9, "requestId"

    invoke-virtual {v13, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "type"

    const-string v10, "QUEUE_INSERT"

    invoke-virtual {v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mediaSessionId"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v10

    invoke-virtual {v13, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    :goto_3
    array-length v11, v1

    if-ge v10, v11, :cond_6

    aget-object v11, v1, v10

    invoke-virtual {v11}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    const-string v1, "items"

    invoke-virtual {v13, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    const-string v1, "insertBefore"

    invoke-virtual {v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    if-eqz v3, :cond_8

    const-string v1, "currentItemId"

    invoke-virtual {v13, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    if-eq v4, v8, :cond_9

    const-string v1, "currentItemIndex"

    invoke-virtual {v13, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9
    const-wide/16 v1, -0x1

    cmp-long v3, v5, v1

    if-eqz v3, :cond_a

    const-string v1, "currentTime"

    invoke-static/range {p6 .. p7}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide v2

    invoke-virtual {v13, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_a
    if-eqz v7, :cond_b

    const-string v1, "customData"

    invoke-virtual {v13, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v14

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "itemsToInsert must not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzzc;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_6

    array-length v0, p2

    if-eqz v0, :cond_6

    if-ltz p3, :cond_5

    array-length v0, p2

    if-ge p3, v0, :cond_5

    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x36

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition can not be negative: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_LOAD"

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    array-length v6, p2

    if-ge v5, v6, :cond_2

    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "items"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p4, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_4

    :pswitch_0
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    :goto_2
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_1
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_SINGLE"

    goto :goto_2

    :pswitch_2
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL"

    goto :goto_2

    :pswitch_3
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_OFF"

    goto :goto_2

    :goto_3
    const-string p1, "startIndex"

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long p1, p5, v0

    if-eqz p1, :cond_3

    const-string p1, "currentTime"

    invoke-static {p5, p6}, Lcom/google/android/gms/internal/zzyr;->zzG(J)D

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    if-eqz p7, :cond_4

    const-string p1, "customData"

    invoke-virtual {v2, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :goto_4
    const/16 p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid repeat mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1f

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzza$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzawL:Lcom/google/android/gms/internal/zzza$zza;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzzc;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawP:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "STOP"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public zzb(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzzd;->zzc(JI)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzzc;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzuA()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawO:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzzd;->zza(JLcom/google/android/gms/internal/zzzc;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzza;->zzaq(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PLAY"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzza;->zzsy()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzza;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzcP(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "message received: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "MEDIA_STATUS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "INVALID_PLAYER_STATE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "LOAD_FAILED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "INVALID_REQUEST"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v8, "LOAD_CANCELLED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const/16 v7, 0x834

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v8, "received unexpected error: Invalid Request."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    const/16 v7, 0x835

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto :goto_4

    :pswitch_2
    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzawM:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto :goto_4

    :pswitch_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v8, "received unexpected error: Invalid Player State."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzavb:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzzd;->zzc(JILjava/lang/Object;)Z

    goto :goto_3

    :pswitch_4
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v5, v6, v1}, Lcom/google/android/gms/internal/zzza;->zza(JLorg/json/JSONObject;)V

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onMetadataUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onQueueStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->onPreloadStatusUpdated()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzza;->zzawT:Lcom/google/android/gms/internal/zzzd;

    invoke-virtual {v1, v5, v6, v4}, Lcom/google/android/gms/internal/zzzd;->zzc(JI)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzza;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v5, "Message is malformed (%s); ignoring: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p1, v0, v2

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_4
        -0x430e23f9 -> :sswitch_3
        -0xfa7664a -> :sswitch_2
        0x19b9b2fb -> :sswitch_1
        0x3115c4cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzsy()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzza$zzb;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzawK:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzsy()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzza$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzza$zzb;-><init>()V

    throw v0
.end method

.method public zzuz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzyo;->zzuz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzza;->zzuN()V

    return-void
.end method
