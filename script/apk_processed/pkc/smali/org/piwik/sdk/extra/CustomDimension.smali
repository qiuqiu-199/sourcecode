.class public Lorg/piwik/sdk/extra/CustomDimension;
.super Ljava/lang/Object;
.source "CustomDimension.java"


# direct methods
.method private static formatDimensionId(I)Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dimension"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDimension(Lorg/piwik/sdk/TrackMe;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    const-string p0, "PIWIK:CustomDimension"

    .line 34
    invoke-static {p0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p0

    const-string p2, "dimensionId should be great than 0 (arg: %d)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 38
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v2, "PIWIK:CustomDimension"

    .line 39
    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "dimensionValue was truncated to 255 chars."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p2, 0x0

    .line 44
    :cond_2
    invoke-static {p1}, Lorg/piwik/sdk/extra/CustomDimension;->formatDimensionId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/piwik/sdk/TrackMe;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    return v0
.end method
