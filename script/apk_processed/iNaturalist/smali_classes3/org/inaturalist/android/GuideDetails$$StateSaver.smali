.class public Lorg/inaturalist/android/GuideDetails$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "GuideDetails$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/GuideDetails;",
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

    sput-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.GuideDetails$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/GuideDetails$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/inaturalist/android/GuideDetails;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GuideDetails$$StateSaver;->restore(Lorg/inaturalist/android/GuideDetails;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/GuideDetails;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsDownloading"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    .line 64
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mDownloadProgress"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/GuideDetails;->mDownloadProgress:I

    .line 65
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuideXmlFilename"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mRecommendedPrediate"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFilterSearchText"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/GuideDetails;->mFilterSearchText:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFilterTags"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getStringArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/GuideDetails;->mFilterTags:Ljava/util/ArrayList;

    .line 69
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuide"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/GuideDetails;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GuideDetails$$StateSaver;->save(Lorg/inaturalist/android/GuideDetails;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/GuideDetails;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsDownloading"

    iget-boolean v2, p1, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 52
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mDownloadProgress"

    iget v2, p1, Lorg/inaturalist/android/GuideDetails;->mDownloadProgress:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuideXmlFilename"

    iget-object v2, p1, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mRecommendedPrediate"

    iget-object v2, p1, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFilterSearchText"

    iget-object v2, p1, Lorg/inaturalist/android/GuideDetails;->mFilterSearchText:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFilterTags"

    iget-object v2, p1, Lorg/inaturalist/android/GuideDetails;->mFilterTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putStringArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/GuideDetails$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuide"

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
