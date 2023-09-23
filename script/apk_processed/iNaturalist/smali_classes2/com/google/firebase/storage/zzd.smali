.class public Lcom/google/firebase/storage/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/zzd$zza;
    }
.end annotation


# static fields
.field public static zzcnH:Lcom/google/firebase/storage/zzd;

.field private static zzcnI:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcnJ:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static zzcnK:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcnL:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static zzcnM:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcnN:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static zzcnO:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcnP:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/firebase/storage/zzd;

    invoke-direct {v0}, Lcom/google/firebase/storage/zzd;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnH:Lcom/google/firebase/storage/zzd;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnI:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/google/firebase/storage/zzd;->zzcnI:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Lcom/google/firebase/storage/zzd$zza;

    const-string v2, "Command-"

    invoke-direct {v9, v2}, Lcom/google/firebase/storage/zzd$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-wide/16 v5, 0x5

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnJ:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnK:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/google/firebase/storage/zzd;->zzcnK:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Lcom/google/firebase/storage/zzd$zza;

    const-string v2, "Upload-"

    invoke-direct {v9, v2}, Lcom/google/firebase/storage/zzd$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnL:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnM:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/google/firebase/storage/zzd;->zzcnM:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Lcom/google/firebase/storage/zzd$zza;

    const-string v2, "Download-"

    invoke-direct {v9, v2}, Lcom/google/firebase/storage/zzd$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnN:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnO:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/google/firebase/storage/zzd;->zzcnO:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Lcom/google/firebase/storage/zzd$zza;

    const-string v1, "Callbacks-"

    invoke-direct {v9, v1}, Lcom/google/firebase/storage/zzd$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/zzd;->zzcnP:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnJ:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnN:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnP:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzacH()Lcom/google/firebase/storage/zzd;
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnH:Lcom/google/firebase/storage/zzd;

    return-object v0
.end method


# virtual methods
.method public zzu(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnJ:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzv(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzw(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnN:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzx(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/zzd;->zzcnP:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
