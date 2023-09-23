.class public Lcom/google/android/gms/tagmanager/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzat;


# static fields
.field private static final zzbEI:Ljava/lang/Object;

.field private static zzbFW:Lcom/google/android/gms/tagmanager/zzaa;


# instance fields
.field private zzbFX:Lcom/google/android/gms/tagmanager/zzau;

.field private zzbFk:Lcom/google/android/gms/tagmanager/zzcl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaa;->zzbEI:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzav;->zzca(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzav;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzda;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzda;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzcl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzcl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbFX:Lcom/google/android/gms/tagmanager/zzau;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

    return-void
.end method

.method public static zzbT(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzat;
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaa;->zzbEI:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzaa;->zzbFW:Lcom/google/android/gms/tagmanager/zzaa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzaa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/tagmanager/zzaa;->zzbFW:Lcom/google/android/gms/tagmanager/zzaa;

    :cond_0
    sget-object p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbFW:Lcom/google/android/gms/tagmanager/zzaa;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public zzhf(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcl;->zzpV()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbFX:Lcom/google/android/gms/tagmanager/zzau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzau;->zzhj(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
