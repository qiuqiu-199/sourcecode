.class synthetic Lcom/google/firebase/database/connection/idl/zzc$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/idl/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic zzcdc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzbro$zza;->values()[Lcom/google/android/gms/internal/zzbro$zza;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    :try_start_0
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    sget-object v1, Lcom/google/android/gms/internal/zzbro$zza;->zzciM:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    sget-object v1, Lcom/google/android/gms/internal/zzbro$zza;->zzciN:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    sget-object v1, Lcom/google/android/gms/internal/zzbro$zza;->zzciO:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    sget-object v1, Lcom/google/android/gms/internal/zzbro$zza;->zzciP:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc$1;->zzcdc:[I

    sget-object v1, Lcom/google/android/gms/internal/zzbro$zza;->zzciQ:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
