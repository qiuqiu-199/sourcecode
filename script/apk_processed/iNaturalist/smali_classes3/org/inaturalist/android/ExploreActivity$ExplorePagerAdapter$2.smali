.class Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$2;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V
    .locals 0

    .line 1420
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$2;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1423
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_CURRENT_LOCATION:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$2;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1424
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$2;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
