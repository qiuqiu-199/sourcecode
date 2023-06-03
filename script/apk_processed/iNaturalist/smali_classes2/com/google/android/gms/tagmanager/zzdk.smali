.class Lcom/google/android/gms/tagmanager/zzdk;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/tagmanager/zzdk;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbIA:J

.field private zzbIB:Z

.field private zzbIz:D


# direct methods
.method private constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIz:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIB:Z

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIA:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIB:Z

    return-void
.end method

.method public static zza(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzdk;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdk;-><init>(D)V

    return-object v0
.end method

.method public static zzaA(J)Lcom/google/android/gms/tagmanager/zzdk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzdk;-><init>(J)V

    return-object v0
.end method

.method public static zzhv(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdk;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdk;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " is not a valid TypedNumber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzdk;->zza(Lcom/google/android/gms/tagmanager/zzdk;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIA:J

    long-to-double v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIz:D

    :goto_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzdk;->zza(Lcom/google/android/gms/tagmanager/zzdk;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRJ()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRI()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRK()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIA:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public zzRG()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRH()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public zzRH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIB:Z

    return v0
.end method

.method public zzRI()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIA:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIz:D

    double-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public zzRJ()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public zzRK()S
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzdk;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzRH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdk;->zzRH()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdk;->zzbIA:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/zzdk;->zzbIA:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdk;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    :goto_0
    return p1
.end method
