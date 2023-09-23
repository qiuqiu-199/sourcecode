.class public Lcom/google/android/gms/internal/zzbsa;
.super Lcom/google/android/gms/internal/zzbrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbrz<",
        "Lcom/google/android/gms/internal/zzbsa;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbrz;-><init>(Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbsa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzbsa;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbsa;->value:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsa;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbsa;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsa;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/internal/zzbrz;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbsa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsa;->zza(Lcom/google/android/gms/internal/zzbsa;)I

    move-result p1

    return p1
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbsa;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbsa;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbte;->zzl(JJ)I

    move-result p1

    return p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsa;->zzb(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "number:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzl(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected zzaaF()Lcom/google/android/gms/internal/zzbrz$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjw:Lcom/google/android/gms/internal/zzbrz$zza;

    return-object v0
.end method

.method public synthetic zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbsa;->zzp(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsa;

    move-result-object p1

    return-object p1
.end method

.method public zzp(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsa;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbsa;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbsa;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbsa;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0
.end method
