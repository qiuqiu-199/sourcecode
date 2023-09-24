.class public Lcom/google/android/gms/internal/zzzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzzk$zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzt$zzb;,
        Lcom/google/android/gms/internal/zzzt$zza;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static zzaxU:Ljava/lang/Boolean;


# instance fields
.field final zzaxV:Lcom/google/android/gms/internal/zzzt$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzzt;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzzt;->zzaxU:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzzt$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzzt$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzt;-><init>(Lcom/google/android/gms/internal/zzzt$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzzt$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzzt$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzt;-><init>(Lcom/google/android/gms/internal/zzzt$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzzt$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzzt$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzt;->zzaxV:Lcom/google/android/gms/internal/zzzt$zza;

    return-void
.end method

.method static zzJ(J)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzq;->zzn([B)J

    move-result-wide p0

    return-wide p0
.end method

.method static zza(JJJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    invoke-static {p0, p1, p4, p5}, Lcom/google/android/gms/internal/zzzw;->zzd(JJ)J

    move-result-wide p0

    cmp-long p4, p0, p2

    if-gez p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "negative values not supported: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzd(Ljava/lang/String;J)J
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzzt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzq;->zzn([B)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzzt;->zzJ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static zzda(Ljava/lang/String;)Lcom/google/android/gms/internal/zzzt$zzb;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    :cond_1
    move-object v5, v1

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "LogSamplerImpl"

    const-string v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long p0, v6, v1

    if-ltz p0, :cond_5

    cmp-long p0, v8, v1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/zzzt$zzb;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzzt$zzb;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "LogSamplerImpl"

    const/16 v1, 0x48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "negative values not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LogSamplerImpl"

    const-string v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public zzh(Ljava/lang/String;I)Z
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_2

    return p2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzt;->zzaxV:Lcom/google/android/gms/internal/zzzt$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzt$zza;->zzuW()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzt;->zzaxV:Lcom/google/android/gms/internal/zzzt$zza;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzzt$zza;->zzdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzt;->zzda(Ljava/lang/String;)Lcom/google/android/gms/internal/zzzt$zzb;

    move-result-object p1

    if-nez p1, :cond_3

    return p2

    :cond_3
    iget-object p2, p1, Lcom/google/android/gms/internal/zzzt$zzb;->zzaxW:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/zzzt;->zzd(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzzt$zzb;->zzaxX:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzzt$zzb;->zzaxY:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/zzzt;->zza(JJJ)Z

    move-result p1

    return p1
.end method
