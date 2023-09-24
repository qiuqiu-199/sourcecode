.class public Lorg/inaturalist/android/NearByProjectsTab;
.super Lorg/inaturalist/android/BaseProjectsTab;
.source "NearByProjectsTab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/inaturalist/android/BaseProjectsTab;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActionName()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEARBY_PROJECTS:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultName()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultParamName()Ljava/lang/String;
    .locals 1

    const-string v0, "projects_result"

    return-object v0
.end method

.method protected requiresLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
