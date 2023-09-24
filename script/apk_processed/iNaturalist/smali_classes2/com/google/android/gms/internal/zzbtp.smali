.class public Lcom/google/android/gms/internal/zzbtp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;


# instance fields
.field private zzcmk:J

.field private zzcml:I

.field private zzcmm:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigSettings()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtp;->zzcmm:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-object v0
.end method

.method public getFetchTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbtp;->zzcmk:J

    return-wide v0
.end method

.method public getLastFetchStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbtp;->zzcml:I

    return v0
.end method

.method public setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtp;->zzcmm:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-void
.end method

.method public zzaU(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbtp;->zzcmk:J

    return-void
.end method

.method public zzqJ(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbtp;->zzcml:I

    return-void
.end method
