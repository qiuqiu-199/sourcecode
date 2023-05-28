.class public Lorg/inaturalist/android/JoinedProjectsTab;
.super Lorg/inaturalist/android/BaseProjectsTab;
.source "JoinedProjectsTab.java"


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
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS_ONLINE:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultName()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilterResultParamName()Ljava/lang/String;
    .locals 1

    const-string v0, "projects_result"

    return-object v0
.end method

.method protected getUserLoginRequiredText()Ljava/lang/String;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lorg/inaturalist/android/JoinedProjectsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected requiresLogin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
