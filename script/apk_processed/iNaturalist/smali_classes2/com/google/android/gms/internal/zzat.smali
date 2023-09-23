.class public Lcom/google/android/gms/internal/zzat;
.super Lcom/google/android/gms/internal/zzau;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzat"


# instance fields
.field private zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzau;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzat;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzat;->zza(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzat;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzae$zza;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbd;->zzaN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzat;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzat;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbf;->zzr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/internal/zzag$zza;->zzbW:Ljava/lang/String;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/internal/zzag$zza;->zzbX:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzat;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/internal/zzag$zza;->zzbY:Ljava/lang/Boolean;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzat;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzat;->zzb(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzat;->zza(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbd;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            "Lcom/google/android/gms/internal/zzae$zza;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbd;->zzaI()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbd;->zzQ()I

    move-result v6

    new-instance v0, Lcom/google/android/gms/internal/zzbo;

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzai()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzaj()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbo;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3
.end method
