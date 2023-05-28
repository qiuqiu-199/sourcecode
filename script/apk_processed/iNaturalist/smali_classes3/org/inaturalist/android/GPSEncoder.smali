.class public Lorg/inaturalist/android/GPSEncoder;
.super Ljava/lang/Object;
.source "GPSEncoder.java"


# static fields
.field private static sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized convert(D)Ljava/lang/String;
    .locals 7

    const-class v0, Lorg/inaturalist/android/GPSEncoder;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-int v1, p0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v2

    int-to-double v4, v1

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    const/4 v6, 0x0

    sub-double/2addr p0, v4

    double-to-int v4, p0

    mul-double p0, p0, v2

    int-to-double v5, v4

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    const/4 v2, 0x0

    sub-double/2addr p0, v5

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v2

    double-to-int p0, p0

    .line 45
    :try_start_1
    sget-object p1, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    sget-object p1, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    sget-object p1, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "/1,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object p1, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    sget-object p1, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "/1,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object p1, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    sget-object p0, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    const-string p1, "/1000,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object p0, Lorg/inaturalist/android/GPSEncoder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    throw p0
.end method

.method public static latitudeRef(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "S"

    goto :goto_0

    :cond_0
    const-string p0, "N"

    :goto_0
    return-object p0
.end method

.method public static longitudeRef(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "W"

    goto :goto_0

    :cond_0
    const-string p0, "E"

    :goto_0
    return-object p0
.end method
