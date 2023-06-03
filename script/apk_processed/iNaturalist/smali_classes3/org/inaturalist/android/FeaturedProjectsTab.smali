.class public Lorg/inaturalist/android/FeaturedProjectsTab;
.super Lorg/inaturalist/android/BaseProjectsTab;
.source "FeaturedProjectsTab.java"


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

    .line 6
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_FEATURED_PROJECTS:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultName()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FEATURED_PROJECTS_RESULT:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultParamName()Ljava/lang/String;
    .locals 1

    const-string v0, "projects_result"

    return-object v0
.end method
