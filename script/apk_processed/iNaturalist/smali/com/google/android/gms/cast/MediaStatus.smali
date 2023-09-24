.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I = 0x0

.field public static final REPEAT_MODE_REPEAT_ALL:I = 0x1

.field public static final REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE:I = 0x3

.field public static final REPEAT_MODE_REPEAT_OFF:I = 0x0

.field public static final REPEAT_MODE_REPEAT_SINGLE:I = 0x2


# instance fields
.field zzamN:Ljava/lang/String;

.field private zzamO:Lorg/json/JSONObject;

.field private zzaoE:[J

.field private zzaoG:J

.field private zzaoH:I

.field private zzaoI:D

.field private zzaoJ:I

.field private zzaoK:I

.field private zzaoL:J

.field zzaoM:J

.field private zzaoN:D

.field private zzaoO:Z

.field private zzaoP:I

.field private zzaoQ:I

.field zzaoR:I

.field final zzaoS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzaoT:Z

.field private zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

.field private zzaoV:Lcom/google/android/gms/cast/VideoInfo;

.field private final zzaoW:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaoq:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "JIDIIJJDZ[JII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;Z",
            "Lcom/google/android/gms/cast/AdBreakStatus;",
            "Lcom/google/android/gms/cast/VideoInfo;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p21

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    move-wide v2, p2

    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    move v2, p4

    iput v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    move-wide v2, p5

    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    move v2, p7

    iput v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    move v2, p8

    iput v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    move-wide v2, p9

    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    move-wide/from16 v2, p11

    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    move-wide/from16 v2, p13

    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    move/from16 v2, p17

    iput v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    move/from16 v2, p18

    iput v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    :goto_0
    move/from16 v2, p20

    iput v2, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    if-eqz v1, :cond_1

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/MediaStatus;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :cond_1
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    return-void
.end method

.method private zza([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zza(Lcom/google/android/gms/cast/MediaStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzq;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private zzf(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 p1, 0x2

    if-eq p4, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_1
    if-nez p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private zzsz()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    if-ne v1, v3, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    if-ne v1, v3, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lcom/google/android/gms/cast/MediaStatus;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result p1

    if-ne v1, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    return-object v0
.end method

.method public getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    return-object v0
.end method

.method public getCurrentAdBreak()Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getCurrentItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    return v0
.end method

.method public getIndexById(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoW:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    :goto_0
    return-object p1
.end method

.method public getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoadingItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    return v0
.end method

.method public getPreloadedItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    return v0
.end method

.method public getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQueueRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    return-wide v0
.end method

.method public getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzl;->zza(Lcom/google/android/gms/cast/MediaStatus;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lorg/json/JSONObject;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "PAUSED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "BUFFERING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    if-eq v1, v2, :cond_5

    iput v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    or-int/lit8 v0, v0, 0x2

    :cond_5
    if-ne v1, v4, :cond_a

    const-string v1, "idleReason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "idleReason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCELLED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x2

    goto :goto_2

    :cond_6
    const-string v2, "INTERRUPTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const-string v2, "FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v3, 0x4

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    if-eq v3, v1, :cond_a

    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    or-int/lit8 v0, v0, 0x2

    :cond_a
    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    cmpl-double v3, v6, v1

    if-eqz v3, :cond_b

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoI:D

    or-int/lit8 v0, v0, 0x2

    :cond_b
    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_c

    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v1

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_c

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoL:J

    or-int/lit8 v0, v0, 0x2

    :cond_c
    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_d

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoM:J

    or-int/lit8 v0, v0, 0x2

    :cond_d
    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    and-int/2addr p2, v4

    if-nez p2, :cond_f

    const-string/jumbo p2, "volume"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "level"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    cmpl-double v3, v1, v6

    if-eqz v3, :cond_e

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoN:D

    or-int/lit8 v0, v0, 0x2

    :cond_e
    const-string v1, "muted"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    if-eq p2, v1, :cond_f

    iput-boolean p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoO:Z

    or-int/lit8 v0, v0, 0x2

    :cond_f
    const-string p2, "activeTrackIds"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    const-string p2, "activeTrackIds"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [J

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_10

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_10
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    if-nez p2, :cond_11

    :goto_4
    const/4 p2, 0x1

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    array-length p2, p2

    if-eq p2, v2, :cond_12

    goto :goto_4

    :cond_12
    const/4 p2, 0x0

    :goto_5
    if-ge p2, v2, :cond_14

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    aget-wide v7, v6, p2

    aget-wide v9, v3, p2

    cmp-long v6, v7, v9

    if-eqz v6, :cond_13

    goto :goto_4

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_14
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_17

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    goto :goto_7

    :cond_15
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    if-eqz p2, :cond_16

    move-object v3, v1

    const/4 p2, 0x1

    goto :goto_7

    :cond_16
    move-object v3, v1

    const/4 p2, 0x0

    :cond_17
    :goto_7
    if-eqz p2, :cond_18

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoE:[J

    or-int/lit8 v0, v0, 0x2

    :cond_18
    const-string p2, "customData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    const-string p2, "customData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamO:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzamN:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    :cond_19
    const-string p2, "media"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const-string p2, "media"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v0, v0, 0x2

    :cond_1b
    const-string v1, "metadata"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    or-int/lit8 v0, v0, 0x4

    :cond_1c
    const-string p2, "currentItemId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p2, "currentItemId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    if-eq v1, p2, :cond_1d

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    or-int/lit8 v0, v0, 0x2

    :cond_1d
    const-string p2, "preloadedItemId"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    if-eq v1, p2, :cond_1e

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    or-int/lit8 v0, v0, 0x10

    :cond_1e
    const-string p2, "loadingItemId"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    if-eq v1, p2, :cond_1f

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    or-int/lit8 v0, v0, 0x2

    :cond_1f
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-nez p2, :cond_20

    const/4 p2, -0x1

    goto :goto_8

    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result p2

    :goto_8
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoJ:I

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoK:I

    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/google/android/gms/cast/MediaStatus;->zzf(IIII)Z

    move-result p2

    if-nez p2, :cond_21

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->zzp(Lorg/json/JSONObject;)Z

    move-result p2

    if-eqz p2, :cond_22

    :goto_9
    or-int/lit8 v0, v0, 0x8

    goto :goto_a

    :cond_21
    iput v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    iput v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoP:I

    iput v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoQ:I

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaStatus;->zzsz()V

    goto :goto_9

    :cond_22
    :goto_a
    const-string p2, "breakStatus"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/AdBreakStatus;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v1, :cond_23

    if-nez p2, :cond_24

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    :cond_24
    if-eqz p2, :cond_25

    goto :goto_b

    :cond_25
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {p0, v4}, Lcom/google/android/gms/cast/MediaStatus;->zzam(Z)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoU:Lcom/google/android/gms/cast/AdBreakStatus;

    or-int/lit8 v0, v0, 0x20

    :cond_26
    const-string/jumbo p2, "videoInfo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/VideoInfo;->zzq(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    if-nez v1, :cond_27

    if-nez p2, :cond_28

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_28
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoV:Lcom/google/android/gms/cast/VideoInfo;

    or-int/lit8 v0, v0, 0x40

    :cond_29
    const-string p2, "breakInfo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    const-string v1, "breakInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/MediaInfo;->zzm(Lorg/json/JSONObject;)V

    or-int/lit8 v0, v0, 0x2

    :cond_2a
    return v0
.end method

.method public zzam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoT:Z

    return-void
.end method

.method zzp(Lorg/json/JSONObject;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "repeatMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    const-string v3, "repeatMode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x42a82c11    # -0.05269235f

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v6, :cond_3

    const v6, -0x3964a094

    if-eq v5, v6, :cond_2

    const v6, 0x621b08dd    # 7.14971E20f

    if-eq v5, v6, :cond_1

    const v6, 0x621b3cab

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "REPEAT_OFF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const-string v5, "REPEAT_ALL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "REPEAT_SINGLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const-string v5, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    :cond_4
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    if-eq v3, v0, :cond_5

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoR:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_6

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "itemId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-array v5, v3, [Lcom/google/android/gms/cast/MediaQueueItem;

    :goto_4
    if-ge v1, v3, :cond_a

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8, v7}, Lcom/google/android/gms/cast/MediaQueueItem;->zzo(Lorg/json/JSONObject;)Z

    move-result v7

    or-int/2addr v0, v7

    aput-object v8, v5, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v1, v6, :cond_9

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoH:I

    if-ne v0, v6, :cond_8

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoq:Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v0, v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    aput-object v0, v5, v1

    aget-object v0, v5, v1

    invoke-virtual {v0, v7}, Lcom/google/android/gms/cast/MediaQueueItem;->zzo(Lorg/json/JSONObject;)Z

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v0, v7}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    aput-object v0, v5, v1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v3, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-direct {p0, v5}, Lcom/google/android/gms/cast/MediaStatus;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :cond_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzsy()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzaoG:J

    return-wide v0
.end method
