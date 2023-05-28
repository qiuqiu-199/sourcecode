.class public Lcom/google/android/gms/internal/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzrJ:Ljava/lang/Object;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;

.field private final zzwg:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/internal/zzpb;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzct;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwi:Landroid/content/Context;

.field private final zzwj:Lcom/google/android/gms/internal/zzji;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzji;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwh:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcs;->zzwi:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcs;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcs;->zzwj:Lcom/google/android/gms/internal/zzji;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzct;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzct;->zzdJ()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwh:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;)V
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Landroid/view/View;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzct$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzct$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzpb;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzda;Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Landroid/view/View;Lcom/google/android/gms/internal/zzjj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzct$zzd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzct$zzd;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzda;Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzda;Lcom/google/android/gms/internal/zzjj;)V
    .locals 8
    .param p4    # Lcom/google/android/gms/internal/zzjj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzcs;->zzi(Lcom/google/android/gms/internal/zzpb;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzct;

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/zzct;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcs;->zzwi:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcs;->zztt:Lcom/google/android/gms/internal/zzqh;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzct;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzda;)V

    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/zzct;->zza(Lcom/google/android/gms/internal/zzcu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcs;->zzwh:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v7

    :goto_0
    if-eqz p4, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zzcv;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/zzcv;-><init>(Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzjj;)V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzct;->zza(Lcom/google/android/gms/internal/zzcx;)V

    goto :goto_2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/zzcw;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcs;->zzwj:Lcom/google/android/gms/internal/zzji;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/zzcw;-><init>(Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzji;)V

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzha;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzct$zza;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzct$zza;-><init>(Lcom/google/android/gms/internal/zzha;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzda;Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzpb;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzct;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzct;->zzdJ()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzj(Lcom/google/android/gms/internal/zzpb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzct;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzct;->zzdH()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzk(Lcom/google/android/gms/internal/zzpb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzct;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzct;->stop()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzl(Lcom/google/android/gms/internal/zzpb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzct;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzct;->pause()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzm(Lcom/google/android/gms/internal/zzpb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwg:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzct;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzct;->resume()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
