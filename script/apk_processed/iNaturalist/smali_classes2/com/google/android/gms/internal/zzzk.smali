.class public final Lcom/google/android/gms/internal/zzzk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzk$zza;,
        Lcom/google/android/gms/internal/zzzk$zzd;,
        Lcom/google/android/gms/internal/zzzk$zzb;,
        Lcom/google/android/gms/internal/zzzk$zzc;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzzp;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaie:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzzp;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzRg:Ljava/lang/String;

.field private final zzaxp:I

.field private zzaxq:Ljava/lang/String;

.field private zzaxr:I

.field private zzaxs:Ljava/lang/String;

.field private zzaxt:Ljava/lang/String;

.field private final zzaxu:Z

.field private zzaxv:I

.field private final zzaxw:Lcom/google/android/gms/internal/zzzl;

.field private zzaxx:Lcom/google/android/gms/internal/zzzk$zzd;

.field private final zzaxy:Lcom/google/android/gms/internal/zzzk$zzb;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzk;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzzk$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzzk$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzk;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/internal/zzzk;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzzk;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzzk;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzzl;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzzk$zzd;Lcom/google/android/gms/internal/zzzk$zzb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxr:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxv:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzk;->zzRg:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzzk;->zzaz(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzzk;->zzaxp:I

    iput p2, p0, Lcom/google/android/gms/internal/zzzk;->zzaxr:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzk;->zzaxq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzk;->zzaxs:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzk;->zzaxt:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzzk;->zzaxu:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzzk;->zzaxw:Lcom/google/android/gms/internal/zzzl;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzzk;->zzuP:Lcom/google/android/gms/common/util/zze;

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    new-instance p9, Lcom/google/android/gms/internal/zzzk$zzd;

    invoke-direct {p9}, Lcom/google/android/gms/internal/zzzk$zzd;-><init>()V

    :goto_0
    iput-object p9, p0, Lcom/google/android/gms/internal/zzzk;->zzaxx:Lcom/google/android/gms/internal/zzzk$zzd;

    iput v0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxv:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzzk;->zzaxy:Lcom/google/android/gms/internal/zzzk$zzb;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzzk;->zzaxu:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzk;->zzaxs:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string p1, "can\'t be anonymous with an upload account"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzo;->zzaA(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzl;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/zzzt;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/zzzt;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzzk;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzzl;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzzk$zzd;Lcom/google/android/gms/internal/zzzk$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzk;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxr:I

    return p0
.end method

.method private zzaz(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ClearcutLogger"

    const-string v1, "This can\'t happen."

    invoke-static {p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxq:Ljava/lang/String;

    return-object p0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxs:Ljava/lang/String;

    return-object p0
.end method

.method private static zzc(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxt:Ljava/lang/String;

    return-object p0
.end method

.method private static zzd(Ljava/util/ArrayList;)[[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[[B"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzzk;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zze(Ljava/util/ArrayList;)[I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzk;->zzb(Ljava/util/ArrayList;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/common/util/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object p0
.end method

.method static synthetic zzf(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzk;->zzc(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/internal/zzzk$zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxx:Lcom/google/android/gms/internal/zzzk$zzd;

    return-object p0
.end method

.method static synthetic zzg(Ljava/util/ArrayList;)[[B
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzzk;->zzd(Ljava/util/ArrayList;)[[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzzk;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxu:Z

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzRg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzzk;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxp:I

    return p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/internal/zzzk$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxy:Lcom/google/android/gms/internal/zzzk$zzb;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/internal/zzzl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzk;->zzaxw:Lcom/google/android/gms/internal/zzzl;

    return-object p0
.end method


# virtual methods
.method public zzm([B)Lcom/google/android/gms/internal/zzzk$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzzk$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzzk$zza;-><init>(Lcom/google/android/gms/internal/zzzk;[BLcom/google/android/gms/internal/zzzk$1;)V

    return-object v0
.end method
