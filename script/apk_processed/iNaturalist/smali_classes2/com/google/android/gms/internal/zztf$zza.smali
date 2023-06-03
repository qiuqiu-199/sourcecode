.class Lcom/google/android/gms/internal/zztf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private zzagA:I

.field private zzagB:Ljava/io/ByteArrayOutputStream;

.field final synthetic zzagC:Lcom/google/android/gms/internal/zztf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zztf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzsz;)Z
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagA:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztf;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsp;->zzph()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/zztf;->zza(Lcom/google/android/gms/internal/zzsz;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztf;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v2, "Error formatting hit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zztd;->zza(Lcom/google/android/gms/internal/zzsz;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zztf;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsp;->zzoZ()I

    move-result v4

    if-le v2, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztf;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v2, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zztd;->zza(Lcom/google/android/gms/internal/zzsz;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztf;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsp;->zzpb()I

    move-result v2

    if-le p1, v2, :cond_4

    return v3

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/internal/zztf;->zzqc()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagA:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagA:I

    return v1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagC:Lcom/google/android/gms/internal/zztf;

    const-string v2, "Failed to write payload when batching hits"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zztf;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public zzqd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztf$zza;->zzagA:I

    return v0
.end method
