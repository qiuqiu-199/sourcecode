.class public Lcom/google/android/gms/internal/zzin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzin$zza;
    }
.end annotation


# instance fields
.field private final zzIu:Lcom/google/android/gms/internal/zzin$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzin$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzin;->zzIu:Lcom/google/android/gms/internal/zzin$zza;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzin$zza;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object p0

    const-string v0, "/reward"

    new-instance v1, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzin;-><init>(Lcom/google/android/gms/internal/zzin$zza;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method private zzf(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "amount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzoo;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/zzoo;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to parse reward amount."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzin;->zzIu:Lcom/google/android/gms/internal/zzin$zza;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzin$zza;->zzb(Lcom/google/android/gms/internal/zzoo;)V

    return-void
.end method

.method private zzg(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzin;->zzIu:Lcom/google/android/gms/internal/zzin$zza;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzin$zza;->zzcn()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzin;->zzf(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "video_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzin;->zzg(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
