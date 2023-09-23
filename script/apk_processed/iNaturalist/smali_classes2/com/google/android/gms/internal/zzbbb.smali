.class public Lcom/google/android/gms/internal/zzbbb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbbb$zza;,
        Lcom/google/android/gms/internal/zzbbb$zze;,
        Lcom/google/android/gms/internal/zzbbb$zzb;,
        Lcom/google/android/gms/internal/zzbbb$zzc;,
        Lcom/google/android/gms/internal/zzbbb$zzd;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mState:I

.field private final zzbEU:Ljava/lang/String;

.field private zzbHy:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzbJf:Ljava/lang/String;

.field private final zzbJg:Ljava/lang/String;

.field private final zzbJh:Lcom/google/android/gms/internal/zzbcc;

.field private final zzbJi:Lcom/google/android/gms/internal/zzbib;

.field private final zzbJj:Ljava/util/concurrent/ExecutorService;

.field private final zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbJm:Lcom/google/android/gms/internal/zzbbd;

.field private zzbJn:Lcom/google/android/gms/internal/zzbcb;

.field private zzbJo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbbi;",
            ">;"
        }
    .end annotation
.end field

.field private zzbJp:Z

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbcc;Lcom/google/android/gms/internal/zzbib;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzbbd;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbbb;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbcc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJh:Lcom/google/android/gms/internal/zzbcc;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbib;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJi:Lcom/google/android/gms/internal/zzbib;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p9}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static {p10}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/util/zze;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-static {p11}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbbd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJg:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/zzbbi;

    const-string p3, "gtm.load"

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string p5, "gtm"

    new-instance p6, Ljava/util/Date;

    invoke-direct {p6}, Ljava/util/Date;-><init>()V

    iget-object p8, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    const/4 p7, 0x0

    move-object p2, p1

    invoke-direct/range {p2 .. p8}, Lcom/google/android/gms/internal/zzbbi;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzbb;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x23

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Container "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is scheduled for loading."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/zzbbb$zzb;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/zzbbb$zzb;-><init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbbb$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbbb;->mState:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbbb;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbcb;)Lcom/google/android/gms/internal/zzbcb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJn:Lcom/google/android/gms/internal/zzbcb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbbb;->zzaB(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJp:Z

    return p1
.end method

.method private zzaB(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Refresh container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbbb$2;-><init>(Lcom/google/android/gms/internal/zzbbb;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJn:Lcom/google/android/gms/internal/zzbcb;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbbd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbib;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJi:Lcom/google/android/gms/internal/zzbib;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/tagmanager/zzbb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzbbb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzbbb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJp:Z

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJh:Lcom/google/android/gms/internal/zzbcc;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/common/util/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbbb;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object p0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbbb$1;-><init>(Lcom/google/android/gms/internal/zzbbb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbbi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbbb$zzc;-><init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbbi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
