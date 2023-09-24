.class public abstract Lorg/inaturalist/android/BaseProjectsTab;
.super Lorg/inaturalist/android/BaseTab;
.source "BaseProjectsTab.java"


# static fields
.field private static final PROJECT_REQUEST_CODE:I = 0x65


# instance fields
.field private mIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/inaturalist/android/BaseTab;-><init>()V

    return-void
.end method

.method public static getSearchFilterTextHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10030e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchUrl(Lorg/inaturalist/android/INaturalistApp;)Ljava/lang/String;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_host_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/projects/search.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getNoInternetText()Ljava/lang/String;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseProjectsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNoItemsFoundText()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseProjectsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 23
    invoke-super {p0, p1, p2, p3}, Lorg/inaturalist/android/BaseTab;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x1000

    if-ne p2, p1, :cond_1

    .line 27
    :cond_0
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string p2, "project"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    iget p2, p0, Lorg/inaturalist/android/BaseProjectsTab;->mIndex:I

    invoke-virtual {p0, p2, p1}, Lorg/inaturalist/android/BaseProjectsTab;->updateProject(ILorg/inaturalist/android/BetterJSONObject;)V

    :cond_1
    return-void
.end method

.method protected onItemSelected(Lorg/inaturalist/android/BetterJSONObject;I)V
    .locals 3

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseProjectsTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/inaturalist/android/ProjectDetails;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "project"

    .line 15
    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 16
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/BaseProjectsTab;->startActivityForResult(Landroid/content/Intent;I)V

    .line 18
    iput p2, p0, Lorg/inaturalist/android/BaseProjectsTab;->mIndex:I

    return-void
.end method

.method protected recallServiceActionIfNoResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
