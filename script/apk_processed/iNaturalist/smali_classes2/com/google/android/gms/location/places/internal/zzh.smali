.class public Lcom/google/android/gms/location/places/internal/zzh;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl<",
        "Lcom/google/android/gms/location/places/internal/zzj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbmo:Lcom/google/android/gms/location/places/internal/zzz;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 7

    const/16 v3, 0x41

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/google/android/gms/location/places/PlacesOptions;->getLocale()Ljava/util/Locale;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p7}, Lcom/google/android/gms/location/places/PlacesOptions;->getLocale()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    move-object v2, p1

    const/4 p1, 0x0

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Lcom/google/android/gms/location/places/PlacesOptions;->getAccountName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p7}, Lcom/google/android/gms/location/places/PlacesOptions;->getAccountName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_2
    :goto_0
    move-object v3, p1

    new-instance p1, Lcom/google/android/gms/location/places/internal/zzz;

    iget-object v4, p7, Lcom/google/android/gms/location/places/PlacesOptions;->zzblS:Ljava/lang/String;

    iget v5, p7, Lcom/google/android/gms/location/places/PlacesOptions;->zzblT:I

    move-object v0, p1

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzz;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzh;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/location/places/internal/zzh$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/location/places/internal/zzh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/places/zzh;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "placeId cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzh;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzh;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzj;->zza(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzk;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzh;Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fifeUrl cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "width should be > 0"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "height should be > 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzh;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/location/places/internal/zzj;

    iget-object v6, p0, Lcom/google/android/gms/location/places/internal/zzh;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/location/places/internal/zzj;->zza(Ljava/lang/String;IIILcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzk;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzo;Lcom/google/android/gms/location/places/AddPlaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "userAddedPlace == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzh;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzh;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzj;->zza(Lcom/google/android/gms/location/places/AddPlaceRequest;Lcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzo;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 6
    .param p3    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/location/places/AutocompleteFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v1, p2

    if-nez p4, :cond_1

    new-instance p2, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->build()Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object p4

    :cond_1
    move-object v3, p4

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzh;->zzxD()Landroid/os/IInterface;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzj;

    iget-object v4, p0, Lcom/google/android/gms/location/places/internal/zzh;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    move-object v2, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzj;->zza(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/zzo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzh;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzj;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzh;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzj;->zzb(Ljava/util/List;Lcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzl;)V

    return-void
.end method

.method protected zzdk(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzj;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/places/internal/zzj$zza;->zzdm(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzj;

    move-result-object p1

    return-object p1
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.GeoDataApi"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzh;->zzdk(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzj;

    move-result-object p1

    return-object p1
.end method
