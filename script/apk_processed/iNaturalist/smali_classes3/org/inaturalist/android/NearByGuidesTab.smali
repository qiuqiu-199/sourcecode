.class public Lorg/inaturalist/android/NearByGuidesTab;
.super Lorg/inaturalist/android/BaseGuidesTab;
.source "NearByGuidesTab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/inaturalist/android/BaseGuidesTab;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActionName()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEAR_BY_GUIDES:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultName()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEAR_BY_GUIDES_RESULT:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultParamName()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->GUIDES_RESULT:Ljava/lang/String;

    return-object v0
.end method

.method protected requiresLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
