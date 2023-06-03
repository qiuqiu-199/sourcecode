.class public Lcom/google/android/gms/internal/zzpe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdd$zzb;
.implements Lcom/google/android/gms/internal/zzpm$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzIA:Ljava/lang/String;

.field private zzUe:Z

.field private zzUf:Z

.field private zzUg:Z

.field private zzUo:Z

.field private final zzWD:Ljava/lang/String;

.field private final zzWE:Lcom/google/android/gms/internal/zzpf;

.field private zzWF:Ljava/math/BigInteger;

.field private final zzWG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzph;",
            ">;"
        }
    .end annotation
.end field

.field private zzWI:Z

.field private zzWJ:I

.field private zzWK:Lcom/google/android/gms/internal/zzgf;

.field private zzWL:Lcom/google/android/gms/internal/zzde;

.field private zzWM:Ljava/lang/String;

.field private zzWN:Ljava/lang/String;

.field private zzWO:Ljava/lang/Boolean;

.field private zzWP:Z

.field private zzWQ:Z

.field private zzWR:Z

.field private zzWS:Ljava/lang/String;

.field private zzWT:J

.field private zzWU:J

.field private zzWV:J

.field private zzWW:I

.field private final zzWX:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzrJ:Ljava/lang/Object;

.field private zzsu:Lcom/google/android/gms/internal/zzcs;

.field private zztZ:Z

.field private zztt:Lcom/google/android/gms/internal/zzqh;

.field private zzxP:Lcom/google/android/gms/internal/zzdc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWF:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWG:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWH:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWI:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUe:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWJ:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zztZ:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWK:Lcom/google/android/gms/internal/zzgf;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUg:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWL:Lcom/google/android/gms/internal/zzde;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzxP:Lcom/google/android/gms/internal/zzdc;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWO:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zzUo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWR:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWS:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWT:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWU:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWV:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWW:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpo;->zzkM()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWD:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/zzpf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWD:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzpf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWE:Lcom/google/android/gms/internal/zzpf;

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzqh;->zzYY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRU:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzBS()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWD:Ljava/lang/String;

    return-object v0
.end method

