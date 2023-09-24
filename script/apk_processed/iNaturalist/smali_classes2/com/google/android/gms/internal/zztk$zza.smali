.class Lcom/google/android/gms/internal/zztk$zza;
.super Lcom/google/android/gms/internal/zzrz;

# interfaces
.implements Lcom/google/android/gms/internal/zzso$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrz;",
        "Lcom/google/android/gms/internal/zzso$zza<",
        "Lcom/google/android/gms/internal/zztl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzagN:Lcom/google/android/gms/internal/zztl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    new-instance p1, Lcom/google/android/gms/internal/zztl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zztl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    return-void
.end method


# virtual methods
.method public zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput p2, p1, Lcom/google/android/gms/internal/zztl;->zzagP:I

    goto :goto_0

    :cond_0
    const-string p2, "int configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public zze(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_autoActivityTracking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput p2, p1, Lcom/google/android/gms/internal/zztl;->zzagQ:I

    goto :goto_0

    :cond_0
    const-string v0, "ga_anonymizeIp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput p2, p1, Lcom/google/android/gms/internal/zztl;->zzagR:I

    goto :goto_0

    :cond_1
    const-string v0, "ga_reportUncaughtExceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput p2, p1, Lcom/google/android/gms/internal/zztl;->zzagS:I

    goto :goto_0

    :cond_2
    const-string p2, "bool configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic zzoV()Lcom/google/android/gms/internal/zzsn;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk$zza;->zzqr()Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    return-object v0
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztl;->zzagT:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput-object p2, p1, Lcom/google/android/gms/internal/zztl;->zzabs:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/zztl;->zzagO:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p2, "string configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public zzqr()Lcom/google/android/gms/internal/zztl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    return-object v0
.end method
