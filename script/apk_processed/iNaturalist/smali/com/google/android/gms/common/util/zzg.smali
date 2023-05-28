.class public final Lcom/google/android/gms/common/util/zzg;
.super Ljava/lang/Object;


# static fields
.field private static final zzaHT:[Ljava/lang/String;

.field private static zzaHU:Landroid/os/DropBoxManager;

.field private static zzaHV:Z

.field private static zzaHW:I

.field private static zzaHX:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android."

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "dalvik."

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "java."

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "javax."

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzaHT:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzaHU:Landroid/os/DropBoxManager;

    sput-boolean v2, Lcom/google/android/gms/common/util/zzg;->zzaHV:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/zzg;->zzaHW:I

    sput v2, Lcom/google/android/gms/common/util/zzg;->zzaHX:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/util/zzg;->zzzb()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "CrashUtils"

    const-string v2, "Error determining which process we\'re running in!"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "CrashUtils"

    const-string v1, "Error adding exception to DropBox!"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_0
    throw p0
.end method

.method private static zzzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
