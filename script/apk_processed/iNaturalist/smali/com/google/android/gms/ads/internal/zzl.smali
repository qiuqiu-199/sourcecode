.class public Lcom/google/android/gms/ads/internal/zzl;
.super Lcom/google/android/gms/internal/zzer$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsv:Lcom/google/android/gms/ads/internal/zze;

.field private final zzsz:Lcom/google/android/gms/internal/zzka;

.field private zztA:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhs;",
            ">;"
        }
    .end annotation
.end field

.field private zztk:Lcom/google/android/gms/internal/zzep;

.field private zztp:Lcom/google/android/gms/internal/zzhc;

.field private zztr:Lcom/google/android/gms/internal/zzex;

.field private final zzts:Ljava/lang/String;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;

.field private zztx:Lcom/google/android/gms/internal/zzhp;

.field private zzty:Lcom/google/android/gms/internal/zzhq;

.field private zztz:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzer$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzts:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsz:Lcom/google/android/gms/internal/zzka;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzl;->zztt:Lcom/google/android/gms/internal/zzqh;

    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:Landroid/support/v4/util/SimpleArrayMap;

    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzhc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztp:Lcom/google/android/gms/internal/zzhc;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztx:Lcom/google/android/gms/internal/zzhp;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzty:Lcom/google/android/gms/internal/zzhq;

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhr;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzep;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztk:Lcom/google/android/gms/internal/zzep;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztr:Lcom/google/android/gms/internal/zzex;

    return-void
.end method

.method public zzck()Lcom/google/android/gms/internal/zzeq;
    .locals 14

    new-instance v13, Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzts:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzl;->zztk:Lcom/google/android/gms/internal/zzep;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzl;->zztx:Lcom/google/android/gms/internal/zzhp;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl;->zzty:Lcom/google/android/gms/internal/zzhq;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/zzl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/zzl;->zztr:Lcom/google/android/gms/internal/zzex;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/ads/internal/zzk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzep;Lcom/google/android/gms/internal/zzhp;Lcom/google/android/gms/internal/zzhq;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v13
.end method
