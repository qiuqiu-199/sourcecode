.class public Lorg/inaturalist/android/ExploreActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "ExploreActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/ExploreActivity;",
        ">",
        "Lcom/evernote/android/state/Injector$Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.ExploreActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservations"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mIdentifiers"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservers"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mSpecies"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->restore(Lorg/inaturalist/android/ExploreActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/ExploreActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 75
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLocationPermissionRequested"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ExploreActivity;->mLocationPermissionRequested:Z

    .line 76
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapMoved"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    .line 77
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLoadingNextResults"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBooleanArray(Landroid/os/Bundle;Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    .line 78
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapRegion"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/VisibleRegion;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mMapRegion:Lcom/google/android/gms/maps/model/VisibleRegion;

    .line 79
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mActiveViewType"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    .line 80
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationsViewMode"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewMode:I

    .line 81
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationsMapType"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapType:I

    .line 82
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalResults"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getIntArray(Landroid/os/Bundle;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    .line 83
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCurrentResultsPage"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getIntArray(Landroid/os/Bundle;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    .line 84
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservations"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mObservations:Ljava/util/List;

    .line 85
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentifiers"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mIdentifiers:Ljava/util/List;

    .line 86
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservers"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mObservers:Ljava/util/List;

    .line 87
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpecies"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mSpecies:Ljava/util/List;

    .line 88
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSearchFilters"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v0, p1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    .line 89
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAllAnnotations"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/SerializableJSONArray;

    iput-object p2, p1, Lorg/inaturalist/android/ExploreActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->save(Lorg/inaturalist/android/ExploreActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/ExploreActivity;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLocationPermissionRequested"

    iget-boolean v2, p1, Lorg/inaturalist/android/ExploreActivity;->mLocationPermissionRequested:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapMoved"

    iget-boolean v2, p1, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLoadingNextResults"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBooleanArray(Landroid/os/Bundle;Ljava/lang/String;[Z)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapRegion"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mMapRegion:Lcom/google/android/gms/maps/model/VisibleRegion;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mActiveViewType"

    iget v2, p1, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationsViewMode"

    iget v2, p1, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewMode:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationsMapType"

    iget v2, p1, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapType:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalResults"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putIntArray(Landroid/os/Bundle;Ljava/lang/String;[I)V

    .line 63
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCurrentResultsPage"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putIntArray(Landroid/os/Bundle;Ljava/lang/String;[I)V

    .line 64
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservations"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mObservations:Ljava/util/List;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentifiers"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mIdentifiers:Ljava/util/List;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservers"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mObservers:Ljava/util/List;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpecies"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mSpecies:Ljava/util/List;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSearchFilters"

    iget-object v2, p1, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    sget-object v0, Lorg/inaturalist/android/ExploreActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAllAnnotations"

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
