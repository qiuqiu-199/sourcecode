.class final Lcom/google/android/gms/internal/zzbid$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzP([B)Lcom/google/android/gms/internal/zzbif;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbhy;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhz;->zzhR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbir;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "The runtime configuration was successfully parsed from the resource"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/zzbhy; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbif;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzbif;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzbif$zza;Lcom/google/android/gms/internal/zzbir;)V

    return-object v0

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/zzbhy;

    const-string v0, "The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzbhy;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/zzbhy;

    const-string v0, "The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzbhy;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/zzbhy;

    const-string v0, "Cannot parse a 0 length byte[]"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzbhy;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzbhy;

    const-string v0, "Cannot parse a null byte[]"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzbhy;-><init>(Ljava/lang/String;)V

    throw p1
.end method
