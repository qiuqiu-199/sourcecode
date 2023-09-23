.class public Lcom/google/android/gms/ads/internal/purchase/zzc;
.super Lcom/google/android/gms/internal/zzpj;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzJv:Lcom/google/android/gms/internal/zzli;

.field private zzPs:Z

.field private zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

.field private zzPu:Lcom/google/android/gms/ads/internal/purchase/zzh;

.field private zzPv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/purchase/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzPw:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/ads/internal/purchase/zzk;)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-direct {v4, p1}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzu(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/purchase/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/ads/internal/purchase/zzk;Lcom/google/android/gms/ads/internal/purchase/zzb;Lcom/google/android/gms/ads/internal/purchase/zzh;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/ads/internal/purchase/zzk;Lcom/google/android/gms/ads/internal/purchase/zzb;Lcom/google/android/gms/ads/internal/purchase/zzh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPs:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPv:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzJv:Lcom/google/android/gms/internal/zzli;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPw:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPu:Lcom/google/android/gms/ads/internal/purchase/zzh;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPu:Lcom/google/android/gms/ads/internal/purchase/zzh;

    const-wide/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzg(J)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPv:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/purchase/zzc;)Lcom/google/android/gms/ads/internal/purchase/zzk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPw:Lcom/google/android/gms/ads/internal/purchase/zzk;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/purchase/zzc;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/purchase/zzc;)Lcom/google/android/gms/internal/zzli;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzJv:Lcom/google/android/gms/internal/zzli;

    return-object p0
.end method

.method private zze(J)V
    .locals 1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzf(J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Timeout waiting for pending transaction to be processed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPs:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private zzf(J)Z
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xea60

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzrJ:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "waitWithTimeout_lock interrupted"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzV(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zziI()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPs:Z

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzrJ:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "In-app billing service disconnected."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/purchase/zzf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    const-string p2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/ads/internal/purchase/zzc$1;

    invoke-direct {p3, p0, p1, v0}, Lcom/google/android/gms/ads/internal/purchase/zzc$1;-><init>(Lcom/google/android/gms/ads/internal/purchase/zzc;Lcom/google/android/gms/ads/internal/purchase/zzf;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzco()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zze(J)V

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected zziI()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/purchase/zzf;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzPI:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPt:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzaE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v9, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzPH:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v9, v7, v8}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzPu:Lcom/google/android/gms/ads/internal/purchase/zzh;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    goto :goto_3

    :cond_8
    return-void
.end method
