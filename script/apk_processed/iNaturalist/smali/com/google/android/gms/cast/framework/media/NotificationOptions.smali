.class public Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SKIP_STEP_TEN_SECONDS_IN_MS:J = 0x2710L

.field public static final SKIP_STEP_THIRTY_SECONDS_IN_MS:J = 0x7530L

.field private static final zzarV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzarW:[I


# instance fields
.field private final zzarX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzarY:[I

.field private final zzarZ:J

.field private final zzasA:I

.field private final zzasB:I

.field private final zzasa:Ljava/lang/String;

.field private final zzasb:I

.field private final zzasc:I

.field private final zzasd:I

.field private final zzase:I

.field private final zzasf:I

.field private final zzasg:I

.field private final zzash:I

.field private final zzasi:I

.field private final zzasj:I

.field private final zzask:I

.field private final zzasl:I

.field private final zzasm:I

.field private final zzasn:I

.field private final zzaso:I

.field private final zzasp:I

.field private final zzasq:I

.field private final zzasr:I

.field private final zzass:I

.field private final zzast:I

.field private final zzasu:I

.field private final zzasv:I

.field private final zzasw:I

.field private final zzasx:I

.field private final zzasy:I

.field private final zzasz:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarV:Ljava/util/List;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarW:[I

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zze;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[IJ",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIIIIIIIIIIIIIIII)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarX:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v3, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarX:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_1

    array-length v1, v2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarY:[I

    :goto_1
    move-wide v1, p3

    goto :goto_2

    :cond_1
    iput-object v3, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarY:[I

    goto :goto_1

    :goto_2
    iput-wide v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarZ:J

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasa:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasb:I

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasc:I

    move v1, p8

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasd:I

    move v1, p9

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzase:I

    move v1, p10

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasf:I

    move/from16 v1, p11

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasg:I

    move/from16 v1, p12

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzash:I

    move/from16 v1, p13

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasi:I

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasj:I

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzask:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasl:I

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasm:I

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasn:I

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaso:I

    move/from16 v1, p20

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasp:I

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasq:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasr:I

    move/from16 v1, p23

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzass:I

    move/from16 v1, p24

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzast:I

    move/from16 v1, p25

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasu:I

    move/from16 v1, p26

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasv:I

    move/from16 v1, p27

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasw:I

    move/from16 v1, p28

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasx:I

    move/from16 v1, p29

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasy:I

    move/from16 v1, p30

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasz:I

    move/from16 v1, p31

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasA:I

    move/from16 v1, p32

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasB:I

    return-void
.end method

.method static synthetic zztD()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarV:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zztE()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarW:[I

    return-object v0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarX:Ljava/util/List;

    return-object v0
.end method

.method public getCastingToDeviceStringResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasp:I

    return v0
.end method

.method public getCompatActionIndices()[I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarY:[I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarY:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasn:I

    return v0
.end method

.method public getForward10DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasi:I

    return v0
.end method

.method public getForward30DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasj:I

    return v0
.end method

.method public getForwardDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzash:I

    return v0
.end method

.method public getPauseDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasd:I

    return v0
.end method

.method public getPlayDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzase:I

    return v0
.end method

.method public getRewind10DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasl:I

    return v0
.end method

.method public getRewind30DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasm:I

    return v0
.end method

.method public getRewindDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzask:I

    return v0
.end method

.method public getSkipNextDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasf:I

    return v0
.end method

.method public getSkipPrevDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasg:I

    return v0
.end method

.method public getSkipStepMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzarZ:J

    return-wide v0
.end method

.method public getSmallIconDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasb:I

    return v0
.end method

.method public getStopLiveStreamDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasc:I

    return v0
.end method

.method public getStopLiveStreamTitleResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasq:I

    return v0
.end method

.method public getTargetActivityClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasa:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zze;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zztA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasz:I

    return v0
.end method

.method public zztB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasA:I

    return v0
.end method

.method public zztC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasB:I

    return v0
.end method

.method public zztr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaso:I

    return v0
.end method

.method public zzts()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasr:I

    return v0
.end method

.method public zztt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzass:I

    return v0
.end method

.method public zztu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzast:I

    return v0
.end method

.method public zztv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasu:I

    return v0
.end method

.method public zztw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasv:I

    return v0
.end method

.method public zztx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasw:I

    return v0
.end method

.method public zzty()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasx:I

    return v0
.end method

.method public zztz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzasy:I

    return v0
.end method
