.class public final Lcom/google/android/gms/internal/zztg$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zza"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzagH:J

.field final synthetic zzagI:Lcom/google/android/gms/internal/zztg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zztg;Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zztg$zza;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagH:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zztg;Ljava/lang/String;JLcom/google/android/gms/internal/zztg$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zztg$zza;-><init>(Lcom/google/android/gms/internal/zztg;Ljava/lang/String;J)V

    return-void
.end method

.method private zzqk()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqq()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private zzql()J
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private zzqn()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqo()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private zzqo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzqp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzcc(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqk()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqp()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    return-void

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v2, v6

    add-long/2addr v0, v4

    div-long/2addr v6, v0

    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqp()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzqm()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzql()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagH:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return-object v4

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagH:J

    const-wide/16 v5, 0x2

    mul-long v2, v2, v5

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqk()V

    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zztg$zza;->zzagI:Lcom/google/android/gms/internal/zztg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqp()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztg$zza;->zzqk()V

    if-eqz v0, :cond_3

    cmp-long v3, v1, v5

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_3
    :goto_0
    return-object v4
.end method

.method protected zzqq()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg$zza;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
