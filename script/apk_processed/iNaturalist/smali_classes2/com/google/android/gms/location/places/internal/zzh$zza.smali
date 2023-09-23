.class public Lcom/google/android/gms/location/places/internal/zzh$zza;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza<",
        "Lcom/google/android/gms/location/places/internal/zzh;",
        "Lcom/google/android/gms/location/places/PlacesOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 0

    check-cast p4, Lcom/google/android/gms/location/places/PlacesOptions;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/location/places/internal/zzh;
    .locals 9

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p4}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p4

    :cond_0
    move-object v7, p4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, v7, Lcom/google/android/gms/location/places/PlacesOptions;->zzblR:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p4, v7, Lcom/google/android/gms/location/places/PlacesOptions;->zzblR:Ljava/lang/String;

    :cond_1
    move-object v6, p4

    new-instance p4, Lcom/google/android/gms/location/places/internal/zzh;

    const/4 v8, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/places/internal/zzh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/location/places/internal/zzh$1;)V

    return-object p4
.end method
