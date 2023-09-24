.class public abstract Lorg/inaturalist/android/BaseGuidesTab;
.super Lorg/inaturalist/android/BaseTab;
.source "BaseGuidesTab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/inaturalist/android/BaseTab;-><init>()V

    return-void
.end method

.method public static getSearchFilterTextHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10030a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchUrl(Lorg/inaturalist/android/INaturalistApp;)Ljava/lang/String;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_host_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/guides/search.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getDefaultIcon()I
    .locals 1

    const v0, 0x7f080156

    return v0
.end method

.method protected getNoInternetText()Ljava/lang/String;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseGuidesTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNoItemsFoundText()Ljava/lang/String;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseGuidesTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onItemSelected(Lorg/inaturalist/android/BetterJSONObject;I)V
    .locals 2

    .line 9
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseGuidesTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "guide"

    .line 10
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/BaseGuidesTab;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected recallServiceActionIfNoResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
