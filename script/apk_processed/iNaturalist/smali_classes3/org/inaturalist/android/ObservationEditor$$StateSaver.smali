.class public Lorg/inaturalist/android/ObservationEditor$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "ObservationEditor$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/ObservationEditor;",
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

    sput-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.ObservationEditor$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mUri"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mFileUri"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;-><init>()V

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
    check-cast p1, Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->restore(Lorg/inaturalist/android/ObservationEditor;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/ObservationEditor;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mUri"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    .line 85
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFileUri"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 86
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPhotosChanged"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    .line 87
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReturnToObservationList"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    .line 88
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLocationManuallySet"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    .line 89
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjectFieldsUpdated"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldsUpdated:Z

    .line 90
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mChoseNewPhoto"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mChoseNewPhoto:Z

    .line 91
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPictureTaken"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mPictureTaken:Z

    .line 92
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsCaptive"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    .line 93
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGettingLocation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    .line 94
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAskedForLocationPermission"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mAskedForLocationPermission:Z

    .line 95
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFromSuggestion"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    .line 96
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsConfirmation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    .line 97
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRankLevel"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    .line 98
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRank"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    .line 99
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPreviousTaxonSearch"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mPreviousTaxonSearch:Ljava/lang/String;

    .line 100
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "big"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->big:Ljava/lang/String;

    .line 101
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFirstPositionPhotoId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mFirstPositionPhotoId:Ljava/lang/String;

    .line 102
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsJson"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mObsJson:Ljava/lang/String;

    .line 103
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonPicUrl"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    .line 104
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjectIds"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getIntegerArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    .line 105
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPhotosAdded"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getStringArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    .line 106
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCameraPhotos"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getStringArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mCameraPhotos:Ljava/util/ArrayList;

    .line 107
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPhotosRemoved"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mPhotosRemoved:Ljava/util/ArrayList;

    .line 108
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjectFieldValues"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    .line 109
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/Observation;

    iput-object p2, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->save(Lorg/inaturalist/android/ObservationEditor;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/ObservationEditor;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mUri"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFileUri"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPhotosChanged"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReturnToObservationList"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLocationManuallySet"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjectFieldsUpdated"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldsUpdated:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 59
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mChoseNewPhoto"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mChoseNewPhoto:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 60
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPictureTaken"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mPictureTaken:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 61
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsCaptive"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 62
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGettingLocation"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 63
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAskedForLocationPermission"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mAskedForLocationPermission:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 64
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFromSuggestion"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 65
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsConfirmation"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 66
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRankLevel"

    iget v2, p1, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRank"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPreviousTaxonSearch"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mPreviousTaxonSearch:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "big"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->big:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFirstPositionPhotoId"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mFirstPositionPhotoId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsJson"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mObsJson:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonPicUrl"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjectIds"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putIntegerArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPhotosAdded"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putStringArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCameraPhotos"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mCameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putStringArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 76
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mPhotosRemoved"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mPhotosRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjectFieldValues"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 78
    sget-object v0, Lorg/inaturalist/android/ObservationEditor$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
