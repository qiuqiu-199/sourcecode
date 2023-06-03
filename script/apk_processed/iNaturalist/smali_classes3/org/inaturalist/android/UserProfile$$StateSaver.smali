.class public Lorg/inaturalist/android/UserProfile$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "UserProfile$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/UserProfile;",
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

    sput-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.UserProfile$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/UserProfile$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mSpecies"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservations"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mIdentifications"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mUser"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;-><init>()V

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
    check-cast p1, Lorg/inaturalist/android/UserProfile;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/UserProfile$$StateSaver;->restore(Lorg/inaturalist/android/UserProfile;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/UserProfile;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalSpecies"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mTotalSpecies:I

    .line 75
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationListOffset"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mObservationListOffset:I

    .line 76
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentificationsListIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mIdentificationsListIndex:I

    .line 77
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpeciesListIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mSpeciesListIndex:I

    .line 78
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationListIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mObservationListIndex:I

    .line 79
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpeciesListOffset"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mSpeciesListOffset:I

    .line 80
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalObservations"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mTotalObservations:I

    .line 81
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentificationsListOffset"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mIdentificationsListOffset:I

    .line 82
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalIdentifications"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/UserProfile;->mTotalIdentifications:I

    .line 83
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mViewType"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    .line 84
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpecies"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    .line 85
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservations"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    .line 86
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentifications"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    .line 87
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mUser"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/UserProfile;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/UserProfile$$StateSaver;->save(Lorg/inaturalist/android/UserProfile;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/UserProfile;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalSpecies"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mTotalSpecies:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationListOffset"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mObservationListOffset:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentificationsListIndex"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mIdentificationsListIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpeciesListIndex"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mSpeciesListIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationListIndex"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mObservationListIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpeciesListOffset"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mSpeciesListOffset:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalObservations"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mTotalObservations:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentificationsListOffset"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mIdentificationsListOffset:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTotalIdentifications"

    iget v2, p1, Lorg/inaturalist/android/UserProfile;->mTotalIdentifications:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mViewType"

    iget-object v2, p1, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSpecies"

    iget-object v2, p1, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservations"

    iget-object v2, p1, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIdentifications"

    iget-object v2, p1, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lorg/inaturalist/android/UserProfile$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mUser"

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