.method public zzF(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUf:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpm;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpe;->zzUf:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpe;->zzH(Landroid/content/Context;)Lcom/google/android/gms/internal/zzde;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzde;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "start fetching content..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzde;->zzej()V

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

.method public zzG(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUg:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpm;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpm;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpe;->zzUg:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpe;->zzH(Landroid/content/Context;)Lcom/google/android/gms/internal/zzde;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzde;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "start fetching content..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzde;->zzej()V

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

.method public zzH(Landroid/content/Context;)Lcom/google/android/gms/internal/zzde;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCc:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzg()Z

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCk:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCi:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpe;->zzkg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpe;->zzkh()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzxP:Lcom/google/android/gms/internal/zzdc;

    if-nez p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzdc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzdc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzxP:Lcom/google/android/gms/internal/zzdc;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWL:Lcom/google/android/gms/internal/zzde;

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzde;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzxP:Lcom/google/android/gms/internal/zzdc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzmc;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/zzde;-><init>(Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/internal/zzmd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWL:Lcom/google/android/gms/internal/zzde;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWL:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzde;->zzej()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWL:Lcom/google/android/gms/internal/zzde;

    monitor-exit v0

    return-object p1

    :cond_6
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzH(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWR:Z

    return-void
.end method

.method public zzI(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWP:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpg;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpe;->zzWE:Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {v3, p1, p3}, Lcom/google/android/gms/internal/zzpf;->zzo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzpe;->zzWH:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpe;->zzWH:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzph;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzph;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p3, "slots"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzpe;->zzWG:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzpc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpc;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p3, "ads"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWG:Ljava/util/HashSet;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzpg;->zza(Ljava/util/HashSet;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWG:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzpc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWG:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWO:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzph;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWH:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmc;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzmd;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public zzaU(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWM:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpm;->zzp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzaV(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWN:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpm;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzah(I)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpm;->zza(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzb(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWG:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUe:Z

    if-eq p2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzpe;->zzUe:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzpm;->zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zztZ:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcP()Lcom/google/android/gms/internal/zzdd;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzdd;->zza(Lcom/google/android/gms/internal/zzdd$zzb;)V

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zze(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzg(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzh(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpm;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/zzpm$zzb;)Ljava/util/concurrent/Future;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpe;->zzky()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzpo;->zzu(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzIA:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzp()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWQ:Z

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzcs;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/zzpo;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzji;

    move-result-object p1

    invoke-direct {v1, v3, v4, p1}, Lcom/google/android/gms/internal/zzcs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzji;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzsu:Lcom/google/android/gms/internal/zzcs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpe;->zzkA()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzv(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzpe;->zztZ:Z

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

.method public zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUo:Z

    if-eq p2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzpe;->zzUo:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzpm;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzh(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "use_https"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpe;->zzUe:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUe:Z

    const-string v1, "webview_cache_version"

    iget v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWJ:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWJ:I

    const-string v1, "content_url_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "content_url_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzpe;->zzF(Z)V

    :cond_0
    const-string v1, "content_url_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "content_url_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWM:Ljava/lang/String;

    :cond_1
    const-string v1, "auto_collect_location"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpe;->zzUo:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUo:Z

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzpe;->zzG(Z)V

    :cond_2
    const-string v1, "content_vertical_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "content_vertical_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWN:Ljava/lang/String;

    :cond_3
    const-string v1, "app_settings_json"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "app_settings_json"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWS:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWS:Ljava/lang/String;

    const-string v1, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWT:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWT:J

    const-string v1, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWU:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWU:J

    const-string v1, "request_in_session_count"

    iget v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWW:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWW:I

    const-string v1, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWV:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWV:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzpm;->zzr(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public zzk(Z)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWU:J

    sub-long/2addr v0, v2

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzCR:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWE:Lcom/google/android/gms/internal/zzpf;

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpf;->zzai(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWE:Lcom/google/android/gms/internal/zzpf;

    iget v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWW:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzpe;->zzo(J)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWE:Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpf;->zzku()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpe;->zzah(I)Ljava/util/concurrent/Future;

    :goto_1
    return-void
.end method

.method zzkA()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzge;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzge;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcT()Lcom/google/android/gms/internal/zzgg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgg;->zza(Lcom/google/android/gms/internal/zzge;)Lcom/google/android/gms/internal/zzgf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWK:Lcom/google/android/gms/internal/zzgf;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cannot initialize CSI reporter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public zzkB()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public zzkC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public zzkD()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public zzkg()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUf:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkh()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUg:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzki()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWF:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWF:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWF:Ljava/math/BigInteger;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkj()Lcom/google/android/gms/internal/zzpf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWE:Lcom/google/android/gms/internal/zzpf;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkk()Lcom/google/android/gms/internal/zzgf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWK:Lcom/google/android/gms/internal/zzgf;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkl()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWI:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWI:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkm()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUe:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWQ:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzIA:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzko()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWM:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWN:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkq()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWO:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkr()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzUo:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zzks()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWU:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zzkt()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWV:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zzku()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWW:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWR:Z

    return v0
.end method

.method public zzkw()Lcom/google/android/gms/internal/zzpd;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzpd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpe;->zzWS:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzpe;->zzWT:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzpd;-><init>(Ljava/lang/String;J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzkx()Lcom/google/android/gms/internal/zzcs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzsu:Lcom/google/android/gms/internal/zzcs;

    return-object v0
.end method

.method public zzky()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zztt:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmc;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzmd;

    return-void
.end method

.method public zzkz()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWP:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzpm;->zzs(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public zzm(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzpm;->zzt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpe;->zzWT:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWS:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpe;->zzWS:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzpe;->zzWT:J

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzpm;->zza(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzo(J)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWU:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/zzpm;->zza(Landroid/content/Context;J)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzp(J)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzpe;->zzWV:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/zzpm;->zzb(Landroid/content/Context;J)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
