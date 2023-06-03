.class public Lorg/inaturalist/android/GuideTaxonSectionXML;
.super Lorg/inaturalist/android/BaseGuideXMLParser;
.source "GuideTaxonSectionXML.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/inaturalist/android/BaseGuideXMLParser;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonSectionXML;->setRootNode(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public getAttribution()Ljava/lang/String;
    .locals 1

    const-string v0, "attribution"

    .line 40
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    const-string v0, "dc:body"

    .line 32
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightsHolder()Ljava/lang/String;
    .locals 1

    const-string v0, "dcterms:rightsHolder"

    .line 48
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "dc:title"

    .line 24
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
