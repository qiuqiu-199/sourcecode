.class public Lcom/google/android/gms/cast/AdBreakInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzGV:Ljava/lang/String;

.field private final zzamK:J

.field private final zzamP:J

.field private final zzamQ:Z

.field private zzamR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/AdBreakInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JZ[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    iput-object p3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    iput-boolean p6, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    iput-object p7, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    return-void
.end method

.method static zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "position"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "position"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v4

    const-string v2, "isWatched"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v2, "duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zzf(D)J

    move-result-wide v7

    const-string v2, "breakClipIds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v2

    goto :goto_1

    :cond_3
    move-object v10, v0

    :goto_1
    new-instance p0, Lcom/google/android/gms/cast/AdBreakInfo;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "AdBreakInfo"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Error while creating an AdBreakInfo from JSON: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/AdBreakInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/AdBreakInfo;

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBreakClipIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamR:[Ljava/lang/String;

    return-object v0
.end method

.method public getDurationInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamK:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackPositionInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamP:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzGV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isWatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzamQ:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/zzb;->zza(Lcom/google/android/gms/cast/AdBreakInfo;Landroid/os/Parcel;I)V

    return-void
.end method
