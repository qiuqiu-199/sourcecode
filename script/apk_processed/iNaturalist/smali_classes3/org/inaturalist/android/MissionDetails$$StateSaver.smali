.class public Lorg/inaturalist/android/MissionDetails$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "MissionDetails$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/MissionDetails;",
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

    sput-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.MissionDetails$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/MissionDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mNearByMissions"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservations"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mMission"

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
    check-cast p1, Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/MissionDetails$$StateSaver;->restore(Lorg/inaturalist/android/MissionDetails;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/MissionDetails;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mWikiTitle"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/MissionDetails;->mWikiTitle:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAboutText"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mNearByMissions"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/MissionDetails;->mNearByMissions:Ljava/util/ArrayList;

    .line 67
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservations"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMission"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/MissionDetails$$StateSaver;->save(Lorg/inaturalist/android/MissionDetails;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/MissionDetails;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mWikiTitle"

    iget-object v2, p1, Lorg/inaturalist/android/MissionDetails;->mWikiTitle:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAboutText"

    iget-object v2, p1, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mNearByMissions"

    iget-object v2, p1, Lorg/inaturalist/android/MissionDetails;->mNearByMissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservations"

    iget-object v2, p1, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/MissionDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMission"

    iget-object p1, p1, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
