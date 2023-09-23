.class public Lorg/inaturalist/android/GuideTaxonXML;
.super Lorg/inaturalist/android/BaseGuideXMLParser;
.source "GuideTaxonXML.java"


# instance fields
.field private mGuide:Lorg/inaturalist/android/GuideXML;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideXML;Lorg/w3c/dom/Node;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/inaturalist/android/BaseGuideXMLParser;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonXML;->mGuide:Lorg/inaturalist/android/GuideXML;

    .line 22
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/GuideTaxonXML;->setRootNode(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "descendant::displayName"

    .line 39
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "descendant::name"

    .line 31
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonPhotoXML;",
            ">;"
        }
    .end annotation

    const-string v0, "descendant::GuidePhoto"

    .line 71
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonXML;->getNodesByXPath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 75
    new-instance v3, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    iget-object v4, p0, Lorg/inaturalist/android/GuideTaxonXML;->mGuide:Lorg/inaturalist/android/GuideXML;

    invoke-direct {v3, v4, v2}, Lorg/inaturalist/android/GuideTaxonPhotoXML;-><init>(Lorg/inaturalist/android/GuideXML;Lorg/w3c/dom/Node;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSections()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonSectionXML;",
            ">;"
        }
    .end annotation

    const-string v0, "descendant::GuideSection"

    .line 56
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonXML;->getNodesByXPath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 60
    new-instance v3, Lorg/inaturalist/android/GuideTaxonSectionXML;

    invoke-direct {v3, v2}, Lorg/inaturalist/android/GuideTaxonSectionXML;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTaxonId()Ljava/lang/String;
    .locals 1

    const-string v0, "descendant::taxonID"

    .line 47
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
