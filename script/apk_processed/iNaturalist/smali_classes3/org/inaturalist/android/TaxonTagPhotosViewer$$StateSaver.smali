.class public Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "TaxonTagPhotosViewer$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/TaxonTagPhotosViewer;",
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

    sput-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.TaxonTagPhotosViewer$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->restore(Lorg/inaturalist/android/TaxonTagPhotosViewer;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/TaxonTagPhotosViewer;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTagValue"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagValue:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuideXmlFilename"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXmlFilename:Ljava/lang/String;

    .line 62
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTagName"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagName:Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuideId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideId:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->save(Lorg/inaturalist/android/TaxonTagPhotosViewer;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/TaxonTagPhotosViewer;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTagValue"

    iget-object v2, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagValue:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuideXmlFilename"

    iget-object v2, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXmlFilename:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTagName"

    iget-object v2, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mGuideId"

    iget-object p1, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
