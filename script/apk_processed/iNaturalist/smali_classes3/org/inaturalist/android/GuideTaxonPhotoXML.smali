.class public Lorg/inaturalist/android/GuideTaxonPhotoXML;
.super Lorg/inaturalist/android/BaseGuideXMLParser;
.source "GuideTaxonPhotoXML.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;,
        Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;
    }
.end annotation


# instance fields
.field private mGuide:Lorg/inaturalist/android/GuideXML;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideXML;Lorg/w3c/dom/Node;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/inaturalist/android/BaseGuideXMLParser;-><init>()V

    .line 35
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->setRootNode(Lorg/w3c/dom/Node;)V

    .line 36
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonPhotoXML;->mGuide:Lorg/inaturalist/android/GuideXML;

    return-void
.end method


# virtual methods
.method public getAttribution()Ljava/lang/String;
    .locals 1

    const-string v0, "attribution"

    .line 53
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "dc:description"

    .line 45
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuide()Lorg/inaturalist/android/GuideXML;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonPhotoXML;->mGuide:Lorg/inaturalist/android/GuideXML;

    return-object v0
.end method

.method public getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;)Ljava/lang/String;
    .locals 5

    .line 74
    sget-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$1;->$SwitchMap$org$inaturalist$android$GuideTaxonPhotoXML$PhotoType:[I

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "remote"

    goto :goto_0

    :cond_0
    const-string v0, "local"

    .line 82
    :goto_0
    sget-object v2, Lorg/inaturalist/android/GuideTaxonPhotoXML$1;->$SwitchMap$org$inaturalist$android$GuideTaxonPhotoXML$PhotoSize:[I

    invoke-virtual {p2}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_0

    const-string p2, "large"

    goto :goto_1

    :pswitch_0
    const-string p2, "medium"

    goto :goto_1

    :pswitch_1
    const-string p2, "small"

    goto :goto_1

    :pswitch_2
    const-string p2, "thumb"

    :goto_1
    const-string v2, "descendant::href[@type=\'%s\' and @size=\'%s\']"

    const/4 v3, 0x2

    .line 97
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 101
    sget-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonPhotoXML;->mGuide:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->getOfflineGuidePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 106
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRightsHolder()Ljava/lang/String;
    .locals 1

    const-string v0, "dcterms:rightsHolder"

    .line 61
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getValueByXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
