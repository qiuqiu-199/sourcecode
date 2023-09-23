.class public Lcom/google/android/gms/cast/AdBreakStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final AD_BREAK_CLIP_NOT_SKIPPABLE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/AdBreakStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzamS:J

.field private final zzamT:J

.field private final zzamU:Ljava/lang/String;

.field private final zzamV:Ljava/lang/String;

.field private final zzamW:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamS:J

    iput-wide p3, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamT:J

    iput-object p5, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamU:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamV:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamW:J

    return-void
.end method

.method static zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "currentBreakTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "currentBreakClipTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "currentBreakTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v4

    const-string v1, "currentBreakClipTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v6

    const-string v1, "breakId"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "breakClipId"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "whenSkippable"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long p0, v10, v2

    if-eqz p0, :cond_2

    long-to-double v1, v10

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v1

    move-wide v10, v1

    :cond_2
    new-instance p0, Lcom/google/android/gms/cast/AdBreakStatus;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "AdBreakInfo"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Error while creating an AdBreakClipInfo from JSON: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/AdBreakStatus;

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamS:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzamS:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamT:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzamT:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamU:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzamU:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzamV:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamW:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzamW:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBreakClipId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamV:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamU:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBreakClipTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamT:J

    return-wide v0
.end method

.method public getCurrentBreakTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamS:J

    return-wide v0
.end method

.method public getWhenSkippableInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamW:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamU:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamV:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzamW:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzc;->zza(Lcom/google/android/gms/cast/AdBreakStatus;Landroid/os/Parcel;I)V

    return-void
.end method
