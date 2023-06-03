.class public Lcom/google/android/gms/internal/zzlq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlq$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzpq;
    .locals 8
    .param p5    # Lcom/google/android/gms/internal/zzqw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p1

    move-object v0, p2

    move-object v3, p3

    move-object v6, p5

    move-object v5, p7

    iget-object v2, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    if-eqz v4, :cond_0

    new-instance v7, Lcom/google/android/gms/internal/zzlu;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzqw;)V

    goto :goto_1

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    if-nez v4, :cond_3

    instance-of v4, v0, Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCu:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzn()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {p5}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-eqz v0, :cond_2

    new-instance v7, Lcom/google/android/gms/internal/zzlt;

    invoke-direct {v7, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzlt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzlq$zza;)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/zzlr;

    invoke-direct {v7, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzlr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzlq$zza;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    if-eqz v2, :cond_4

    instance-of v2, v0, Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v2, :cond_4

    new-instance v7, Lcom/google/android/gms/internal/zzlv;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/ads/internal/zzs;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/google/android/gms/internal/zzls;

    invoke-direct {v7, p3, p7}, Lcom/google/android/gms/internal/zzls;-><init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzlq$zza;)V

    :goto_1
    const-string v0, "AdRenderer: "

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/google/android/gms/internal/zzpq;->zziP()Ljava/lang/Object;

    return-object v7
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzns;)Lcom/google/android/gms/internal/zzpq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzok;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzok;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzns;)V

    const-string p1, "AdRenderer: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpq;->zziP()Ljava/lang/Object;

    return-object v0
.end method
