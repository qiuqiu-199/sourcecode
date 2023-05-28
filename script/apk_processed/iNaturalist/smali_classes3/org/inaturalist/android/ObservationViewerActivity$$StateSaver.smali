.class public Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "ObservationViewerActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/ObservationViewerActivity;",
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

    sput-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.ObservationViewerActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mCommentsIds"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mProjects"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mFavorites"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservation"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$SerializableBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$SerializableBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mTaxon"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;-><init>()V

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
    check-cast p1, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->restore(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 80
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReadOnly"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    .line 81
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFlagAsCaptive"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    .line 82
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReloadTaxon"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    .line 83
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRankLevel"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRankLevel:I

    .line 84
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdCount"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    .line 85
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCommentCount"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentCount:I

    .line 86
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRank"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRank:Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonIdName"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonScientificName"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    .line 89
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsJson"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonImage"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mActiveTab"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    .line 92
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonJson"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCommentsIds"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    .line 94
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjects"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    .line 95
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFavorites"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    .line 96
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/Observation;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    .line 97
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAttributes"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/SerializableJSONArray;

    iput-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    .line 98
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxon"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->save(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReadOnly"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFlagAsCaptive"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReloadTaxon"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 59
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRankLevel"

    iget v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRankLevel:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdCount"

    iget v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCommentCount"

    iget v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentCount:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonRank"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRank:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonIdName"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonScientificName"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsJson"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonImage"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mActiveTab"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonJson"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCommentsIds"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mProjects"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFavorites"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAttributes"

    iget-object v2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxon"

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
